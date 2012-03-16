#!/bin/sh

nvidia-settings -q gpus |grep '0] (' | cut -d '(' -f 2,2 | sed -e 's/.\{1\}$//'