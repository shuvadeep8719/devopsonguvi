#!/bin/bash
# Task 2: Replace "give" with "learning" from 5th line onward in lines containing "welcome"
file="sample.txt"
output_file="output_sample.txt"
# Create or clear the output file
> "$output_file"

# Use a counter to keep track of the line number
line_number=0

# Read the file line by line
while IFS= read -r line; do
	#increment the line counter
	#((line_number++))
	line_number=$(expr $line_number + 1)
	
		#if the line number is less than 5, write it unchanged to the input file
		if [ "$line_number" -lt 5 ]; then
			echo "$line" >> "$output_file"
		else
			# For lines 5 and above, check if they contain the word "welcome"
			if echo "$line" | grep -iq "welcome"; then
				# Replace "give" with "learning" in this line
				#modified_line="${line//give/learning}"
				modified_line=$(echo "$line" | sed 's/give/learning/g')
				echo "$modified_line" >> "$output_file"
				#echo "$line" >> "$output_file"
			else
				#if the line doesn't contain "welcome", write it unchanged
				echo "$line" >> "$output_file"
			fi
		fi
	done < "$file"
# Notify the user that changes have been saved
echo "changes have been saved to $output_file"	

