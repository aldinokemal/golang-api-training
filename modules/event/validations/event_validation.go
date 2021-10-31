package validations

import (
	h "github.com/aldinokemal/golang-api-training/helpers"
	"github.com/aldinokemal/golang-api-training/modules/event/structs"
	validation "github.com/go-ozzo/ozzo-validation/v4"
)

func ValidateEventList(request structs.EventListRequest) {
	err := validation.ValidateStruct(&request.Filters,
		validation.Field(&request.Filters.Page, validation.Required, validation.Min(1)),
		validation.Field(&request.Filters.Rows, validation.Required, validation.Max(51)),
	)

	if err != nil {
		panic(h.ValidationError{
			Message: err.Error(),
		})
	}
}

func ValidateEventDetail(request structs.EventDetailRequest) {
	err := validation.ValidateStruct(&request,
		validation.Field(&request.EventUUID, validation.Required),
	)

	if err != nil {
		panic(h.ValidationError{
			Message: err.Error(),
		})
	}
}

func ValidateEventRegister(request structs.EventRegisterRequest) {
	err := validation.ValidateStruct(&request,
		validation.Field(&request.EventUUID, validation.Required),
	)

	if err != nil {
		panic(h.ValidationError{
			Message: err.Error(),
		})
	}
}
