package helpers

import (
	"fmt"
	"github.com/aldinokemal/golang-api-training/general_structs"
	"github.com/gofiber/fiber/v2"
)

// =====================================================================================================================

type ValidationError struct {
	Message string
}

func (validationError ValidationError) Error() string {
	return validationError.Message
}

// =====================================================================================================================

type AuthError struct {
	Message string
}

func (validationError AuthError) Error() string {
	return validationError.Message
}

// =====================================================================================================================

func ErrorHandler(ctx *fiber.Ctx, err error) error {
	_, ok := err.(ValidationError)
	if ok {
		return ctx.Status(400).
			JSON(general_structs.ResponseData{
				Code:    400,
				Message: err.Error(),
				Results: "BAD_REQUEST",
			})
	}

	_, ok = err.(AuthError)
	if ok {
		return ctx.Status(400).
			JSON(general_structs.ResponseData{
				Code:    401,
				Message: err.Error(),
				Results: "UNAUTHORIZED",
			})
	}

	return ctx.Status(500).
		JSON(general_structs.ResponseData{
			Code:    500,
			Message: err.Error(),
			Results: nil,
		})
}

// =====================================================================================================================

func PanicIfNeeded(err interface{}, message ...string) {
	if err != nil {
		if fmt.Sprintf("%s", err) == "record not found" && len(message) > 0 {
			panic(message[0])
		} else {
			panic(err)
		}
	}
}
