package controllers

import (
	"github.com/aldinokemal/golang-api-training/general_structs"
	"github.com/aldinokemal/golang-api-training/modules/event/structs"
	"github.com/google/go-querystring/query"
	"github.com/stretchr/testify/assert"
	"net/http/httptest"
	"testing"
)

func TestEventController_ListEvent(t *testing.T) {
	listEventRequest := structs.EventListRequest{
		Filters: general_structs.ValidateTable{
			Page:        1,
			Rows:        10,
			Sort:        "",
			Order:       "",
			FilterRules: nil,
		},
	}
	requestQuery, _ := query.Values(listEventRequest.Filters)
	request := httptest.NewRequest("GET", "/api/v1/event?"+requestQuery.Encode(), nil)
	request.Header.Set("Content-Type", "application/json")
	request.Header.Set("Accept", "application/json")

	response, _ := app.Test(request)
	assert.Equal(t, 200, response.StatusCode)
}
