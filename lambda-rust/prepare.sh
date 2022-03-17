#!/usr/bin/env bash

cargo install cargo-lambda


# These are required only when cross compiling

# For x86_64 Lambda functions
# rustup target add x86_64-unknown-linux-gnu

# For Arm64 Lambda functions
# rustup target add aarch64-unknown-linux-gnu
# rustup target add aarch64-unknown-linux-musl
