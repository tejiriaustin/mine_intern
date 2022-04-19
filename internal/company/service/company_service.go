package service

type CompanyService struct {
}

type ICompanyService interface {
	GetCompanies()
	GetCompanyByID()
	RateCompany()
	GetCompanyByLocation()
}

func NewCompanyService() ICompanyService {
	return &CompanyService{}
}

func (c *CompanyService) GetCompanies() {

}
func (c *CompanyService) GetCompanyByID() {

}
func (c *CompanyService) RateCompany() {

}
func (c *CompanyService) GetCompanyByLocation() {

}
