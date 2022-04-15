package auth

import "mine_intern/internal/Location"

// User TODO change "ID" type to uuid.UUID
type User struct {
	UserID              int                `json:"user_id"`
	Firstname           string             `json:"firstname"`
	Lastname            string             `json:"lastname"`
	Age                 int                `json:"age"`
	Profession          string             `json:"profession"`
	PersonalDescription string             `json:"personal_description"`
	Location            *Location.Location `json:"location"`
}
