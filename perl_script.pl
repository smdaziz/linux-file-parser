#!/usr/bin/perl
use warnings;
if (@ARGV == 0 && -t STDIN && -t STDERR) { 
    print("Please pass serverIP and path as arguments to this script\n");
}
my ($serverIP, $path) = @ARGV;
if (defined $serverIP & defined $path) {
    print("Server IP $serverIP | Path : $path\n");
}
