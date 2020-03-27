#!/usr/bin/env bash

set -e

echo "Run Migrations"

heroku run --remote production rails db:migrate
heroku run --remote production rails db:seed