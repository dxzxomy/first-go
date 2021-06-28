package main

import (
	"github.com/gin-gonic/gin"
	"myproj/conf"
	"myproj/routers"
)


func main() {
	// 1.创建路由
	r := gin.Default()
	cfg, err := conf.ParseConfig("./conf/server.json")
	if err != nil {
		panic(err.Error())
	}
	//r.Use(Cors())
	// 2.绑定路由规则，执行的函数
	// gin.Context，封装了request和response
	//r.LoadHTMLGlob("template/**/*")
	r.Static("/static", "static")
	// 3.监听端口，默认在8080
	// Run("里面不指定端口号默认为8080")
	r.Run(cfg.AppHost+":"+cfg.AppPort)
}

func registerRouter(router *gin.Engine)  {
	new(routers.Login).
}