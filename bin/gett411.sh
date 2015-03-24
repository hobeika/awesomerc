#!/bin/bash

# API Documentation :
# https://api.t411.me/

##  credentials should have the following lines :
# usernmae=your_t411_username
# password=your_t411_password
source ~/.t441_credentials

# the place when you store torrent
folder=$HOME/torrent/dot/

site="https://api.t411.me/"
auth_result=$(wget --post-data="username=$username&password=$password" -qO- "$site/auth")

# Pretty print json
function jsonpp()
{
  json="$([ $# -gt 0 ] && echo $* || cat -)";
  echo $json | python -mjson.tool || echo $json
}

# Should do something smarter in the future
function auth_error()
{
  echo "$1" | jsonpp
  return 1
}

# get id from url
function get_id()
{
  if grep -q 'https://www.t411.me/t/[0-9]*' <(echo "$1")
  then
    id=$(echo $1 | sed -r 's#https://www.t411.me/t/([0-9]*)#\1#')
  elif grep -q '^[0-9]*$' <(echo "$1")
  then
    id=$1
  else
    echo "Not a valid id"
    exit 1
  fi
}

# display informations about torrent. Used to set filename and display it
function show_infos()
{
  tmp=`mktemp`
  wget -qO "$tmp" --header="Authorization: $token" "$site/torrents/details/$1"

  python="import json

json_data=open('"$tmp"')
data = json.load(json_data)
print data[\"name\"] + ' by ' + data[ \"username\"]"
  python <(echo "$python")
  rm "$tmp"
}

if [ -z "$1" ]
then
  "Please provide a torrent id or minified URL"
  exit 1
else
  get_id "$1"
fi

if grep -q '"code":' <(echo $auth_result)
then
  auth_error "$auth_result"
  exit 1
else
  token=$(echo $auth_result | sed -r 's/.*token":"(.*)"}/\1/')
fi

infos=$(show_infos $id)
echo $infos

# Download the torrent
wget -qO "$folder/$infos.torrent" --header="Authorization: $token" "$site/torrents/download/$id"
# Just for you, to check if it's a valid torrent seed file.
file "$folder/$infos.torrent"
