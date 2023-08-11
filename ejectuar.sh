#! /bin/bash

docker build -t tp-entorno .

docker run -it -v ./datasets:/app/datasets tp-entorno