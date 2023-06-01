#!/bin/bash

# Create a directory to store the downloaded files
mkdir -p data/loaded

# Read the URLs from the NASA_DEM.txt file
while IFS= read -r url
do
  # Extract the filename from the URL
  filename=$(basename "$url")

  # Download the file
  wget -P data/loaded "$url" -O data/loaded/"$filename"

  # Extract the contents of the ZIP file
  unzip -o -d data/loaded data/loaded/"$filename"

  # Remove the downloaded ZIP file
  rm data/loaded/"$filename"

done < NASA_DEM.txt
