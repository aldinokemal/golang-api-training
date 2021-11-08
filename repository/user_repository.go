package repository

import (
	"github.com/aldinokemal/golang-api-training/entity"
)

type UserRepository interface {
	FindOneBy(where map[string]interface{}) (result entity.User, err error)

	Register(user *entity.User) (err error)
	DeleteAll()
}
