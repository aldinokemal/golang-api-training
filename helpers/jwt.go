package helpers

import (
	"errors"
	"fmt"
	"github.com/golang-jwt/jwt"
	"os"
	"strings"
	"time"
)

type JwtPayload struct {
	UserId       int64
	TokenExpTime int
	UserEmail    string
	jwt.StandardClaims
}

func (p JwtPayload) CreateToken() (string, error) {
	claims := jwt.MapClaims{
		"user_id":    p.UserId,
		"user_email": p.UserEmail,
		"exp":        time.Now().Add(time.Minute * time.Duration(p.TokenExpTime)).Unix(),
	}
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return token.SignedString([]byte(os.Getenv("JWT_SIGNATURE_KEY")))
}

type JwtToken struct {
	Header string
}

func (data JwtToken) Decode() (jwtData JwtPayload, err error) {
	jwtString := strings.Split(data.Header, "Bearer ")
	if len(jwtString) < 2 {
		return jwtData, errors.New("header tidak valid")
	} else {
		jwtToken := jwtString[1]
		claims := jwt.MapClaims{}
		token, err := jwt.ParseWithClaims(jwtToken, claims, func(token *jwt.Token) (interface{}, error) {
			if jwt.GetSigningMethod("HS256") != token.Method {
				return nil, fmt.Errorf("unexpected signing method: %v", token.Header["alg"])
			}
			return []byte(os.Getenv("JWT_SIGNATURE_KEY")), nil
		})
		if err != nil {
			return jwtData, err
		}

		if token == nil {
			return jwtData, errors.New("akses ditolak")
		}

		if !token.Valid {
			return jwtData, errors.New("token tidak valid atau kadaluarsa")
		}

		if token != nil {
			dataToken := token.Claims.(jwt.MapClaims)
			userEmail := dataToken["user_email"].(string)
			userId := dataToken["user_id"].(float64)
			expTime := dataToken["exp"].(float64)

			jwtData.UserEmail = userEmail
			jwtData.UserId = int64(userId)
			jwtData.TokenExpTime = int(expTime) - int(time.Now().Unix())
		}
	}
	return jwtData, nil
}
