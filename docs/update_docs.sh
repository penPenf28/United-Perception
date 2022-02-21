#!/bin/bash

up=./
export PYTHONPATH=$up:$PYTHONPATH

source=docs/source
target=docs/_build/html

sphinx-versioning build $source $target 2>&1 | tee log.doc && sshpass -p springpypi scp -P 10000 -r $target spring@10.10.40.93:~/docs/up && echo "update up docs done"
