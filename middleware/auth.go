package middleware

import (
	h "github.com/aldinokemal/golang-api-training/helpers"
	"github.com/gofiber/fiber/v2"
)

func Auth() fiber.Handler {
	return func(c *fiber.Ctx) error {
		headerByte := c.Request().Header.Peek("Authorization")
		header := string(headerByte)
		if header == "" {
			panic(h.AuthError{
				Message: "Anda belum login, token tidak tersedia",
			})
		}
		return c.Next()
	}
}
