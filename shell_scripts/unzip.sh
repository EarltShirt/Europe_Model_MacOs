#!/bin/bash

# Specify the path to the directory containing the zipped files
zipped_dir="data/zipped"

# Specify the path to the directory where you want to extract the files
unzipped_dir="data/unzipped"

# Create the unzipped directory if it doesn't exist
mkdir -p "$unzipped_dir"

# Unzip all the files in the zipped directory
for file in "$zipped_dir"/*.zip; do
    # Get the base filename without the directory path
    filename=$(basename "$file")
    
    # Extract the contents of the zip file to the unzipped directory
    unzip -o -d "$unzipped_dir" "$file"
    
    # Optionally, remove the original zip file
    # Uncomment the line below if you want to remove the zip files after extraction
    # rm "$file"
done
