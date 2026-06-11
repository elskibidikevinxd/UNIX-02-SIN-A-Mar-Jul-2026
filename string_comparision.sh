#!/bin/bash
VARIABLE_ONE="10"
VARIABLE_TWO="nostarch"

if [[ "${VARIABLE_ONE}" == "${VARIABLE_TWO}" ]]; then
    echo "they are equal!"
else
    echo "they are not equal!"
fi