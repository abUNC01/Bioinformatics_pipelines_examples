#!/bin/bash

# Set the endpoint for the pubchem url
API_ENDPOINT="https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/name/"

# Query the target drug
drug_query="trametinib" 

FILE_OUTPUT_FORMAT="json"

# The api request
API_Call="${API_ENDPOINT}${drug_query}/${FILE_OUTPUT_FORMAT}"

# CURL Request to get the call and retrieve the json data of the target drug
curl -X GET "${API_CALL}" 
