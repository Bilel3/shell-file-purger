#!/bin/bash

# Define the parent directory
parent_directory="/path/to/parent/directory"

# Define the patterns to match files
weekly_pattern="*weekly*"
monthly_pattern="*monthly*"

# Define the maximum age for weekly files (in seconds)
weekly_max_age=$((3 * 7 * 24 * 60 * 60)) # 3 weeks in seconds

# Define the maximum age for monthly files (in seconds)
monthly_max_age=$((30 * 24 * 60 * 60)) # 1 month in seconds

# Delete weekly files older than 3 weeks
find "$parent_directory" -type f -name "$weekly_pattern" -mtime +21 -exec rm {} \;

# Delete monthly files older than 1 month
find "$parent_directory" -type f -name "$monthly_pattern" -mtime +30 -exec rm {} \;
