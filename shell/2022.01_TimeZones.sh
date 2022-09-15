#!/bin/bash
# Display datetimes for the major Oracle Cerner locations.
# Written for cerner_2tothe5th_2022

zones=("America/Chicago|Kansas City" "America/New_York|Malvern" "Europe/London|the UK" "Asia/Kolkata|India")

echo "Here are the current times for the major Oracle Cerner office locations:"

for zone in "${zones[@]}"; do
  id=`echo $zone |  cut -d'|' -f 1`
  region=`echo $zone |  cut -d'|' -f 2`
  #echo "${id} is in ${region}"

  zone_datetime=`TZ="$id" date "+%a %d %b %H:%M"`
  echo "It is ${zone_datetime} at the Oracle Cerner offices in ${region}!"
done
