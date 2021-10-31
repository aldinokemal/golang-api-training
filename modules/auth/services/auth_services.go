package services

import (
	"github.com/aldinokemal/golang-api-training/modules/auth/structs"
	"github.com/gofiber/fiber/v2"
)

type AuthService interface {
	Login(c *fiber.Ctx, request structs.LoginRequest) (response structs.LoginResponse)
	Register(c *fiber.Ctx, request structs.RegisterRequest) (response  structs.RegisterResponse)
}
