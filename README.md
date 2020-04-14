# stuf.sh
Dead simple script for extracting urls from ffuf's json output

Requirements: jq-linux64

!!!rename "jq-linux64" to "jq" and move it to /usr/local/bin or else it will not work!!!


Usage: 


"./stuf.sh example.json" <---print all urls
       "./stuf.sh example.json 200"<---print all urls with 200 status
