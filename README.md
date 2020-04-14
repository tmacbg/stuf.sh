# stuf.sh
Dead simple script for extracting urls from ffuf's json output

Requirements: jq-linux64


Usage: 

--rename the jq binary from jq-linux64(or whatever the name is) to jq before running the script!!!--


"./stuf.sh example.json" <---print all urls
       "./stuf.sh example.json 200"<---print all urls with 200 status
