# Binary file patcher

Originally created to patch Office Files Metadata (.doc, .xls, .ppt)

The scripts have usage help, invoke them without parameters.

# Example:

## select the offset and length
./search <text> <file>

## select the hex text
./txt2hex <ascii text to patch>

## PATCH IT!
./patch_file.sh <offset> <hex text to patch> <file_to_patch> 
