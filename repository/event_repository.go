package repository

import (
	"github.com/aldinokemal/golang-api-training/entity"
	"github.com/aldinokemal/golang-api-training/general_structs"
)

type EventRepository interface {
	FindAllWithFilter(filters []general_structs.TableFilter, limit int, offset int, order []string) (result []entity.Event, err error)
	FindTotalWithFilter(filters []general_structs.TableFilter) (total int64, err error)
	FindOneBy(where map[string]interface{}) (result entity.Event, err error)

	Register(eventID int, userID int) (err error)
}
