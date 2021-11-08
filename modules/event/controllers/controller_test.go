package controllers

import (
	"github.com/aldinokemal/golang-api-training/config"
	"github.com/aldinokemal/golang-api-training/modules/event/services"
	"github.com/aldinokemal/golang-api-training/repository"
	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/recover"
)

func createTestApp() *fiber.App {
	var app = fiber.New(config.NewFiberConfig())
	app.Use(recover.New())
	eventController.Route(app)
	return app
}

var configuration = config.New("../../../.env.test")
var database = config.NewMysqlDatabase(configuration)
var eventRepository = repository.NewEventRepository(database)
var eventService = services.NewEventService(&eventRepository)
var eventController = NewEventController(&eventService)
var app = createTestApp()
