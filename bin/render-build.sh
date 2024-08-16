#!/usr/bin/env bash
# exit on error
set -o errexit
bundle install --path vendor/bundle
bundle exec rake assets:clean
bundle exec rake assets:precompile
