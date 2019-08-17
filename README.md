# Scripts for univ servers

This is a collection of all the scripts that I have written to reduce the amount of actual typing.

## Contents
* compile
   * c++ -- clears terminal, `g++ *.cpp -o run.exe && ./run.exe`
* m
   * c -- `clear, make clean, make`
* jcompile
   * java -- `clears terminal, javac Main.java --> java Main`
* getproc
   * shows procs for current $USER, infinite while loop
   * `ps -aefl --forest | grep -v myproc | grep --color -E $USER`
* threadproc
   * WIP, shows threads
* ppl
   * gives nice message for number of ssh sessions on a box
* motd_turing
   * add `cat ~/bin/motd_turing` to .bashrc. just to make jumps between boxes more clear
* ws
   * WIP
