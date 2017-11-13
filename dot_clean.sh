#!/bin/bash

if [ "$DOT_CLEAN_HAS_VIEWED" == "" ]; then
  export DOT_CLEAN_HAS_VIEWED=1;
  find /home/server/ucc-local -name '.DS_Store';
  find /home/server/ucc-local -name '*._*';
  echo "Make sure to run with the following syntax:";
  echo "  . dot_clean.sh";
  echo "Run again to delete.";
else
  export DOT_CLEAN_HAS_VIEWED="";
  find /home/server/ucc-local -name '.DS_Store' -delete;
  find /home/server/ucc-local -name ='*._*' -delete;
  echo "Files cleaned successfully!";
fi
