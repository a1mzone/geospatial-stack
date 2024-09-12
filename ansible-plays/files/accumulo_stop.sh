#!/bin/bash

./accumulo-service gc stop
./accumulo-service monitor stop
./accumulo-service master stop
./accumulo-service tserver stop
./accumulo-service tracer stop