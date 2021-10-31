package config

import (
	"github.com/aldinokemal/golang-api-training/helpers"
	"github.com/joho/godotenv"
	"os"
)

type Config interface {
	Get(key string) string
}

type configImpl struct {
}

func (config *configImpl) Get(key string) string {
	return os.Getenv(key)
}

func New(filenames ...string) Config {
	err := godotenv.Load(filenames...)
	helpers.PanicIfNeeded(err)
	return &configImpl{}
}