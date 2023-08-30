#!/bin/sh
set -e

rails db:create db:migrate
rails dev:cache

# Remove a potentially pre-existing server.pid for Rails.
rm -f /usr/local/demo_app/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
