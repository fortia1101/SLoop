# !bin/sh

function alFe() {
  if [ "$2" = "" ]
  then
    maxTime=1
  else
    maxTime=$2
  fi

  for i in `seq 1 $maxTime`
  do
    sl -$OPT
  done
}

function normal() {
  if [ "$1" = "" ]
  then
    maxTime=1
  else
    maxTime=$1
  fi

  for i in `seq 1 $maxTime`
  do
    sl
  done
}

# execute
if [ $# -le 2 ]
then
  if [ "${1:0:1}" = "-" ]
  then
    while getopts alFeh OPT
    do
      case $OPT in
        [alFe]) alFe $@ ;;
        -h|*) man sl ;;
      esac
    done
  else
    normal $@
  fi
else
  echo "ERROR!"
fi
