# Git Updater

The image can be used for update local git repository in specified time interval.

## Environment Variables

| Name            | Description                                                                 | Default Value  |
| --              | --                                                                          | --             |
| GU_CLONE        | Indicate whether to execute git clone when starting the container           | false          |
| GU_REPO_URL     | The remote git repository URL                                               | [empty string] |
| GU_REFRESH_TIME | Time interval in seconds between 2 git pulls. -1 means update once and exit | -1             |

## Working Directory

/src

## Samples

The following command will mount ./src to /src in container and first will clone the repository https://github.com/maptile/demorepo.git and update it every 120 seconds.
```
docker run \
       -e GU_CLONE=true \
       -e GU_REPO_URL=https://github.com/maptile/demorepo.git \
       -e GU_REFRESH_TIME=120 \
       -v $(pwd)/src:/src \
       maptile/gitupdater:latest
```
