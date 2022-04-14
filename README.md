# Reverse-Engineering-Assembly
This mini project is built using x64 assembly language. It is a calculator that can perform + - * / on numbers taken as an input from user. I was learning assembly and reverse engineering for getting more insight into malware analysis and threat hunting. Hence, with the help of hellsender01 github i was able to learn assembly and built a mini calculator out of my learning. Special thanks to hellsender01 github -youtube channel 'The Cyber Expert'.
steps to run similar files with .asm extension-
1) download nasm library  and util.asm file
2) nasm -f elf64 filename.asm -o filename.o ( -f is to define file format in which .asm file is created; -o to create object file)
3) ld filename.o -o filename (ld is used to link object file with -o output file for smooth execution)
4) launch the filename using - ./filename
