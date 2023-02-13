#!/bin/sh
set -e

# 自分のアプリに合わせて必要なコマンドを修正してください
#rails db:migrate:reset DISABLE_DATABASE_ENVIRONMENT_CHECK=1
bin/rails db:migrate
bin/rails db:seed
#bin/rails sitemap:refresh
#whenever --update-crontab
bin/rails s