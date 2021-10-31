package helpers

import (
	"golang.org/x/crypto/bcrypt"
	"log"
)

func AuthHash(str string) (string, error) {
	hashed, err := bcrypt.GenerateFromPassword([]byte(str), bcrypt.DefaultCost)
	return string(hashed), err
}

func AuthCheck(hash string, plain string) bool {
	err := bcrypt.CompareHashAndPassword([]byte(hash), []byte(plain))
	if err != nil {
		log.Println(err)
		return false
	}
	return true
}
