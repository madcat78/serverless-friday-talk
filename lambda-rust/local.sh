#!/usr/bin/env bash

SAM_CLI_TELEMETRY=0

# x86_64
cargo lambda build --release --target x86_64-unknown-linux-gnu
# cargo lambda build --release --target x86_64-unknown-linux-musl

# Arm64
# cargo lambda build --release --target aarch64-unknown-linux-gnu
# cargo lambda build --release --target aarch64-unknown-linux-musl

sam local invoke

sam local invoke -e events/event.json

sam local start-api
