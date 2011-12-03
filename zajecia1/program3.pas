program sprawdz;

var a:real;

begin
   writeln('Podaj liczbe do porowniania');
   readln(a);
   if a>0 then
   begin
      writeln('wieksze');
   end
   else if a=0 then
   begin
      writeln('rowne');
   end
   else if a < 0 then
   begin
      writeln('mniejsze');
   end
end.