PROGRAM dni_tygodnia (output);

VAR
   dzien : INTEGER;

BEGIN
   writeln('Podaj dzien tygodnia');
   read(dzien);
   IF (dzien < 1) OR (dzien > 7) THEN
   BEGIN
      writeln('podano zly numer dnia (dozwolone 1-7)');
      halt(1);
   END;
   
   IF dzien = 1 THEN
   BEGIN
      writeln('Poniedzialek');
   END
   ELSE IF dzien = 2 THEN
   BEGIN
      writeln('Wtorek');
   END
   ELSE IF dzien = 3 THEN
   BEGIN
      writeln('Sroda');
   END
   ELSE IF dzien = 4 THEN
   BEGIN
      writeln('Czwartek');
   END
   ELSE IF dzien = 5 THEN
   BEGIN
      writeln('Piatek');
   END
   ELSE IF dzien = 6 THEN
   BEGIN
      writeln('Sobota');
   END
   ELSE IF dzien = 7 THEN
   BEGIN
      writeln('Niedziela');
   END;
END.