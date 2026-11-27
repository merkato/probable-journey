# Aktualizacja części „Tabor” na podstawie prezentacji „Tabor – konduktor 2026 (robocza 3)”

Źródło: prezentacja, 185 slajdów. Zakres prac: wyłącznie `tabor.tex`.

W wersji roboczej podręcznika braki są oznaczone niebieskimi ramkami „Do przygotowania” (makro `\material{}`).
Ramki wyłącza się przed drukiem: w `skrypt-kierownik.tex` trzeba zmienić `\roboczatrue` na `\roboczafalse`.

## Plan bloków i status

| # | Blok tematyczny (slajdy) | Rozdział w podręczniku | Status |
|---|---|---|---|
| 1 | Przesyłki nadzwyczajne (2–26) | 1. Ogólne zasady przewozu przesyłek nadzwyczajnych | **zrobione** |
| 2 | Przesyłki niebezpieczne (27–43) | 2. Ogólne zasady przewozu przesyłek niebezpiecznych | **zrobione** |
| 3 | Pojazdy kolejowe i budowa taboru (44–63) | 3. Budowa taboru pasażerskiego | **zrobione** |
| 4 | Warunki techniczne taboru (64–73) | 4. Warunki techniczne, jakim powinien odpowiadać tabor pasażerski (osobny rozdział) | **zrobione** – zostały braki |
| 5 | Oznakowanie i symbole na taborze (74–91) | nowy rozdział (dziś jest to podrozdział + tabele w „Rodzajach hamulców”) | do zrobienia |
| 6 | Wyłączanie taboru z eksploatacji (92–98) | 4. Utrzymanie taboru, wyłączanie i przywracanie do eksploatacji (wg K-1 09.2025 i K-5 05.2025) | **zrobione** |
| 7 | Oględziny techniczne i zestawianie pociągów (99–129) | Oględziny techniczne pociągu pasażerskiego | do zrobienia |
| 8 | Rodzaje hamulców (130–141) | Rodzaje hamulców | do zrobienia |
| 9 | Postępowanie w sytuacjach awaryjnych (142–148) | Obsługa urządzeń wagonowych | do zrobienia |
| 10 | Próba hamulca (149–155) | Wykonywanie szczegółowej i uproszczonej próby hamulca | do zrobienia |
| 11 | Masa hamująca (156–161, 178–182) | Obliczanie rzeczywistej oraz wymaganej masy hamującej | do zrobienia |
| 12 | Wypełnianie karty próby hamulca (162–177) | nowy rozdział | do zrobienia |
| – | (brak w prezentacji) | Sprzęganie i rozprzęganie taboru | pozostaje bez zmian |
| 13 | Zabezpieczenie taboru przed zbiegnięciem (183–185) | Zabezpieczenie taboru przed zbiegnięciem | do zrobienia |

## Rozbieżności i wątpliwości merytoryczne do rozstrzygnięcia

1. ~~**Hamulec ep**~~ – **rozstrzygnięte**: zespolony, ale niesamoczynny (poprawione w rozdziale „Rodzaje hamulców”).
2. ~~**Masa ogólna pociągu**~~ – **rozstrzygnięte**: poprawna jest wersja w podręczniku (> 120 km/h, < 200 t, wagon sterowniczy); w prezentacji jest uproszczenie. Bez zmian.
3. ~~**Próba uproszczona**~~ – **rozstrzygnięte**: K-5 § 11 ust. 7 nie wymienia przypadku „po użyciu hamulca bezpieczeństwa” – bez zmian. **Blok 10 – rozbieżności z K-5 § 11–14 poprawione**: 12 h → 24 h, usunięte 2 przypadki próby uproszczonej spoza K-5 (sieć stała, przewód zasilający „R+Mg”) oraz „stacje wyznaczone w rozkładzie”; dopisane: ważność próby szczegółowej 24 h, kto wykonuje próbę szczegółową (rewident lub kierownik pociągu przy współudziale maszynisty), wartości ciśnień i szczelności (0,48 MPa; 0,05 MPa/5 min; 0,07 MPa/5 min; ep 0,10–0,15 MPa). Pełna przebudowa bloku 10 wg prezentacji – nadal do zrobienia.
4. ~~**Nalepy i płaskie miejsca**~~ – **rozstrzygnięte**: obie wartości są poprawne – 60 mm wg Ir-1 oraz 35 mm wg K-3 (instrukcja wewnętrzna KŚ). Jazda do najbliższej stacji ≤ 20 km/h wynika z Ir-1 § 76 ust. 6 (nie z K-3) – poprawione w rozdziale o warunkach technicznych.
5. ~~**Jazda po zdarzeniu z prędkością 30 km/h**~~ – **rozstrzygnięte**: podstawą jest K-1 § 18 ust. 2 (awaria bez wykolejenia – do najbliższej stacji ≤ 30 km/h, decyzja rewidenta) oraz K-5 § 23 ust. 2 (po wykolejeniu – do punktu naprawy ≤ 30 km/h).
6. ~~**Wyłączanie z eksploatacji**~~ – **rozstrzygnięte**: rozdział przepisany wg K-1 (wrzesień 2025) i K-5 (maj 2025): ECM, wyłączenie z użytkowania → dopuszczenie do użytkowania (zał. 3 cz. II) → przywrócenie do eksploatacji (zał. 3 cz. III). „Świadectwo sprawności technicznej” usunięte.
7. ~~**Płozy hamulcowe**~~ – **rozstrzygnięte**: na taborze KŚ stosuje się płóz uniwersalny PL3; pozostałe typy opisane krótko „dla informacji”. Drobna niejasność: lista szyn dla PL2 (podręcznik „8, 15, 40, S60”, prezentacja „8, 15, S60, R65”) – zostawiona wersja z podręcznika.
8. ~~**Przykład rozkładu jazdy**~~ – **rozstrzygnięte**: przesyłką nadzwyczajną jest pojazd przekraczający skrajnię taboru (poprawiony podpis rysunku).
9. **Grafiki skrajni** (sl. 6 i 7) zawierają błędy: „wyoszenie” zamiast „wychylenie”, odwrócone wychylenie wewnętrzne i zewnętrzne, „tor toru”, puste opisy „mm”. Nie wstawiłem ich; w rozdziale 1 są ramki „Do przygotowania”.
10. ~~**Ikony na slajdach**~~ – **nie dotyczy**: podręcznik jest wyłącznie dla kierownika pociągu.

## Materiały do przygotowania – według rozdziałów

### 1. Przesyłki nadzwyczajne (zrobione – zostały braki)
- [ ] Poprawiony rysunek **skrajni dynamicznej** (widok z góry, wagon w łuku), bez błędów z sl. 6.
- [ ] Rysunek **skrajni ładunkowej z wymiarami** (UIC 505-1 / Ir-10) zamiast sl. 7 z pustymi „mm”.
- [ ] **Zdjęcia przesyłek nadzwyczajnych**, własne albo z pisemną zgodą autorów: ładunek ponadgabarytowy, wagon z zagłębioną podłogą, ławy pokrętne, szyny > 36 m, pojazd na własnych kołach. Zdjęcia na sl. 9–17 pochodzą z mediów (Energa, V. Vyskočil, Elkol i in.).
- [ ] **Opis oznaczeń** na wzorze R266 (sl. 25) i źródło wzoru (Ir-10, który załącznik).

### 2. Przesyłki niebezpieczne (zrobione – zostały braki)
- [ ] Źródło tabeli **barw pasów na cysternach 1520 mm** (sl. 41) do przypisu.
- [ ] **Procedura dla drużyny pociągu pasażerskiego** przy zdarzeniu z TN w pobliżu (powiadomienie, ewakuacja, kierunek wiatru). Na sl. 43 jest tylko opis toru odstawczego.
- [ ] Opcjonalnie: własne zdjęcie wagonu z tablicą pomarańczową i nalepkami (zdjęcie na sl. 28 pochodzi z kursu ADR).

### 3. Budowa taboru pasażerskiego (zrobione – zostały braki)
- [ ] **Kopia zgody producenta** na rendery wózka (sl. 51–55) – zakres (druk, PDF) i nazwa producenta do podpisu rysunków.
- [x] **Sprzęg samoczynny** – zastąpiony własną ilustracją z opisem elementów (zdjęcia 27WEb i 22WEd), bez materiałów Dellner.
- [ ] **Rysunek budowy wagonu** (sl. 49) bez zniekształconego logo i barw PKP Intercity – wersja KŚ lub neutralna.
- [ ] Zdjęcia **pojazdu pomocniczego** i **szynowo-drogowego** (sl. 47–48 to zdjęcia producentów, m.in. Elkol).
- [ ] Potwierdzenie autorstwa: schematy EZT na wózkach klasycznych / Jakobsa (sl. 56, 58), zdjęcie wózka Jakobsa (sl. 59), model sprzęgu śrubowego (sl. 61).
- [ ] Opcjonalnie: lepsze zdjęcie pantografu z opisem (zdjęcie ze sl. 63 ma tylko 400 × 180 px).

### 4. Warunki techniczne taboru (sl. 64–73) (zrobione – zostały braki)
- [x] Osobny rozdział: przestrzeń berneńska, blokada drzwi (UIC 560, TSI LOC&PAS, TB0/TB-S, ramka dla kierownika pociągu), zestaw kołowy z ramką Ir-1 § 76 (rytmiczne stuki, ślizganie kół, 20 km/h), łożyska i usprężynowanie, drzwi i gaśnice.
- [x] Rozstrzygnięcie punktu 4 z listy rozbieżności.
- [ ] Zdjęcia osi zestawu kołowego z miejscami kontroli oraz płaskiego miejsca, nalepu i wyłupania z miarką (lista ilustracji).
- [ ] Zdjęcia: zamek skrzydła drzwi, napęd z ryglem, sterownik drzwi nad wejściem (sl. 67–69), z informacją o typie pojazdu.
- [ ] Rysunek **przestrzeni berneńskiej** (sl. 65) w czytelnej rozdzielczości.
- [ ] Zdjęcia uszkodzeń zestawu kołowego: nalepy, rowek kontrolny, znaki kontrolne obręczy (sl. 70–73). Część jest w `rr/` i `photo-src/` – trzeba potwierdzić, które wykorzystać.
- [ ] Wzory nalepek **R1** i **M** (skan lub rysunek).

### 5. Oznakowanie i symbole na taborze (sl. 74–91)
- [ ] Pliki źródłowe grafik `01_uklad_oznaczen` … `12_woda_wc` (PNG/SVG) – rysunki autorskie, nadają się do podręcznika bez zmian.
- [ ] Zdjęcie tablicy oznaczeń EZT („oznaczenia_ezt_pas.jpg”, sl. 167) w pełnej rozdzielczości.
- [ ] Potwierdzenie, że nie ma przeszkód w cytowaniu treści normy **PN-EN 15877-2:2013** w takim zakresie (prawa autorskie PKN).

### 6. Wyłączanie taboru z eksploatacji (sl. 92–98)
- [ ] Schemat „Wyłączenie i powrót do eksploatacji” (`13_wylaczanie.png`) w pełnej rozdzielczości.
- [ ] Aktualna nazwa i wzór dokumentu dopuszczenia stosowanego w KŚ (świadectwo czy przywrócenie do eksploatacji) – patrz rozbieżność 6.
- [ ] Wzór formularzy książki pokładowej wagonu (biały, żółty, różowy) oraz druku **Mw-581**.
- [ ] Przepis wewnętrzny KŚ o dalszej jeździe EZT po zdarzeniu bez wykolejenia – rozbieżność 5.
- [ ] Wzory nalepek „Drzwi nieczynne” i „WC nieczynne”.

### 7. Oględziny techniczne i zestawianie pociągów (sl. 99–129)
- [x] Nowa wersja tekstu od autora przeniesiona (warunki wykonywania oględzin wg Ir-1 § 14, podział na układy, 4 zdjęcia usterek).
- [ ] Potwierdzić, że zdjęcia `ogledziny-znaki-kontrolne.jpg` i `ogledziny-uszkodzenie-lozyska.jpg` (wzięte ze sl. 112 i 118) to te same zdjęcia co w wersji lokalnej autora i kto jest ich autorem.
- [ ] Teksty z diagramów na sl. 100–103 – nie da się ich odczytać automatycznie, a w prezentacji są skrótowe. Potrzebne rozwinięcie: częstotliwość oględzin (raz na 24 h?), kto je wykonuje, metody (wzrok, słuch, temperatura, zapach).
- [ ] Zdjęcia usterek (sl. 104–127): opis, co dokładnie widać na każdym zdjęciu (np. „nalep 45 mm na kole 1. osi”), i potwierdzenie, że są własne.
- [ ] Graniczna grubość wstawki (10 mm, sl. 104) – źródło przepisu.
- [ ] Rozwinięcie slajdu 129 „Sposoby zestawiania pociągów pasażerskich” (Ir-9): pełna lista wymogów, rola kierownika pociągu.

### 8. Rodzaje hamulców (sl. 130–141)
- [ ] Schematy: zasada działania hamulca pneumatycznego (sl. 133), zawór rozrządczy (sl. 134), element wykonawczy klockowy i tarczowy (sl. 135). Trzeba ustalić źródło (rysunki własne czy producenta).
- [ ] Zdjęcia hamulca sprężynowego (wskaźnik), hamulca ręcznego (koło), płozy hamulca szynowego.
- [ ] Ilustracja hamulca ep na sl. 136 („E/P” w stylu grafiki AI) jest ozdobnikiem i nie nadaje się do podręcznika. Potrzebny schemat albo rezygnacja z ilustracji.
- [ ] Rozstrzygnięcie rozbieżności 1 (ep: zespolony czy niezespolony).

### 9. Postępowanie w sytuacjach awaryjnych (sl. 142–148)
- [ ] **Treść** do slajdów o usterkach drzwi, toalety i windy. Slajdy mają tylko zdjęcia oraz hasła (S, R, R+S; brak zasilania, opadnięcie windy, uszkodzenie prowadnic, łyżwy). Potrzebne procedury krok po kroku dla typów pojazdów KŚ.
- [ ] Opis zdjęć sterowników (który typ pojazdu, które elementy).
- [ ] Aktualizacja listy pojazdów w obecnym rozdziale (EN75, Elf 2, Newag AKŚ, 35WE, EN76/27WEb). Czy doszły nowe serie (np. 31WEbc)?

### 10. Próba hamulca (sl. 149–155)
- [ ] Rozstrzygnięcie rozbieżności 3.
- [ ] Potwierdzenie wartości do dopisania: 0,48 MPa na końcu pociągu, spadek w przewodzie zasilającym ≤ 0,07 MPa w 5 min, ciśnienie w cylindrach przy próbie ep 0,10–0,15 MPa.
- [ ] Zdjęcia manometrów (sl. 151–155) w pełnej rozdzielczości, z typem pojazdu.

### 11. Masa hamująca (sl. 156–161, 178–182)
- [ ] Rozstrzygnięcie rozbieżności 2.
- [ ] Zdjęcie pudła z rozbiciem masy hamującej na wózki („R MAX: 231 t (56+60+59+56)”, sl. 179) – typ pojazdu.
- [ ] Aktualne fragmenty **Dodatku 1 do SRJ/WRJ** (tablica 3) i **Dodatku I do Ir-1** (sl. 180–181). Trzeba sprawdzić, czy dotychczasowe skany są nadal aktualne.

### 12. Wypełnianie karty próby hamulca – nowy rozdział (sl. 162–177)
- [ ] **Pusty wzór karty** (załącznik nr 2 do K-6) w wysokiej rozdzielczości, obie strony.
- [ ] Wycinki karty z sl. 165–177 (`karta_wiersze_*.png`, `karta_str2_poczatek.png`) w pełnej rozdzielczości.
- [ ] Skan rozkładu jazdy pociągu 94709 (sl. 169) i zdjęcie tablicy mas 31WEbc (sl. 167–168).
- [ ] Przykład 2 (EN57KM-3002): uzupełnienie pól mas (8–13) i numerów członów (20–21). Na sl. 176 są puste („do uzupełnienia”).

### 13. Zabezpieczenie przed zbiegnięciem (sl. 183–185)
- [ ] Rozstrzygnięcie rozbieżności 7 (typy płozów).
- [ ] Zdjęcie płozu PL3 z opisem części (podeszwa, wargi, język, stopka, uchwyt) – sl. 184.

## Ilustracje przeniesione z prezentacji do `skryptkierownik-img/`
- `skrajnie-porownanie.jpg` (sl. 4) i `skrajnia-taboru-peron.jpg` (sl. 5) – trzeba potwierdzić autorstwo i prawo do wykorzystania.
- Blok 3: `wozek-widok-rozstrzelony.jpg`, `wozek-rama-wahacze.jpg`, `zestaw-kolowy-widok-rozbity.jpg`, `usprezynowanie-widok-rozbity.jpg` (sl. 51–55, rendery za zgodą producenta), `sprzeg-srubowy-model.jpg` (sl. 61), `ezt-wozki-klasyczne-schemat.jpg`, `ezt-wozki-jakobsa-schemat.jpg` (sl. 56, 58), `wozek-jakobsa-zdjecie.jpg` (sl. 59).
- `sprzeg-samoczynny-czolo.jpg`, `sprzeg-samoczynny-bok.jpg` – zdjęcia własne autora (27WEb-006f, 22WEd-003A), opisane numerami w LaTeX.
- `rozklad-przesylka-nadzwyczajna.png` (sl. 20) – wycinek rozkładu jazdy.
- `przesylka-nadzwyczajna-karta-r266.png` (sl. 25) – wzór oznaczeń.
- `rid-nalepki.png` (sl. 36) – piktogramy UN z Wikimedia Commons (domena publiczna).
- Nalepki manewrowe nr 13 i 15 są narysowane bezpośrednio w LaTeX (TikZ).
