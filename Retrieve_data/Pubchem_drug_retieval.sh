#!/bin/bash

# Set the endpoint for the pubchem url
API_ENDPOINT="https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/name/"

# Query the target drug
# Old within script 
## drug_query="trametinib" 
# New drug query from CLI after calling script
drug_query=$1

FILE_OUTPUT_FORMAT="json"

# The api request
API_Call="${API_ENDPOINT}${drug_query}/${FILE_OUTPUT_FORMAT}"

# CURL Request to get the call and retrieve the json data of the target drug
##  Headers for 
curl -X GET "${API_CALL}" \
  -H 'Accept: application/json' \
  -H 'Content-Type: application/json' \
  -o "molecular_data_${drug_query}.${FILE_OUTPUT_FORMAT}"



# Based this script on the pubchem API, PUG. Found here: https://pubchem.ncbi.nlm.nih.gov/docs/pug-rest