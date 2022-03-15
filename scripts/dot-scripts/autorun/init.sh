#!/bin/bash

AUTORUN="$HOME/.scripts/autorun"
UTILS="$HOME/.scripts/utils"

. "${UTILS}/file_sourcing.sh"

source_file_if_exists "${AUTORUN}/extract.sh"
source_file_if_exists "${AUTORUN}/colors.sh"

unset AUTORUN UTILS

