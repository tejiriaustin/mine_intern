package repository

type CompanyRepo struct {
}

type ICompanyRepo interface {
	GetCompanies()
	GetCompanyByID()
	RateCompany()
	GetCompanyByLocation()
}

func NewCompanyRepo() ICompanyRepo {
	return &CompanyRepo{}
}
