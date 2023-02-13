#!/bin/bash
#
#
INPUTFILE='README.md'
OUTPUTFILE='aliases'

ALIASES=$(grep '^`alias' "${INPUTFILE}" | sed 's/`//g')
FUNCTIONS=$(sed -n '/```/,/```/p' "${INPUTFILE}" | sed 's/```//g')

echo "${ALIASES}"   | tee "${OUTPUTFILE}"
echo "${FUNCTIONS}" | tee -a "${OUTPUTFILE}"
