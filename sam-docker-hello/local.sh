#!/usr/bin/env bash

SAM_CLI_TELEMETRY=0

sam build

sam local start-api
