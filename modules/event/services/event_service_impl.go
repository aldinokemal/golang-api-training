package services

import (
	"fmt"
	h "github.com/aldinokemal/golang-api-training/helpers"
	"github.com/aldinokemal/golang-api-training/modules/event/structs"
	"github.com/aldinokemal/golang-api-training/repository"
	"github.com/gofiber/fiber/v2"
)

type eventServiceImpl struct {
	EventRepo repository.EventRepository
}

func NewEventService(eventRepo *repository.EventRepository) EventService {
	return &eventServiceImpl{
		EventRepo: *eventRepo,
	}
}

func (service eventServiceImpl) ListEvent(c *fiber.Ctx, request structs.EventListRequest) (responses structs.EventListResponse) {
	if request.Filters.Sort != "" && request.Filters.Order != "" {
		request.Order = append(request.Order, request.Filters.Sort+" "+request.Filters.Order)
	}
	request.Limit = request.Filters.Rows
	request.Offset = (request.Filters.Page - 1) * request.Filters.Rows

	data, _ := service.EventRepo.FindAllWithFilter(request.Filters.FilterRules, request.Limit, request.Offset, request.Order)
	total, _ := service.EventRepo.FindTotalWithFilter(request.Filters.FilterRules)

	for _, dt := range data {
		var links []structs.EventListResponseDataLinks
		links = append(links, structs.EventListResponseDataLinks{
			Name:   "Detail Event",
			Method: "get",
			Url:    fmt.Sprintf("%s/api/v1/event/%s", c.Hostname(), dt.EventUUID),
		})
		links = append(links, structs.EventListResponseDataLinks{
			Name:   "Register Event",
			Method: "post",
			Url:    fmt.Sprintf("%s/api/v1/event/%s/register", c.Hostname(), dt.EventUUID),
		})
		responses.Data = append(responses.Data, structs.EventListResponseData{
			EventUuid:    dt.EventUUID,
			EventName:    dt.EventName.String,
			EventPicture: dt.EventPicture,
			EventDesc:    dt.EventDesc.String,
			Participants: len(dt.EventRegister),
			Links:        links,
		})
	}

	responses.Total = total
	return responses
}

func (service eventServiceImpl) DetailEvent(_ *fiber.Ctx, request structs.EventDetailRequest) (responses structs.EventDetailResponse) {
	data, err := service.EventRepo.FindOneBy(map[string]interface{}{"event_uuid": request.EventUUID})
	h.PanicIfNeeded(err)

	var participants []structs.EventDetailResponseParticipants
	for _, register := range data.EventRegister {
		participants = append(participants, structs.EventDetailResponseParticipants{
			Avatar: register.User.Picture,
			Name:   register.User.Fullname.String,
			Email:  register.User.Email,
		})
	}

	responses.EventUUID = data.EventUUID
	responses.EventName = data.EventName.String
	responses.EventDesc = data.EventDesc.String
	responses.EventPicture = data.EventPicture
	responses.Participants = participants

	return responses
}

func (service eventServiceImpl) RegisterEvent(c *fiber.Ctx, request structs.EventRegisterRequest) (responses structs.EventRegisterResponse) {
	data, err := service.EventRepo.FindOneBy(map[string]interface{}{"event_uuid": request.EventUUID})
	h.PanicIfNeeded(err)

	jwtInstance := h.JwtToken{Header: string(c.Request().Header.Peek("Authorization"))}
	dataJWT, err := jwtInstance.Decode()
	h.PanicIfNeeded(err)

	err = service.EventRepo.Register(int(data.EventID), int(dataJWT.UserId))
	h.PanicIfNeeded(err)

	responses.Message = "Pendaftaran event berhasil"
	return responses
}
