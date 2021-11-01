package main

import (
	"github.com/aldinokemal/golang-api-training/config"
	"github.com/aldinokemal/golang-api-training/helpers"
	event_controller "github.com/aldinokemal/golang-api-training/modules/event/controllers"
	event_service "github.com/aldinokemal/golang-api-training/modules/event/services"

	auth_controller "github.com/aldinokemal/golang-api-training/modules/auth/controllers"
	auth_service "github.com/aldinokemal/golang-api-training/modules/auth/services"

	"github.com/aldinokemal/golang-api-training/repository"
	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/cors"
	"github.com/gofiber/fiber/v2/middleware/recover"
)

func main() {
	// Setup Configuration
	configuration := config.New()
	database := config.NewMysqlDatabase(configuration)

	// Setup Repository
	eventRepository := repository.NewEventRepository(database)
	userRepository := repository.NewUserRepository(database)

	// Setup Service
	eventService := event_service.NewEventService(&eventRepository)
	authService := auth_service.NewAuthService(&userRepository)

	// Setup Controller
	eventController := event_controller.NewEventController(&eventService)
	authController := auth_controller.NewAuthController(&authService)

	// Fiber
	app := fiber.New(config.NewFiberConfig())
	app.Use(recover.New())
	app.Use(cors.New(cors.Config{
		AllowOrigins: "*",
		AllowHeaders: "*",
	}))

	eventController.Route(app)
	authController.Route(app)

	err := app.Listen(":8080")
	helpers.PanicIfNeeded(err)
}
