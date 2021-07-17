package core

import (
	"go-test/initialize"
)

type server interface {
	ListenAndServe() error
}

func RunWindowsServer() {
	Router := initialize.Routers()
	//address := fmt.Sprintf(":%d", global.GVA_CONFIG.System.Addr)
	s := initServer(Router)
	s.ListenAndServe().Error()
}