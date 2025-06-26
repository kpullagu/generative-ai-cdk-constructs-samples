@echo off
echo Setting up environment for CDK with buildx...

rem Set environment variables for CDK to use buildx
set CDK_DOCKER_BUILDX_ENABLED=true
set CDK_DOCKER_BUILDX_BUILDER=mybuilder

echo Running CDK deploy with parameters: %*
cdk deploy %*

echo Done!
