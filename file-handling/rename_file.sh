#!/bin/bash

read -p "Enter current file name:" oldname 
read -p "Enter new filename:" newname 

# checking if file exists

if [ -f "oldname" ]; 
 then 

# checking if new file already exist
if [ -f "newname" ]; 
 then 
  echo "Error: A file with the new name already exist."

else 
# Ask for confirmation 

 read -p "Are you sure want to rename '$oldname' to 'newname'? (y/n): " confirm 

if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ];
 then 
  mv "oldname"  "newname"
  echo "File renamed successfully."
else
  echo "Operation cancelled."
fi 
  fi
else 
echo "Error: File does not exist."

fi
