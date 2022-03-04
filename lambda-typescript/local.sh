#!/usr/bin/env bash

SAM_CLI_TELEMETRY=0

sam build --beta-features

sam local start-api
