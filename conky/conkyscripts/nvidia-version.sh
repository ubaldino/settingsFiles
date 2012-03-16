#!/bin/sh

nvidia-settings -q NvidiaDriverVersion |grep '):' | cut -d ' ' -f 6,6
