#!/bin/bash
export XDG_RUNTIME_DIR="/run/user/1000"
mpv -really-quiet "$1" -volume 100
