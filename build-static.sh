#!/bin/sh
set -e

PORT=${PORT:-1111}
BASE_URL=${BASE_URL:-http://127.0.0.1:$PORT}

zola build --base-url "$BASE_URL"
