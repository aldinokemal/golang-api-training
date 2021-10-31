package config

import (
	"fmt"
	"github.com/aldinokemal/golang-api-training/helpers"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

func NewMysqlDatabase(cfg Config) *gorm.DB {
	dbUser := cfg.Get("DB_USER")
	dbPass := cfg.Get("DB_PASS")
	dbHost := cfg.Get("DB_HOST")
	dbPort := cfg.Get("DB_PORT")
	dbName := cfg.Get("DB_NAME")
	dsn := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8mb4&parseTime=True&loc=Local", dbUser, dbPass, dbHost, dbPort, dbName)
	db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{
		Logger: logger.Default.LogMode(logger.Info),
	})
	helpers.PanicIfNeeded(err)
	return db
}
