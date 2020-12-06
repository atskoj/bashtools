#!/bin/bash

lscpu | grep -i -e "cpu mhz" -e "model name" -e "architecture"
