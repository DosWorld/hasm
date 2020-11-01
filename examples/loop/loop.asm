//Generated with Hascal Studio v1.3
// Copyright (c) Maj Arts 2020
// All rights reserved.

.import
import	Kernel32.dll WriteFile
import	Kernel32.dll GetStdHandle

.var

string s1 "This is loop!"

byte STD_INPUT_HANDLE 0xf5
dword count 0x00000000

.code

:label1
push ^STD_INPUT_HANDLE
call getstdhandle

push 0x00        // lpOverlapped 
push @count      // lpNumberOfBytesWritten
push ^length(s1) // nNumberOfBytesToWrite
push @s1         // lpBuffer
push eax         // hFile
call writefile
jmp label1