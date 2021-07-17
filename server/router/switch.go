package router

import (
	"github.com/gin-gonic/gin"
	"go-test/api/v1"
)


func InitSwitchRouter(Router *gin.RouterGroup) {
	SwitchRouter := Router.Group("switch")
	{
		SwitchRouter.GET("paper", v1.SwitchPapersAPI)
	}
}
