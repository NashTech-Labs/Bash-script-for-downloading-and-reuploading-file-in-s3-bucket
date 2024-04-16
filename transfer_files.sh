#!/bin/bash

temp_dir="filename"
mkdir -p "$temp_dir"

while IFS= read -r line; do
    # Remove leading and trailing whitespace from each line
    line=$(echo "$line" | tr -d '[:space:]')

    # Download file from S3 bucket to temporary directory
    aws s3 cp "s3://bucketname/$line" "$temp_dir/"
done < file.csv

for file in "$temp_dir"/*; do
    if [ -f "$file" ]; then
        # Upload each file from temporary directory back to S3 bucket
        aws s3 cp "$file" "s3://destination_bucket_name/"
        if [ $? -eq 0 ]; then
            echo "File $file uploaded successfully."
        else
            echo "Error: Failed to upload file $file."
        fi
    fi
done

# Remove temporary directory
rm -rf "$temp_dir"
echo "Script completed."
