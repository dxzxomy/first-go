package core

import (
	"github.com/gin-gonic/gin"
	"net/http"
	"time"
)

func initServer(router *gin.Engine) server {
	return &http.Server{
		Addr:           ":1018",
		Handler:        router,
		ReadTimeout:    10 * time.Second,
		WriteTimeout:   10 * time.Second,
		MaxHeaderBytes: 1 << 20,
	}
}
