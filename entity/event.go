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

// Event struct is a row record of the event table in the api_event database
type Event struct {
	EventID       uint64          `gorm:"primary_key;AUTO_INCREMENT;column:event_id;type:ubigint;" json:"event_id"`
	EventUUID     string          `gorm:"column:event_uuid;type:varchar;size:255;" json:"event_uuid"`
	EventName     null.String     `gorm:"column:event_name;type:varchar;size:255;" json:"event_name"`
	EventPicture  string          `gorm:"column:event_picture;type:varchar;size:255;default:https://picsum.photos/300/200;" json:"event_picture"`
	EventDesc     null.String     `gorm:"column:event_desc;type:text;size:65535;" json:"event_desc"`
	EventStart    null.Time       `gorm:"column:event_start;type:timestamp;" json:"event_start"`
	EventEnd      null.Time       `gorm:"column:event_end;type:timestamp;" json:"event_end"`
	CreatedAt     null.Time       `gorm:"column:created_at;type:timestamp;" json:"created_at"`
	UpdatedAt     null.Time       `gorm:"column:updated_at;type:timestamp;" json:"updated_at"`
	EventRegister []EventRegister `gorm:"ForeignKey:EvregEventID;AssociationForeignKey:EventID" json:"event_register,omitempty"`
}

// TableName sets the insert table name for this struct type
func (e *Event) TableName() string {
	return "event"
}
