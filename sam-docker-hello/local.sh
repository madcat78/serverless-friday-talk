#!/usr/bin/env bash

SAM_CLI_TELEMETRY=0

sam local invoke -e events/event.json

sam build

sam local start-api
