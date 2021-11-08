package general_structs

type TableFilter struct {
	Field string `json:"field" form:"field"`
	Op    string `json:"op" form:"op"`
	Value string `json:"value" form:"value"`
}

type ValidateTable struct {
	Page        int           `json:"page" form:"page" url:"page"`
	Rows        int           `json:"rows" form:"rows" url:"rows"`
	Sort        string        `json:"sort" form:"sort" url:"sort"`
	Order       string        `json:"order" form:"order" url:"order"`
	FilterRules []TableFilter `json:"filterRules" url:"filterRules"`
}
