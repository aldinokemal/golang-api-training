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

// EventRegister struct is a row record of the event_register table in the api_event database
type EventRegister struct {
	EvregID      uint64      `gorm:"primary_key;AUTO_INCREMENT;column:evreg_id;type:ubigint;" json:"evreg_id"`
	EvregUserID  uint64      `gorm:"column:evreg_user_id;type:ubigint;" json:"evreg_user_id"`
	EvregEventID uint64      `gorm:"column:evreg_event_id;type:ubigint;" json:"evreg_event_id"`
	EvregLat     null.String `gorm:"column:evreg_lat;type:varchar;size:255;" json:"evreg_lat"`
	EvregLng     null.String `gorm:"column:evreg_lng;type:varchar;size:255;" json:"evreg_lng"`
	CreatedAt    null.Time   `gorm:"column:created_at;type:timestamp;" json:"created_at"`
	UpdatedAt    null.Time   `gorm:"column:updated_at;type:timestamp;" json:"updated_at"`
	User         User        `gorm:"ForeignKey:EvregUserID;AssociationForeignKey:UserID" json:"user,omitempty"`
}

// TableName sets the insert table name for this struct type
func (e *EventRegister) TableName() string {
	return "event_register"
}
