package controllers

import (
	"github.com/aldinokemal/golang-api-training/config"
	"github.com/aldinokemal/golang-api-training/modules/auth/services"
	"github.com/aldinokemal/golang-api-training/repository"
	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/recover"
)

func createTestApp() *fiber.App {
	var app = fiber.New(config.NewFiberConfig())
	app.Use(recover.New())
	authController.Route(app)
	return app
}

var configuration = config.New("../../../.env.test")
var database = config.NewMysqlDatabase(configuration)
var authRepository = repository.NewUserRepository(database)
var authService = services.NewAuthService(&authRepository)
var authController = NewAuthController(&authService)
var app = createTestApp()