package repository

import (
	"errors"
	"fmt"
	"github.com/aldinokemal/golang-api-training/entity"
	"gorm.io/gorm"
)

type userRepositoryImpl struct {
	DB *gorm.DB
}

func NewUserRepository(db *gorm.DB) UserRepository {
	return &userRepositoryImpl{DB: db}
}

func (conn userRepositoryImpl) FindOneBy(where map[string]interface{}) (result entity.User, err error) {
	err = conn.DB.Where(where).First(&result).Error
	return
}

func (conn userRepositoryImpl) Register(user *entity.User) (err error) {
	var total int64
	conn.DB.Where("email = ?", user.Email).First(&user).Count(&total)

	if total > 0 {
		return errors.New(fmt.Sprintf("%s sudah terdaftar", user.Email))
	}

	err = conn.DB.Create(&user).Error
	if err != nil {
		return err
	}
	return nil
}
