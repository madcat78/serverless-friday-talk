#!/usr/bin/env bash

SAM_CLI_TELEMETRY=0

sam build --use-container --beta-features

sam local invoke -e events/event.json

sam local start-api
