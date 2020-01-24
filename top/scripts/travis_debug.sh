#! /usr/bin/env bash
  curl -s -X POST \
   -H "Content-Type: application/json" \
   -H "Accept: application/json" \
   -H "Travis-API-Version: 3" \
   -H "Authorization: token eeEHgUJ7-KbepZbKNv2Gmw" \
   -d '{ "quiet": true }' \
   https://api.travis-ci.org/job/460979004/debug