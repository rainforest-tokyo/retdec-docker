#!/bin/bash

docker exec retdec mkdir /retdec/tmp

docker cp $1 retdec:/retdec/tmp/target

docker exec retdec /retdec/bin/retdec-decompiler.py /retdec/tmp/target
docker exec retdec rm /retdec/tmp/target
docker exec retdec tar cvfz /retdec/target.tgz /retdec/tmp/
docker cp retdec:/retdec/target.tgz $2
docker exec retdec rm -rf /retdec/tmp

