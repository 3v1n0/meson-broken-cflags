#!/bin/bash

objdump -h $1 | grep -F .debug_info
