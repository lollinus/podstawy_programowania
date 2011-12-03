program Pierwiastki (output);

var a,b,c,delta : real;
   error        : integer;


PROCEDURE DrukujOpcje;
BEGIN
   Writeln('Za ma³o parametrow');
   Writeln('Podaj opcje:');
   Writeln('         a b c');
END;

BEGIN
   IF ParamCount < 3 THEN
   BEGIN
      DrukujOpcje;
      halt(1);
   END;

   Val(ParamStr(1), a, error);
   IF error > 0 THEN
   BEGIN
      Write('Blad konwersji a ',ParamStr(1));
      halt(1);
   END;

   Val(ParamStr(2), b, error);
   IF error > 0 THEN
   BEGIN
      Write('Blad konwersji b ',ParamStr(2));
      halt(1);
   END;

   Val(ParamStr(3), c, error);
   IF error > 0 THEN
   BEGIN
      Write('Blad konwersji c',ParamStr(3));
      halt(1);
   END;

   delta := b * b - 4 * a * c;

   IF delta > 0 THEN
   BEGIN
      Writeln('Dwa pierwiastki x1:', (-b - sqrt(delta) / 2 * a):8:3, ' x2: ', (-b+sqrt(delta)/2*a):8:3);
      halt(0);
   END
   ELSE IF delta = 0 THEN
   BEGIN
      Writeln('Jeden pierwiastek x0: ', (-b / 2 * a):8:3);
      halt(0);
   END;
   Writeln('Brak pierwiastkow');
END.