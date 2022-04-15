package company

import "mine_intern/internal/Location"

// Company TODO Change "ID" type to uuid.UUID
type Company struct {
	CompanyID          int               `json:"company_id"`
	CompanyName        string            `json:"company_name"`
	companyLocation    Location.Location `json:"company_location"`
	CompanyDescription string            `json:"company_description"`
	Field              *Field            `json:"field"`
}

type Field string
