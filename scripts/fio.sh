#!/bin/bash
cd ./scripts
fio ./fio/fio.config && rm -rf ./random*
