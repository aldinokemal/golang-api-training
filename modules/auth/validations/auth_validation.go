package validations

import (
	"fmt"
	h "github.com/aldinokemal/golang-api-training/helpers"
	"github.com/aldinokemal/golang-api-training/modules/auth/structs"
	validation "github.com/go-ozzo/ozzo-validation/v4"
	"github.com/go-ozzo/ozzo-validation/v4/is"
)

func ValidateLogin(request structs.LoginRequest) {
	err := validation.ValidateStruct(&request,
		validation.Field(&request.Email, validation.Required, is.Email),
		validation.Field(&request.Password, validation.Required, validation.Length(4, 50)),
	)

	if err != nil {
		panic(h.ValidationError{
			Message: err.Error(),
		})
	}
}

func ValidateRegister(request structs.RegisterRequest) {
	err := validation.ValidateStruct(&request,
		validation.Field(&request.FullName, validation.Required),
		validation.Field(&request.Email, validation.Required, is.Email),
		validation.Field(&request.Password, validation.Required, validation.Length(4, 50)),
		validation.Field(&request.Gender, validation.Required, validation.In("male", "female")),
	)

	if err != nil {
		panic(h.ValidationError{
			Message: err.Error(),
		})
	}

	if !h.IsEmailAndDomainValid(request.Email) {
		panic(h.ValidationError{
			Message: fmt.Sprintf("email %s tidak valid", request.Email),
		})
	}
}
