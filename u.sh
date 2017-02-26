#!/bin/bash

FILENAME="u.yaml"

# Parse arguments
usage() {
    echo "Usage: $0 [-h] [-v] [-s SHORTCUT -u URL] [-l] [-r SHORTCUT]"
    echo "  -h  Help. Display this message and quit."
    echo "  -v  Version. Print version number and quit."
    echo "  -s  Shortcut  -u  URL"
    echo "  -l  Show all shortcuts"
    echo "  -r  Specify a shortcut to removed"
    exit
}

list() {
  # list all
  exit
}

version() {
  # version
  exit
}

shortcut=
url=
remove=
while getopts ":hvls:u:r:" opt; do
  case $opt in
    h)
        usage
        ;;
    v)
        version
        ;;
    s)
        shortcut=$OPTARG
        ;;
    u)
        url=$OPTARG
        ;;
    l)
        list
        ;;
    r)
        remove=$OPTARG
        ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

if [[ -n "$shortcut" ]] && [[ -n "$url" ]]; then
  echo $shortcut $url
elif [[ -n "$shortcut" ]] || [[ -n "$url" ]]; then
  echo "-s and -u must be used together"
elif [[ -n "$remove" ]]; then
  echo $remove
elif [[ -n "$1" ]]; then
  echo $1
fi