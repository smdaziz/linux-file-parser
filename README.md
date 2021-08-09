# linux-file-parser
Demonstration of reading a delimited file and calling a perl/shell script in Linux

## Instructions to Run/Execute

**Option #1 - Clone the repo/checkout the code**

**Option #2 - Download the files file_reader.sh, perl_script.pl, server_path.txt**


- _server_path.txt_ - contains the delimited dummy server IPs and some fake paths
- _perl_script.pl_ - is the sample perl that takes and does the actual processing with the passed in serverIP and the path (Note: in this example, I'm just printing the received serverIP and the path)
- _file_reader.sh_ - is the main file to RUN, that takes in server_path.txt as the argument, reads the content and invokes perl_script.pl for each entry

Here is how to run
> sh file_reader.sh server_path.txt
