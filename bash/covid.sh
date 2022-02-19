#!/bin/bash
# This script downloads covid data and displays it

POSITIVE=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].positive')
NEGATIVE=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].negative')
DEATH=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].death')
HOSPITALIZED=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].hospitalized')
PENDING=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].pending')
INICUCURRENTLY=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].inIcuCurrently')
ONVENTILATORCURRENTLY=$(curl https://api.covidtracking.com/v1/us/current.json |jq '.[0].onVentilatorCurrently')

TODAY=$(date)

echo "On TODAY, there were $POSITIVE positive COVID cases, there were $NEGATIVE negative tests, $DEATH deaths, $HOSPITALIZED hospitalized, $PENDING pending results,$INICUCURRENTLY in ICU currently, and $ONVENTILATORCURRENTLY on a ventilator currently."
