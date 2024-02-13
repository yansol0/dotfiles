#!/bin/bash

language=$1
command=$2

curl "cht.sh/$language/$command"
