package config

import (
	"github.com/aldinokemal/golang-api-training/helpers"
	"github.com/gofiber/fiber/v2"
)

func NewFiberConfig() fiber.Config {
	return fiber.Config{
		ErrorHandler: helpers.ErrorHandler,
	}
}
