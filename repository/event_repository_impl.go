package repository

import (
	"errors"
	"github.com/aldinokemal/golang-api-training/entity"
	"github.com/aldinokemal/golang-api-training/general_structs"
	h "github.com/aldinokemal/golang-api-training/helpers"
	"gorm.io/gorm"
)

type eventRepositoryImpl struct {
	DB *gorm.DB
}

func NewEventRepository(db *gorm.DB) EventRepository {
	return &eventRepositoryImpl{DB: db}
}

func (conn eventRepositoryImpl) FindAllWithFilter(filters []general_structs.TableFilter, limit int, offset int, order []string) (result []entity.Event, err error) {
	data := conn.DB.Preload("EventRegister")

	if len(filters) > 0 {
		data = h.FilterTable(data, filters)
	}

	if len(order) > 0 {
		for _, o := range order {
			data = data.Order(o)
		}
	}
	if limit > 0 {
		data = data.Limit(limit).Offset(offset)
	}

	if err = data.Find(&result).Error; err != nil {
		return result, err
	}
	return result, nil
}

func (conn eventRepositoryImpl) FindTotalWithFilter(filters []general_structs.TableFilter) (total int64, err error) {
	data := conn.DB

	if len(filters) > 0 {
		data = h.FilterTable(data, filters)
	}

	if err = data.Model(&entity.Event{}).Count(&total).Error; err != nil {
		return 0, err
	}
	return total, nil
}

func (conn eventRepositoryImpl) FindOneBy(where map[string]interface{}) (result entity.Event, err error) {
	err = conn.DB.Where(where).Preload("EventRegister.User").First(&result).Error
	return
}

func (conn eventRepositoryImpl) Register(eventID int, userID int) (err error) {
	var entityEvenRegister entity.EventRegister
	data := conn.DB.Where("evreg_event_id = ?", eventID).Where("evreg_user_id = ?", userID).First(&entityEvenRegister)
	if data.RowsAffected > 0 {
		return errors.New("anda sudah terdaftar dalam event ini")
	}

	entityEvenRegister.EvregEventID = uint64(eventID)
	entityEvenRegister.EvregUserID = uint64(userID)

	err = conn.DB.Create(&entityEvenRegister).Error
	return
}
