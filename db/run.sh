#!/usr/bin/env bash

host=$1
database=$2
username=$3

for file in ./sql/*sql; do
  psql -h $host -d $database -U $username -W -f $file
done

psql -h $host -d $database -U $username -W -f ./data/seeds.sql
