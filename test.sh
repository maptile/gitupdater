#!/usr/bin/env bash

docker run \
       -e GU_CLONE=true \
       -e GU_REPO_URL=https://gitee.com/fullcap/demorepo.git \
       -e GU_REFRESH_TIME=120 \
       gitupdater
