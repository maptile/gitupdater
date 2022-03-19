#!/usr/bin/env bash

echo "Parameters:"
echo "Clone from remote: $GU_CLONE"
echo "Remote repo url: $GU_REPO_URL"
echo "Refresh time: $GU_REFRESH_TIME seconds"
echo ""

if [[ $GU_CLONE == 'true' ]]; then
    git clone $GU_REPO_URL /src
fi

cd /src

while [ true ]
do
    echo "Updating git repo"
    git pull

    if [[ $GU_REFRESH_TIME == -1 ]]; then
        echo "GU_REFRESH_TIME is -1, so exiting"
        exit 0
    fi

    echo "Sleeping for $GU_REFRESH_TIME seconds..."
    sleep $GU_REFRESH_TIME
done
