#!/usr/bin/perl
use warnings;
if (@ARGV == 0 && -t STDIN && -t STDERR) {
    print("Please pass serverIP and path as arguments to this script\n");
}
my ($serverIP, $path, $output) = @ARGV;
if (defined $serverIP & defined $path) {
    print("Server IP $serverIP | Path : $path\n");
#    open(FH, '>', $output) or die $!; ## opening file with '>' doesn't append to the file, rather overrides previously written content
    open(FH, '>>', $output) or die $!; ## opening file with '>>' appends content towards the end of file
    print FH "$serverIP \n"; ## print/write content to the file
    close(FH); ## close the file
} elsif(defined $serverIP) {
    print("Server Path $serverIP\n");
}
