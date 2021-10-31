package helpers

import (
	"github.com/aldinokemal/golang-api-training/general_structs"
	"gorm.io/gorm"
	"strings"
)

func FilterTable(data *gorm.DB, filters []general_structs.TableFilter) *gorm.DB {
	for _, filter := range filters {
		switch strings.ToLower(filter.Op) {
		case "eq":
			data = data.Where(filter.Field+" = ?", filter.Value)
		case "neq":
			data = data.Where(filter.Field+" <> ?", filter.Value)
		case "in":
			dataIN := strings.Split(filter.Value, ",")
			data = data.Where(filter.Field+" IN (?)", dataIN)
		case "gt":
			data = data.Where(filter.Field+" > ?", filter.Value)
		case "gte":
			data = data.Where(filter.Field+" >= ?", filter.Value)
		case "lt":
			data = data.Where(filter.Field+" <= ?", filter.Value)
		case "lte":
			data = data.Where(filter.Field+" <= ?", filter.Value)
		case "nil":
			data = data.Where(filter.Field + " IS NULL")
		case "custom":
			data = data.Where(filter.Field)
		default:
			data = data.Where(filter.Field+" LIKE ?", "%%"+filter.Value+"%%")
		}
	}
	return data
}
