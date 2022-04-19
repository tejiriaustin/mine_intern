package storage

type AuthRepo struct {
}
type IAuthRepo interface {
	//Database
	Register()
	VerifyUser()
	SignOut()
	ChangePassword()

	//Cache
	ValidateToken()
}

func NewAuthRepo() IAuthRepo {
	return &AuthRepo{}
}
