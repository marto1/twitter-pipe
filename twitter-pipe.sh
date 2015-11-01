#!/bin/bash
prefix="{ print \"@$2:\" \$0; fflush(); }"
timeout $1 rsstail -N -u "http://twitrss.me/twitter_user_to_rss/?user=$2" -n $3 | awk "$prefix"
