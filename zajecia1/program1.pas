program Pole_kola;
{ Program oblicza pole ko³a o promieniu 5 }
{ Program wprowadzany jest z klawiatury }

{ deklaracje zmiennych }
var r:real; { promien kola - zmienna typu rzeczywistego }

begin
   writeln('Program oblicza pole kola');
   write('Podaj promien kola');
   readln(r); { odczytaj wartosc z klawiatury i przypisz do podanej zmiennej }
   write('Pole = ', Pi * r * r:8:3); (* oblicz i wypisz pole kola *)
   readln;
end.
