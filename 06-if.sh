#!/bin/bash

## string expressions
a=abc1
if [ $a = "abc" ]
then
   echo OK
fi

if [ $a != "abc" ]
then
  echo NOTOK
fi

if [ -z "$b" ]; then
  echo B is eampty / not declared variable