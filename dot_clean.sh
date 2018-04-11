#!/bin/bash

## Make sure to set $home_dir either in this script
## or in a sourced script, as below:
start=$(pwd)
base="$(dirname "$0")"
source "$base/vars.sh" 

if [ "$DOT_CLEAN_HAS_VIEWED" == "" ]; then
  export DOT_CLEAN_HAS_VIEWED=1;
  find "$home_dir" -name '.DS_Store';
  find "$home_dir" -name '*._*';
  echo "Make sure to run with the following syntax:";
  echo "  . dot_clean.sh";
  echo "Run again to delete.";
else
  export DOT_CLEAN_HAS_VIEWED="";
  find "$home_dir" -name '.DS_Store' -delete;
  find "$home_dir" -name ='*._*' -delete;
  echo "Files cleaned successfully!";
fi
