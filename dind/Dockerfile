# Based on the official dind image
FROM docker:20.10.18-dind

# Update packages
RUN apk update && apk upgrade

# Install python3 so ansible can manage it
RUN apk add --no-cache python3 py3-pip

# Install utilities for testing purposes
RUN apk add --no-cache curl bash
