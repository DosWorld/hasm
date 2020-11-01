program hasm;

{$APPTYPE CONSOLE}

uses
  HCORE,datas;

begin

RenderExeHeaders;

UpdateSection0($200);

if trim(paramstr(1))='' then
 begin
  writeln('hasm.exe [source.asm] [output.exe]');
 end else
  begin
   RenderCode2(paramstr(1));
   MakeEXE(paramstr(2));
  end;

end.
