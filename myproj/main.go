package main

import (
	"github.com/gin-gonic/gin"
)


func main() {
	// 1.创建路由
	r := gin.Default()
	//r.Use(Cors())
	// 2.绑定路由规则，执行的函数
	// gin.Context，封装了request和response
	//r.LoadHTMLGlob("template/**/*")
	r.Static("/static", "static")
	// 3.监听端口，默认在8080
	r.Run()
}

