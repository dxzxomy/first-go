package global

import (
	"go-test/config"
	"go.uber.org/zap"
)

var (
	//GVA_DB     *gorm.DB
	//GVA_REDIS  *redis.Client
	GVA_CONFIG config.Server
	//GVA_VP     *viper.Viper
	//GVA_LOG    *oplogging.Logger
	GVA_LOG   *zap.Logger
	//GVA_Timer timer.Timer = timer.NewTimerTask()
)
