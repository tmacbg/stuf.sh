# stuf.sh
Dead simple script for extracting urls from ffuf's json output

Requirements: jq-linux64

Usage: stuf <jsonfile.json> <httpstatuscod>

Example: ./stuf.sh testfire.json 200
Output:

http://testfire.net/admin
http://testfire.net/bank
http://testfire.net/con
http://testfire.net/nul
