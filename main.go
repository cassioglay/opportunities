package main

import (
	"github.com/cassioglay/opportunities/config"
	"github.com/cassioglay/opportunities/router"
)

var logger *config.Logger

func main() {

	logger = config.GetLogger("main")

	err := config.Init()

	if err != nil {
		logger.Errorf("config initialization: %v", err)
		return
	}

	router.Initialize()
}
