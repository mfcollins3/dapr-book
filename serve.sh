#!/usr/bin/env sh

# Copyright 2024 Michael F. Collins, III
#
# Building Microservices with Dapr © 2024 by Michael F. Collins, III is
# licensed under CC BY-ND 4.0. To view a copy of this license, visit
# https://creativecommons.org/licenses/by-nd/4.0/

# serve.sh
#
# This program is a convenience script to start the mdbook test server for
# reviewing the book content in a web browser. The `mdbook serve` command
# will, by default, start the web server on an IPv6 address. Unfortunately,
# this has problems when using a development container as Docker only supports
# IPv4 addresses on Microsoft Windows and Apple macOS. This script will start
# the development web server on an IPv4 address so that the book can be read
# and reviewed in a web browser on the host operating system.
#
# Usage: ./serve.sh

set -e

mdbook serve -n 127.0.0.1
