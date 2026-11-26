# Aktualizacja części „Tabor” na podstawie prezentacji „Tabor – konduktor 2026 (robocza 3)”

Źródło: prezentacja, 185 slajdów. Zakres prac: wyłącznie `tabor.tex`.

W wersji roboczej podręcznika braki są oznaczone niebieskimi ramkami „Do przygotowania” (makro `\material{}`).
Ramki wyłącza się przed drukiem: w `skrypt-kierownik.tex` trzeba zmienić `\roboczatrue` na `\roboczafalse`.

## Plan bloków i status

| # | Blok tematyczny (slajdy) | Rozdział w podręczniku | Status |
|---|---|---|---|
| 1 | Przesyłki nadzwyczajne (2–26) | 1. Ogólne zasady przewozu przesyłek nadzwyczajnych | **zrobione** |
| 2 | Przesyłki niebezpieczne (27–43) | 2. Ogólne zasady przewozu przesyłek niebezpiecznych | **zrobione** |
| 3 | Pojazdy kolejowe i budowa taboru (44–63) | 3. Budowa taboru pasażerskiego | do zrobienia |
| 4 | Warunki techniczne taboru (64–73) | 3.x Warunki techniczne… → osobny rozdział | do zrobienia |
| 5 | Oznakowanie i symbole na taborze (74–91) | nowy rozdział (dziś jest to podrozdział + tabele w „Rodzajach hamulców”) | do zrobienia |
| 6 | Wyłączanie taboru z eksploatacji (92–98) | 3.x Wyłączanie… → osobny rozdział | do zrobienia |
| 7 | Oględziny techniczne i zestawianie pociągów (99–129) | Oględziny techniczne pociągu pasażerskiego | do zrobienia |
| 8 | Rodzaje hamulców (130–141) | Rodzaje hamulców | do zrobienia |
| 9 | Postępowanie w sytuacjach awaryjnych (142–148) | Obsługa urządzeń wagonowych | do zrobienia |
| 10 | Próba hamulca (149–155) | Wykonywanie szczegółowej i uproszczonej próby hamulca | do zrobienia |
| 11 | Masa hamująca (156–161, 178–182) | Obliczanie rzeczywistej oraz wymaganej masy hamującej | do zrobienia |
| 12 | Wypełnianie karty próby hamulca (162–177) | nowy rozdział | do zrobienia |
| – | (brak w prezentacji) | Sprzęganie i rozprzęganie taboru | pozostaje bez zmian |
| 13 | Zabezpieczenie taboru przed zbiegnięciem (183–185) | Zabezpieczenie taboru przed zbiegnięciem | do zrobienia |

## Rozbieżności i wątpliwości merytoryczne do rozstrzygnięcia

1. **Hamulec ep**: podręcznik nazywa go „niezespolonym”, a prezentacja (sl. 136) „zespolonym, ale niesamoczynnym”. Prezentacja wydaje się poprawna, ale trzeba to potwierdzić.
2. **Masa ogólna pociągu** (sl. 156 i ramka w rozdziale o masie hamującej): prezentacja podaje warunki „120 km/h lub Mos < 200 t lub pociąg międzynarodowy”, a podręcznik „> 120 km/h lub < 200 t lub pojazd z napędem na końcu (wagon sterowniczy)”. Trzeba ustalić, czy chodzi o 120 km/h czy > 120 km/h, i która lista warunków jest pełna (K-6 § 11 / Ir-1).
3. **Próba uproszczona** (sl. 150): w prezentacji jest „po użyciu hamulca bezpieczeństwa”, czego nie ma w wyliczeniu w podręczniku. Do sprawdzenia w K-6 § 10.
4. **Nalepy i płaskie miejsca** (sl. 70): prezentacja podaje 60 mm (Ir-1) oraz 35 mm (K-3) i jazdę do stacji najwyżej 20 km/h. Podręcznik podaje tylko 60 mm. Trzeba ustalić, która wartość obowiązuje w KŚ.
5. **Jazda po zdarzeniu z prędkością 30 km/h**: podręcznik stosuje ją do pojazdów trakcyjnych po zdarzeniach bez wykolejenia, a według prezentacji (sl. 97) w Ir-1 dotyczy ona tylko dowiezienia wagonów wykolejonych. Potrzebny przepis wewnętrzny Spółki dla EZT.
6. **Wyłączanie z eksploatacji**: podręcznik opiera się na „świadectwie sprawności technicznej” i pojazdach trakcyjnych. Prezentacja przechodzi na ECM i „przywrócenie do eksploatacji” (ustawa art. 23j i 24, rozp. UE 2019/779, K-11 z 06.2022). Rozdział trzeba przepisać. Wcześniej trzeba potwierdzić aktualną nazwę dokumentu stosowaną w KŚ.
7. **Płozy hamulcowe**: w podręczniku PL2 jest „do szyn 8, 15, 40, S60”, w prezentacji „8, 15, S60, R65”. Podręcznik ma też płóz niebieski 64 mm, którego nie ma w prezentacji. Według prezentacji w KŚ stosuje się wyłącznie PL3, więc trzeba zdecydować, czy pozostałe typy zostają.
8. **Przykład rozkładu jazdy** (sl. 20): notatka mówi o pociągu towarowym, a skan dotyczy pociągu pasażerskiego MPM 23110 „Kasztelan” (SD85). W podręczniku opisałem go neutralnie. Warto potwierdzić, co jest przesyłką (czy SD85 z przekroczoną skrajnią).
9. **Grafiki skrajni** (sl. 6 i 7) zawierają błędy: „wyoszenie” zamiast „wychylenie”, odwrócone wychylenie wewnętrzne i zewnętrzne, „tor toru”, puste opisy „mm”. Nie wstawiłem ich; w rozdziale 1 są ramki „Do przygotowania”.
10. **Ikony na slajdach**: radiotelefon oznacza kierownika pociągu, chorągiewka konduktora. Do decyzji: czy w podręczniku oznaczać treści wspólne dla konduktorów (np. znakiem na marginesie)?

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

### 3. Budowa taboru pasażerskiego (sl. 44–63)
- [ ] **Pisemna zgoda producenta** na rendery wózka (sl. 51–55). W notatkach jest „za zgodą producenta”; potrzebna kopia zgody lub jej zakres (druk, PDF publiczny).
- [ ] **Zgoda Dellner** na ilustrację sprzęgu typu 10 (sl. 62) albo własny rysunek lub zdjęcie sprzęgu Scharfenberga w KŚ.
- [ ] Pliki źródłowe w pełnej rozdzielczości: schemat klasyfikacji pojazdów kolejowych (sl. 44), „Budowa typowego wagonu pasażerskiego – widok rozstrzelony” (sl. 49), sprzęg śrubowy (sl. 61), pantograf z opisem (sl. 63).
- [ ] Zdjęcia: pojazd pomocniczy, pojazd szynowo-drogowy, EZT na wózkach klasycznych i na wózkach Jakobsa (sl. 47–48, 56–59). Trzeba ustalić, które są własne.
- [ ] Decyzja, czy zostawiamy obecny, obszerny opis rodzajów sprężyn i prowadzenia zestawów (z podręcznika), czy go skracamy do poziomu prezentacji.

### 4. Warunki techniczne taboru (sl. 64–73)
- [ ] Zdjęcia: zamek skrzydła drzwi, napęd z ryglem, sterownik drzwi nad wejściem (sl. 67–69), z informacją o typie pojazdu.
- [ ] Rysunek **przestrzeni berneńskiej** (sl. 65) w czytelnej rozdzielczości.
- [ ] Zdjęcia uszkodzeń zestawu kołowego: nalepy, rowek kontrolny, znaki kontrolne obręczy (sl. 70–73). Część jest w `rr/` i `photo-src/` – trzeba potwierdzić, które wykorzystać.
- [ ] Wzory nalepek **R1** i **M** (skan lub rysunek).
- [ ] Rozstrzygnięcie punktu 4 z listy rozbieżności (60 mm czy 35 mm).

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
- `rozklad-przesylka-nadzwyczajna.png` (sl. 20) – wycinek rozkładu jazdy.
- `przesylka-nadzwyczajna-karta-r266.png` (sl. 25) – wzór oznaczeń.
- `rid-nalepki.png` (sl. 36) – piktogramy UN z Wikimedia Commons (domena publiczna).
- Nalepki manewrowe nr 13 i 15 są narysowane bezpośrednio w LaTeX (TikZ).
