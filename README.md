# stuf.sh
Dead simple script for extracting urls from ffuf's json output

Requirements: jq-linux64


Usage: 


"./stuf.sh example.json" <---print all urls
       "./stuf.sh example.json 200"<---print all urls with 200 status
