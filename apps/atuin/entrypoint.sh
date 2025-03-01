#!/usr/bin/env sh

if [ -n "${ATUIN__POSTGRES_HOST}" ]; then
  export ATUIN_DB_URI="postgres://${ATUIN__POSTGRES_USERNAME}:${ATUIN__POSTGRES_PASSWORD}@${ATUIN__POSTGRES_HOST}:${ATUIN__POSTGRES_PORT:-5432}/${ATUIN__POSTGRES_DATABASE}?sslmode=${ATUIN__POSTGRES_SSLMODE:-require}"
fi

exec "$@"
