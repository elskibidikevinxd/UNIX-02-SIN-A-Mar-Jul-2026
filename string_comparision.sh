#!/bin/bash
VARIABLE_ONE="10"
VARIABLE_TWO="nostarch"

if [[ "${VARIABLE_ONE}" -gt "${VARIABLE_TWO}" ]]; then
    echo "${VARIABLE_ONE} is greater than ${VARIABLE_TWO}."
else
    echo "${VARIABLE_ONE} is less than ${VARIABLE_TWO}."
fi