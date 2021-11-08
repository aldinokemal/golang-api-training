package structs

import "github.com/aldinokemal/golang-api-training/general_structs"

// ============================================================================================================

type EventListRequest struct {
	Filters general_structs.ValidateTable `json:"filters" url:"filters"`
	Limit   int                           `json:"limit" url:"limit"`
	Offset  int                           `json:"offset" url:"offset"`
	Order   []string                      `json:"order" url:"order"`
}

type EventListResponseDataLinks struct {
	Name   string `json:"name"`
	Method string `json:"method"`
	Url    string `json:"url"`
}

type EventListResponseData struct {
	EventUuid    string                       `json:"event_uuid"`
	EventName    string                       `json:"event_name"`
	EventPicture string                       `json:"event_picture"`
	EventDesc    string                       `json:"event_desc"`
	Participants int                          `json:"participants"`
	Links        []EventListResponseDataLinks `json:"_links"`
}

type EventListResponse struct {
	Data  []EventListResponseData `json:"data"`
	Total int64                   `json:"total"`
}

// ============================================================================================================

type EventDetailRequest struct {
	EventUUID string `json:"event_uuid"`
}

type EventDetailResponseParticipants struct {
	Avatar string `json:"avatar"`
	Name   string `json:"name"`
	Email  string `json:"email"`
}

type EventDetailResponse struct {
	EventUUID    string                            `json:"event_uuid"`
	EventName    string                            `json:"event_name"`
	EventPicture string                            `json:"event_picture"`
	EventDesc    string                            `json:"event_desc"`
	Participants []EventDetailResponseParticipants `json:"participants"`
}

// ============================================================================================================

type EventRegisterRequest struct {
	EventUUID string `json:"event_uuid"`
}

type EventRegisterResponse struct {
	Message string `json:"message"`
}

// ============================================================================================================
