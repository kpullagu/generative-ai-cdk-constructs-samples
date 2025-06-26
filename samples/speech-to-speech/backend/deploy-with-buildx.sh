#!/bin/bash
echo "Setting up environment for CDK with buildx..."

# Set environment variables for CDK to use buildx
export CDK_DOCKER_BUILDX_ENABLED=true
export CDK_DOCKER_BUILDX_BUILDER=mybuilder

echo "Running CDK deploy with parameters: $@"
cdk deploy "$@"

echo "Done!"
