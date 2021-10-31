package entity

import (
	"database/sql"
	"time"

	"github.com/guregu/null"
	"github.com/satori/go.uuid"
)

var (
	_ = time.Second
	_ = sql.LevelDefault
	_ = null.Bool{}
	_ = uuid.UUID{}
)

// User struct is a row record of the user table in the api_event database
type User struct {
	UserID    uint64      `gorm:"primary_key;AUTO_INCREMENT;column:user_id;type:ubigint;" json:"user_id"`
	Email     string      `gorm:"column:email;type:varchar;size:100;" json:"email"`
	Password  string      `gorm:"column:password;type:varchar;size:255;" json:"password"`
	Picture   string      `gorm:"column:picture;type:varchar;size:255;default:default.png;" json:"picture"`
	Gender    string      `gorm:"column:gender;type:char;size:6;default:male;" json:"gender"`
	Fullname  null.String `gorm:"column:fullname;type:varchar;size:255;" json:"fullname"`
	Birthday  null.Time   `gorm:"column:birthday;type:date;" json:"birthday"`
	CreatedAt null.Time   `gorm:"column:created_at;type:timestamp;" json:"created_at"`
	UpdatedAt null.Time   `gorm:"column:updated_at;type:timestamp;" json:"updated_at"`
}

// TableName sets the insert table name for this struct type
func (u *User) TableName() string {
	return "user"
}
