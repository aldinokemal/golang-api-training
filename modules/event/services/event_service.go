package services

import (
	"github.com/aldinokemal/golang-api-training/modules/event/structs"
	"github.com/gofiber/fiber/v2"
)

type EventService interface {
	ListEvent(c *fiber.Ctx, request structs.EventListRequest) (responses structs.EventListResponse)
	DetailEvent(c *fiber.Ctx, request structs.EventDetailRequest) (responses structs.EventDetailResponse)
	RegisterEvent(c *fiber.Ctx, request structs.EventRegisterRequest) (responses structs.EventRegisterResponse)
}
