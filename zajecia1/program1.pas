program PoleProstokata;
{ Program oblicza pole prostokata o zadanych dlugosciach bokow }
{ dlugosci wprowadzane sa z klawiatury }

{ deklaracje zmiennych }
var
   a : real; { bok a prostokatu - zmienna typu rzeczywistego }
   b : real; { bok b prostokatu - zmienna typu rzeczywistego }

begin
   writeln('Program oblicza pole prostokatu');
   write('Podaj dlugosc boku a > ');
   readln(a); { odczytaj wartosc z klawiatury i przypisz do podanej zmiennej }
   write('Podaj dlugosc boku b > ');
   readln(b); { odczytaj wartosc z klawiatury i przypisz do podanej zmiennej }
   write('Pole = ', a * b:8:3); (* oblicz i wypisz pole kola *)
   readln;
end.
