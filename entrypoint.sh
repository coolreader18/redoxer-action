#!/bin/bash

eval args="($2)"

exec redoxer "$1" "${args[@]}"
