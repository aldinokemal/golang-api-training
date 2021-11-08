package controllers

import (
	"bytes"
	"encoding/json"
	"github.com/aldinokemal/golang-api-training/modules/auth/structs"
	"github.com/stretchr/testify/assert"
	"net/http/httptest"
	"testing"
)

func TestAuthController_Register(t *testing.T) {
	authRepository.DeleteAll()
	// Test Fail
	registerRequest := structs.RegisterRequest{
		Email:    "",
		Password: "",
		FullName: "",
		Gender:   "",
	}
	requestBody, _ := json.Marshal(registerRequest)
	request := httptest.NewRequest("POST", "/api/v1/auth/register", bytes.NewBuffer(requestBody))
	request.Header.Set("Content-Type", "application/json")
	request.Header.Set("Accept", "application/json")
	response, _ := app.Test(request)
	assert.Equal(t, 400, response.StatusCode)

	// Test Correct
	registerRequest2 := structs.RegisterRequest{
		Email:    "kemal@google.com",
		Password: "2104",
		FullName: "Aldino Kemal",
		Gender:   "male",
	}
	requestBody2, _ := json.Marshal(registerRequest2)
	request2 := httptest.NewRequest("POST", "/api/v1/auth/register", bytes.NewBuffer(requestBody2))
	request2.Header.Set("Content-Type", "application/json")
	request2.Header.Set("Accept", "application/json")
	response2, _ := app.Test(request2)
	assert.Equal(t, 200, response2.StatusCode)
}

func TestAuthController_Login(t *testing.T) {
	loginRequest := structs.LoginRequest{
		Email:    "kemal@google.com",
		Password: "2104",
	}
	requestBody, _ := json.Marshal(loginRequest)

	request := httptest.NewRequest("POST", "/api/v1/auth/login", bytes.NewBuffer(requestBody))
	request.Header.Set("Content-Type", "application/json")
	request.Header.Set("Accept", "application/json")

	response, _ := app.Test(request)
	assert.Equal(t, 200, response.StatusCode)
}
