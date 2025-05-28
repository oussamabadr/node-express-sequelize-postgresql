#!/bin/bash


BASE_URL="http://localhost:8080/api/tutorials"

# Create a new tutorial 
echo -e "\n\nCreating a new tutorial..."
curl -X POST "$BASE_URL" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -d '{
    "title": "published Tutorial 1",
    "description": "This is a sample tutorial description",
    "published": true
  }'

curl -X POST "$BASE_URL" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -d '{
    "title": "published Tutorial 2",
    "description": "This is a sample tutorial description",
    "published": true
  }'

curl -X POST "$BASE_URL" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -d '{
    "title": "published Tutorial 3",
    "description": "This is a sample tutorial description",
    "published": false
  }'


# Get a specific tutorial by ID
echo -e "\n\nRetrieving tutorial with ID 1..."
curl -X GET "$BASE_URL/1" \
  -H "Accept: application/json"


# Update a tutorial by ID
echo -e "\n\nUpdating tutorial with ID 1..."
curl -X PUT "$BASE_URL/1" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -d '{
    "title": "Updated Tutorial Title",
    "description": "Updated description",
    "published": false
  }'

# Get the updated tutorial by ID
echo -e "\n\nRetrieving the updated tutorial with ID 1..."
curl -X GET "$BASE_URL/1" \
  -H "Accept: application/json"

