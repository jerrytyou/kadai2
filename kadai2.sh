#!/bin/bash

if echo "$1" | grep -q '^[0-9]\+$' && echo "$2" | grep -q '^[0-9]\+$'; then
 
  if [ $# -ne 2 ];then
      echo "USAGE:$0 int1 int2"
      exit
  else
      if [ $1 -le 0 ];then
  	  echo "wrong number"
    	  exit
      else
	  if [ $2 -le 0 ];then
 	     echo "wrong number"
             exit
  	  fi
      fi
  fi
else 
  echo "USAGE:$0 int1 int2"
  exit
fi
gcd=
GCD()
{
    a=$1
    b=$2
    if [ $a -lt $b ];then
        max=$b
        min=$a
    else
        max=$a
        min=$b
    fi
    if [ $(($max%$min)) -ne 0 ];then
        GCD $min $(($max%$min))
    fi
    gcd=$min
}
GCD $1 $2 
echo "$1 と $2 の最大公約数は $gcd"
