package services

import (
	"github.com/aldinokemal/golang-api-training/entity"
	h "github.com/aldinokemal/golang-api-training/helpers"
	"github.com/aldinokemal/golang-api-training/modules/auth/structs"
	"github.com/aldinokemal/golang-api-training/repository"
	"github.com/gofiber/fiber/v2"
	"github.com/golang-jwt/jwt"
	"os"
	"strconv"
	"time"
)

type authServiceImpl struct {
	UserRepo repository.UserRepository
}

func NewAuthService(userRepo *repository.UserRepository) AuthService {
	return &authServiceImpl{
		UserRepo: *userRepo,
	}
}

func (service authServiceImpl) Login(c *fiber.Ctx, request structs.LoginRequest) (response structs.LoginResponse) {
	dataUser, err := service.UserRepo.FindOneBy(map[string]interface{}{"email": request.Email})
	h.PanicIfNeeded(err, "Email tidak ditemukan")
	verifyPassword := h.AuthCheck(dataUser.Password, request.Password)
	if !verifyPassword {
		panic("Password tidak sesuai")
	}

	expireTime := os.Getenv("JWT_EXPIRED_MINUTES")
	expireTimeMinute, err := strconv.Atoi(expireTime)
	h.PanicIfNeeded(err)
	jwtData := h.JwtPayload{
		UserId:         int64(dataUser.UserID),
		TokenExpTime:   expireTimeMinute,
		UserEmail:      dataUser.Email,
		StandardClaims: jwt.StandardClaims{},
	}
	token, err := jwtData.CreateToken()
	h.PanicIfNeeded(err)

	response.Results = structs.LoginResponseResults{
		FullName: dataUser.Fullname.String,
		Email:    dataUser.Email,
		Token:    token,
		Secret:   "",
	}
	response.Message = "Login Berhasil"
	return response
}

func (service authServiceImpl) Register(c *fiber.Ctx, request structs.RegisterRequest) (response structs.RegisterResponse) {
	hashPassword, err := h.AuthHash(request.Password)
	h.PanicIfNeeded(err)
	newDataUser := entity.User{
		Email:     request.Email,
		Password:  hashPassword,
		Gender:    request.Gender,
		Fullname:  h.NullString(request.FullName),
		CreatedAt: h.NullTime(time.Now()),
		UpdatedAt: h.NullTime(time.Now()),
	}

	err = service.UserRepo.Register(&newDataUser)
	h.PanicIfNeeded(err)
	response.Message = "Register barhasil"
	return response
}
