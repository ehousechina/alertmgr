BUILD_NAME         := alertmgr
BUILD_VERSION    := $(shell git describe --tags --abbrev=64)
BUILD_TIME           := $(shell date "+%F-%T")

all:
	go build -ldflags \
    "-X ${BUILD_NAME}/version.AppName=${BUILD_NAME} \
     -X ${BUILD_NAME}/version.Version=${BUILD_VERSION} \
     -X '${BUILD_NAME}/version.BuildTime=${BUILD_TIME}' \
     " \
    -o ${BUILD_NAME}

clean:
	rm -f ${BUILD_NAME} 
