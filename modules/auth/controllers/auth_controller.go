package controllers

import (
	"github.com/aldinokemal/golang-api-training/general_structs"
	h "github.com/aldinokemal/golang-api-training/helpers"
	"github.com/aldinokemal/golang-api-training/modules/auth/services"
	"github.com/aldinokemal/golang-api-training/modules/auth/structs"
	"github.com/aldinokemal/golang-api-training/modules/auth/validations"
	"github.com/gofiber/fiber/v2"
	"net/http"
)

type AuthController struct {
	AuthService services.AuthService
}

func NewAuthController(authService *services.AuthService) AuthController {
	return AuthController{
		AuthService: *authService,
	}
}

func (controller *AuthController) Route(app *fiber.App) {
	api := app.Group("/api")

	v1 := api.Group("/v1")
	v1.Post("auth/login", controller.Login)
	v1.Post("auth/register", controller.Register)
}

func (controller *AuthController) Login(c *fiber.Ctx) error {
	var request structs.LoginRequest
	err := c.BodyParser(&request)
	h.PanicIfNeeded(err)

	validations.ValidateLogin(request)
	response := controller.AuthService.Login(c, request)
	return c.JSON(general_structs.ResponseData{
		Code:    http.StatusOK,
		Message: response.Message,
		Results: response.Results,
	})
}

func (controller *AuthController) Register(c *fiber.Ctx) error {
	var request structs.RegisterRequest
	err := c.BodyParser(&request)
	h.PanicIfNeeded(err)

	validations.ValidateRegister(request)
	response := controller.AuthService.Register(c, request)
	return c.JSON(general_structs.ResponseData{
		Code:    http.StatusOK,
		Message: response.Message,
		Results: nil,
	})
}
