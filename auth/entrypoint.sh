#!/bin/sh

set -e

echo "${!SECRET_NAME}" | base64 --decode > "$HOME"/gcloud.json
sh -c "gcloud auth activate-service-account --key-file=$HOME/gcloud.json $*"
