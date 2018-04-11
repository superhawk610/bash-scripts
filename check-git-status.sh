#!/bin/bash

start=$(pwd)
base="$(dirname "$0")"
source "$base/colors.sh"

for d in $1/*/ ; do
  cd ${d}
  if [ -d .git ]; then
    if git diff-index --quiet HEAD -- &> /dev/null; then
      printf "%-40s %-15s\n" $d " ${green}[UP TO DATE]${end}"
    else
      printf "%-40s %-15s\n" $d " ${red}[OUT OF SYNC]${end}"
    fi
  fi
  cd ..
done

cd ${start}
