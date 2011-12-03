PROGRAM PoleFigury ( output );

VAR
   r               : REAL;
   error_r         : INTEGER;
   a,b             : REAL;
   error_a,error_b : INTEGER;
   opcja           : SHORTSTRING;
   

FUNCTION PoleKola(r :REAL): REAL;
BEGIN
   PoleKola:=Pi * r * r;
END;

FUNCTION PoleElipsy(a : REAL; b: REAL): REAL;
BEGIN
   PoleElipsy:=Pi * a * b;
END;

FUNCTION PoleProstokata(a : REAL; b : REAL): REAL;
BEGIN
   PoleProstokata:=a * b;
END;

PROCEDURE DrukujOpcje;
BEGIN
   Writeln('Nierozpoznana opcja ',opcja);
   Writeln('Dostepne opcje:');
   Writeln('         k - kolo      ');
   Writeln('         e - elipsa ');
   Writeln('         p - prostokat ');
END;

BEGIN
   opcja := ParamStr(1);

   IF ParamCount = 0 THEN 
   BEGIN
      Writeln('Brak parametrow');
      halt(1);
   END ELSE BEGIN
   END;

   
   IF (opcja = 'k') OR (opcja = 'K') THEN
   BEGIN
      Writeln('Obliczanie pola kola');
      IF ParamCount > 1 THEN
      BEGIN
         Val(ParamStr(2), r, error_r);
         IF error_r > 0 THEN
         BEGIN
            Write('Blad konwersji');
            halt(1);
         END;
         Writeln('Pole Kola ', PoleKola(r):8:3);
      END
   END
   ELSE IF (opcja = 'p') OR (opcja = 'P') THEN
   BEGIN
      Writeln('Obliczanie pola prostokata');
      IF ParamCount > 1 THEN
      BEGIN
         Val(ParamStr(2), a, error_a);
         IF (error_a > 0) THEN
         BEGIN
            Write('Blad konwersji');
            halt(1);
         END
      END;
      
      IF ParamCount > 2 THEN
      BEGIN
         Val(ParamStr(3), b, error_b);
         IF (error_b > 0) THEN
         BEGIN
            Write('Blad konwersji');
            halt(1);
         END;
      END;
      Writeln('Pole Prostokata o bokach ',a:8:3,' ',b:8:3,' ',PoleProstokata(a,):8:3);
   END
   ELSE IF (opcja = 'e') OR (opcja = 'E') THEN
   BEGIN
      Writeln('Obliczanie pola elipsy');
      IF ParamCount > 1 THEN
      BEGIN
         Val(ParamStr(2), a, error_a);
         IF (error_a > 0) THEN
         BEGIN
            Write('Blad konwersji');
            halt(1);
         END
      END;
      
      IF ParamCount > 2 THEN
      BEGIN
         Val(ParamStr(3), b, error_b);
         IF (error_b > 0) THEN
         BEGIN
            Write('Blad konwersji');
            halt(1);
         END;
      END
      ELSE
      BEGIN
         b := a;
      END;
      Writeln('Pole Elipsy o bokach ',a:8:3,' ',b:8:3,' ',PoleElipsy(a,b):8:3);
   END
   ELSE
   BEGIN
      DrukujOpcje;
      halt(1);
   END
END.
