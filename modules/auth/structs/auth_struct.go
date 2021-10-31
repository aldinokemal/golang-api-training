package structs

// ============================================================================================================

type LoginRequest struct {
	Email    string
	Password string
}

type LoginResponseResults struct {
	FullName string `json:"full_name"`
	Email    string `json:"email"`
	Token    string `json:"token"`
	Secret   string `json:"secret"`
}

type LoginResponse struct {
	Message string `json:"message"`
	Results LoginResponseResults
}

// ============================================================================================================

type RegisterRequest struct {
	Email    string
	Password string
	FullName string
	Gender   string
}

type RegisterResponse struct {
	Message string `json:"message"`
}
