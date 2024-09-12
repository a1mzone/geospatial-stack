#!/bin/bash

./accumulo-service gc start
./accumulo-service monitor start
./accumulo-service master start
./accumulo-service tserver start
./accumulo-service tracer start