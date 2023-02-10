#!/bin/sh
set -e

# 自分のアプリに合わせて必要なコマンドを修正してください
bin/rails db:migrate
rake sitemap:refresh
whenever --update-crontab
bin/rails s