#!/bin/bash
set -e

echo "Running terraform validate..."
terraform validate

echo "Initializing TFLint plugins..."
tflint --init

echo "Running TFLint..."
tflint --recursive

echo "All checks passed."