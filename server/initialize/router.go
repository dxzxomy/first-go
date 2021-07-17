package initialize

import (
	"github.com/gin-gonic/gin"
	"go-test/router"
)


// 初始化总路由

func Routers() *gin.Engine {
	var Router = gin.Default()
	PrivateGroup := Router.Group("")
	{
		router.InitSwitchRouter(PrivateGroup)                   // 注册功能api路由
	}
	return Router
}
