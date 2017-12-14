#!/bin/bash
dd bs=8M count=128 if=/dev/zero of=~/test conv=fdatasync
