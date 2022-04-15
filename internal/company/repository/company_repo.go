package repository

type CompanyRepo struct {
}

type ICompanyRepo interface {
	GetCompany()
	RateCompany()
}
