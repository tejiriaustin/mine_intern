package Location

type Location struct {
	LocationID int  `json:"location_id"`
	LGA        *LGA `json:"LGA"`
}

type LGA struct {
	LgaID   int    `json:"lga_id"`
	LgaName string `json:"lga_name"`
	State   *State `json:"state"`
}

type State struct {
	StateID   int      `json:"state_id"`
	StateName string   `json:"state_name"`
	Country   *Country `json:"country"`
}

type Country struct {
	CountryID   int    `json:"country_id"`
	CountryName string `json:"country_name"`
}
