package services

type AuthService struct {
}
type IAuthService interface {
	Register()
	VerifyUser()
	SignOut()
	ChangePassword()
}

func NewAuthService() IAuthService {
	return &AuthService{}
}

func (a *AuthService) Register() {

}
func (a *AuthService) VerifyUser() {

}
func (a *AuthService) SignOut() {

}
func (a *AuthService) ChangePassword() {

}