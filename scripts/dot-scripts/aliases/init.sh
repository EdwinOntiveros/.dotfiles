#!/bin/bash

ALIASES="$HOME/.scripts/aliases"
UTILS="$HOME/.scripts/utils"

. "${UTILS}/file_sourcing.sh"

sofie "${ALIASES}/global-commands.sh"
sofie "${ALIASES}/stow.sh"
sofie "${ALIASES}/pacman.sh"
sofie "${ALIASES}/dir-actions.sh"
sofie "${ALIASES}/device-info.sh"

unset ALIASES UTILS

