# Hasm
Hascal x86 Assembler

## Features
- Compile to x86 Machine Code
- Use Win32 Api
- Fast

## Get Started
```
hasm <fileName.asm>
```

## Syntax
go to [Grammer Help Page](https://github.com/hascal/hasm/blob/main/Grammer%20Help/help.md)

## Examples

``` asm
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
```
[More Examples...](https://github.com/hascal/hasm/tree/main/examples)

## ToDO
- [x] Create Assembler Base
- [x] using Win32 Api
- [x] use Functions
- [ ] Release for MacOS , Linux 
