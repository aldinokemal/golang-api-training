package general_structs

type TableFilter struct {
	Field string `json:"field" form:"field"`
	Op    string `json:"op" form:"op"`
	Value string `json:"value" form:"value"`
}

type ValidateTable struct {
	Page        int           `json:"page" form:"page" binding:"required,numeric"`
	Rows        int           `json:"rows" form:"rows" binding:"required,numeric,max=51"`
	Sort        string        `json:"sort" form:"sort"`
	Order       string        `json:"order" form:"order"`
	FilterRules []TableFilter `json:"filterRules"`
}