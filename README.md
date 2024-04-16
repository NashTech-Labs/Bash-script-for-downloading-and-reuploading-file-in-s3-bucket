# S3 File Transfer Script

This Bash script facilitates the transfer of files between Amazon S3 buckets. It reads a list of file names from a CSV file, downloads each file from a source bucket, and then re-uploads them to a destination bucket.

## Usage

1. **Clone Repository:** Clone or download this repository to your local machine.

2. **Configure Script:**
    - Open the `transfer_files.sh` script in a text editor.
    - Modify the following variables according to your requirements:
        - `temp_dir`: The name of the temporary directory where files will be downloaded and stored temporarily.
        - `file.csv`: The name of the CSV file containing the list of file names to transfer.
        - `bucketname`: The name of the source S3 bucket.
        - `destination_bucket_name`: The name of the destination S3 bucket.
    
3. **Run the Script:**
    - Open a terminal window.
    - Navigate to the directory containing the script.
    - Run the script using the following command:
      ```
      bash transfer_files.sh
      ```

4. **View Output:**
    - The script will display progress messages as it downloads and uploads files.
    - Upon completion, it will display a message indicating that the script has finished.

## Notes

- Ensure that you have the AWS CLI installed and configured with appropriate permissions to access the S3 buckets.
- Make sure that the CSV file (`file.csv`) containing the list of file names is present in the same directory as the script.
- Modify the script as needed to customize the file transfer process, such as changing the file paths or adding error handling.
