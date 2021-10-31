package controllers

import (
	"github.com/aldinokemal/golang-api-training/general_structs"
	h "github.com/aldinokemal/golang-api-training/helpers"
	"github.com/aldinokemal/golang-api-training/middleware"
	"github.com/aldinokemal/golang-api-training/modules/event/services"
	"github.com/aldinokemal/golang-api-training/modules/event/structs"
	"github.com/aldinokemal/golang-api-training/modules/event/validations"
	"github.com/gofiber/fiber/v2"
	"net/http"
)

type EventController struct {
	EventService services.EventService
}

func NewEventController(eventService *services.EventService) EventController {
	return EventController{
		EventService: *eventService,
	}
}

func (controller *EventController) Route(app *fiber.App) {
	api := app.Group("/api")

	v1Event := api.Group("/v1/event")
	v1Event.Get("/", controller.ListEvent)
	v1Event.Get("/:event_uuid", controller.DetailEvent)

	v1Event.Use(middleware.Auth())
	v1Event.Post("/:event_uuid/register", controller.RegisterEvent)
}

func (controller *EventController) ListEvent(c *fiber.Ctx) error {
	var request structs.EventListRequest
	err := c.QueryParser(&request.Filters)
	h.PanicIfNeeded(err)

	validations.ValidateEventList(request)
	response := controller.EventService.ListEvent(c, request)
	return c.JSON(general_structs.ResponseData{
		Code:    http.StatusOK,
		Message: "Data ditemukan",
		Results: response,
	})

}

func (controller *EventController) DetailEvent(c *fiber.Ctx) error {
	var request structs.EventDetailRequest
	request.EventUUID = c.Params("event_uuid")
	validations.ValidateEventDetail(request)

	response := controller.EventService.DetailEvent(c, request)
	return c.JSON(general_structs.ResponseData{
		Code:    http.StatusOK,
		Message: "Data ditemukan",
		Results: response,
	})
}

func (controller *EventController) RegisterEvent(c *fiber.Ctx) error {
	var request structs.EventRegisterRequest
	request.EventUUID = c.Params("event_uuid")
	validations.ValidateEventRegister(request)

	response := controller.EventService.RegisterEvent(c, request)
	return c.JSON(general_structs.ResponseData{
		Code:    http.StatusOK,
		Message: response.Message,
		Results: nil,
	})
}
