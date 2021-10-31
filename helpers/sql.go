package helpers

import (
	"database/sql"
	"github.com/guregu/null"
	"time"
)

func NullString(data string, forceValid ...bool) null.String {
	valid := data != ""
	if len(forceValid) > 0 {
		if forceValid[0] {
			valid = true
		}
	}

	return null.String{
		NullString: sql.NullString{
			String: data,
			Valid:  valid,
		},
	}
}

func NullInteger(data int, forceValid ...bool) null.Int {
	valid := data != 0
	if len(forceValid) > 0 {
		if forceValid[0] {
			valid = true
		}
	}

	return null.Int{
		NullInt64: sql.NullInt64{
			Int64: int64(data),
			Valid: valid,
		},
	}
}

func NullFloat(data float64, forceValid ...bool) null.Float {
	valid := data != 0
	if len(forceValid) > 0 {
		if forceValid[0] {
			valid = true
		}
	}

	return null.Float{
		NullFloat64: sql.NullFloat64{
			Float64: data,
			Valid:   valid,
		},
	}
}

func NullTime(data time.Time) null.Time {
	return null.Time{
		NullTime: sql.NullTime{
			Time:  data,
			Valid: true,
		},
	}
}
