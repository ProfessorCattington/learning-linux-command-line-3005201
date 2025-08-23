#!/bin/bash

# Define the recycle bin path
RECYCLE_BIN_PATH="/recycle_bin"

# Check if the recycle bin directory exists
if [ -d "$RECYCLE_BIN_PATH" ]; then

    echo "Checking recycle bin..."
    
    # Check if the recycle bin is not empty
    if [ "$(ls -A "$RECYCLE_BIN_PATH")" ]; then
        
        echo "Checking recycle bin..."
        # Prompt the user
        read -p "Delete items in the recycle bin? (y/n) " -n 1 REPLY
        echo
        
        # Check the response and delete contents if 'y' or 'Y'
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            echo "Deleting contents of the recycle bin..."
            rm -rf "$RECYCLE_BIN_PATH"/*
            echo "Recycle bin emptied."
        else
            echo "Items in the recycle bin were not deleted."
        fi
        
    fi
else
  echo "path to recycle_bin broken!"
fi