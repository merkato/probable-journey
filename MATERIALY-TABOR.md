# Aktualizacja części „Tabor” na podstawie prezentacji „Tabor – konduktor 2026 (robocza 3)”

Źródło: prezentacja, 185 slajdów. Zakres prac: wyłącznie `tabor.tex`.

Braki (ilustracje, źródła, materiały) są prowadzone **wyłącznie w tym pliku** – w treści podręcznika nie ma już ramek „Do przygotowania”. Makro `\material{}` i przełącznik `\robocza…` w `skrypt-kierownik.tex` pozostały, ale nie są używane.

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
| 11 | Masa hamująca (156–161, 178–182) | Obliczanie rzeczywistej oraz wymaganej masy hamującej | **zrobione** |
| 12 | Wypełnianie karty próby hamulca (162–177) | Wypełnianie karty próby hamulca (nowy rozdział, za masą hamującą) | **zrobione** |
| – | (brak w prezentacji) | Sprzęganie i rozprzęganie taboru | pozostaje bez zmian |
| 13 | Zabezpieczenie taboru przed zbiegnięciem (183–185) | Zabezpieczenie taboru przed zbiegnięciem | **zrobione** |

## Rozbieżności i wątpliwości merytoryczne do rozstrzygnięcia

1. ~~**Hamulec ep**~~ – **rozstrzygnięte**: zespolony, ale niesamoczynny (poprawione w rozdziale „Rodzaje hamulców”).
2. ~~**Masa ogólna pociągu**~~ – **rozstrzygnięte**: poprawna jest wersja w podręczniku (> 120 km/h, < 200 t, wagon sterowniczy); w prezentacji jest uproszczenie. Bez zmian.
3. ~~**Próba uproszczona**~~ – **rozstrzygnięte**: K-5 § 11 ust. 7 nie wymienia przypadku „po użyciu hamulca bezpieczeństwa” – bez zmian. **Blok 10 – rozbieżności z K-5 § 11–14 poprawione**: 12 h → 24 h, usunięte 2 przypadki próby uproszczonej spoza K-5 (sieć stała, przewód zasilający „R+Mg”) oraz „stacje wyznaczone w rozkładzie”; dopisane: ważność próby szczegółowej 24 h, kto wykonuje próbę szczegółową (rewident lub kierownik pociągu przy współudziale maszynisty), wartości ciśnień i szczelności (0,48 MPa; 0,05 MPa/5 min; 0,07 MPa/5 min; ep 0,10–0,15 MPa). Pełna przebudowa bloku 10 wg prezentacji – nadal do zrobienia.
4. ~~**Nalepy i płaskie miejsca**~~ – **rozstrzygnięte**: obie wartości są poprawne – 60 mm wg Ir-1 oraz 35 mm wg K-3 (instrukcja wewnętrzna KŚ). Jazda do najbliższej stacji ≤ 20 km/h wynika z Ir-1 § 76 ust. 6 (nie z K-3) – poprawione w rozdziale o warunkach technicznych.
5. ~~**Jazda po zdarzeniu z prędkością 30 km/h**~~ – **rozstrzygnięte**: podstawą jest K-1 § 18 ust. 2 (awaria bez wykolejenia – do najbliższej stacji ≤ 30 km/h, decyzja rewidenta) oraz K-5 § 23 ust. 2 (po wykolejeniu – do punktu naprawy ≤ 30 km/h).
6. ~~**Wyłączanie z eksploatacji**~~ – **rozstrzygnięte**: rozdział przepisany wg K-1 (wrzesień 2025) i K-5 (maj 2025): ECM, wyłączenie z użytkowania → dopuszczenie do użytkowania (zał. 3 cz. II) → przywrócenie do eksploatacji (zał. 3 cz. III). „Świadectwo sprawności technicznej” usunięte.
7. ~~**Płozy hamulcowe**~~ – **rozstrzygnięte**: na taborze KŚ stosuje się płóz uniwersalny PL3; pozostałe typy opisane krótko „dla informacji”. Drobna niejasność: lista szyn dla PL2 (podręcznik „8, 15, 40, S60”, prezentacja „8, 15, S60, R65”) – zostawiona wersja z podręcznika.
8. ~~**Przykład rozkładu jazdy**~~ – **rozstrzygnięte**: przesyłką nadzwyczajną jest pojazd przekraczający skrajnię taboru (poprawiony podpis rysunku).
9. **Grafiki skrajni** (sl. 6 i 7) zawierają błędy: „wyoszenie” zamiast „wychylenie”, „tor toru”, puste opisy „mm” (sl. 7). **Sl. 6 – częściowo rozstrzygnięte**: zamiast grafiki jest własny rysunek TikZ (rys. „Wychylenia wagonu na łuku”). Uwaga: grafika na sl. 6 przypisuje wychylenie wewnętrzne do środka wagonu, a zewnętrzne do końców – **to jest poprawne** (pudło między czopami skrętu jest cięciwą łuku). Błędny był tekst slajdu i podręcznika („środek na zewnątrz, końce do wewnątrz”) – poprawiony w podręczniku; tekst na sl. 6 warto poprawić. Sl. 7 (skrajnia ładunkowa z wymiarami) – zastąpiona własnym rysunkiem TikZ wg Ir-10, zał. 2 i 3.
   Ramki „Do przygotowania” usunięto z treści podręcznika (27.11.2026) – lista braków jest tylko w tym pliku.
10. ~~**Ikony na slajdach**~~ – **nie dotyczy**: podręcznik jest wyłącznie dla kierownika pociągu.

## Materiały do przygotowania – według rozdziałów

### 1. Przesyłki nadzwyczajne (zrobione – zostały braki)
- [x] Poprawiony rysunek **skrajni dynamicznej** (widok z góry, wagon w łuku) – własny rysunek TikZ w `tabor.tex`.
- [x] Rysunek **skrajni ładunkowej z wymiarami** zamiast sl. 7 z pustymi „mm” – własny rysunek TikZ (krajowa PKP PLK i międzynarodowa) wg Ir-10 (wyd. 12.2025), zał. nr 2 i 3. UIC 505-1 dotyczy skrajni taboru (profil kinematyczny), nie ładunkowej – nie była źródłem wymiarów.
- [ ] **Zdjęcia przesyłek nadzwyczajnych**, własne albo z pisemną zgodą autorów: ładunek ponadgabarytowy, wagon z zagłębioną podłogą, ławy pokrętne, szyny > 36 m, pojazd na własnych kołach. Zdjęcia na sl. 9–17 pochodzą z mediów (Energa, V. Vyskočil, Elkol i in.).
- [ ] **Opis oznaczeń** na wzorze R266 (sl. 25) i źródło wzoru (Ir-10, który załącznik).

### 2. Przesyłki niebezpieczne (zrobione – zostały braki)
- [x] Źródło tabeli **barw pasów na cysternach 1520 mm** – Ir-16 (od 14.12.2025) § 9 ust. 5 pkt 2 (za SMGS zał. 2, pkt 5.3.5.1), dopisane w podpisie tabeli. Uwaga: Ir-16 podaje tylko pasy 30 cm (amoniak, chlor, gazy 2F/3F/4F); wiersze z pasami 50 cm zostają w podręczniku – autor poda ich źródło (do dopisania w podpisie tabeli).
- [ ] **Procedura dla drużyny pociągu pasażerskiego** przy zdarzeniu z TN w pobliżu (powiadomienie, ewakuacja, kierunek wiatru). Na sl. 43 jest tylko opis toru odstawczego.
- [ ] Opcjonalnie: własne zdjęcie wagonu z tablicą pomarańczową i nalepkami (zdjęcie na sl. 28 pochodzi z kursu ADR).

### 3. Budowa taboru pasażerskiego (zrobione – zostały braki)
- [ ] **Kopia zgody producenta** na rendery wózka (sl. 51–55) – zakres (druk, PDF) i nazwa producenta do podpisu rysunków.
- [x] **Sprzęg samoczynny** – zastąpiony własną ilustracją z opisem elementów (zdjęcia 27WEb i 22WEd), bez materiałów Dellner.
- [ ] **Rysunek budowy wagonu** (sl. 49) bez zniekształconego logo i barw PKP Intercity – wersja KŚ lub neutralna.
- [ ] Zdjęcia **pojazdu pomocniczego** i **szynowo-drogowego** (sl. 47–48 to zdjęcia producentów, m.in. Elkol).
- [ ] Potwierdzenie autorstwa: schematy EZT na wózkach klasycznych / Jakobsa (sl. 56, 58), zdjęcie wózka Jakobsa (sl. 59), model sprzęgu śrubowego (sl. 61).
- [x] Schemat pantografu nożycowego i połówkowego z opisem części – własny rysunek TikZ (rys. „Budowa pantografu nożycowego i połówkowego”). Wikipedia (Odbierak prądu) ma tylko zdjęcia (CC BY-SA), bez schematów – posłużyła jako odniesienie do układu ramion.
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
- [x] Norma **PN-EN 15877-2:2013** – KŚ mają licencję, także do celów szkoleniowych. W podręczniku cytować **tylko numer normy** (bez przytaczania jej treści i rysunków).

### 6. Wyłączanie taboru z eksploatacji (sl. 92–98)
- [ ] Schemat „Wyłączenie i powrót do eksploatacji” (`13_wylaczanie.png`) w pełnej rozdzielczości.
- [ ] Aktualna nazwa i wzór dokumentu dopuszczenia stosowanego w KŚ (świadectwo czy przywrócenie do eksploatacji) – patrz rozbieżność 6.
- [ ] Wzór formularzy książki pokładowej wagonu (biały, żółty, różowy) oraz druku **Mw-581**.
- [ ] Przepis wewnętrzny KŚ o dalszej jeździe EZT po zdarzeniu bez wykolejenia – rozbieżność 5.
- [ ] Wzory nalepek „Drzwi nieczynne” i „WC nieczynne”.

### 7. Oględziny techniczne i zestawianie pociągów (sl. 99–129)
- [x] Nowa wersja tekstu od autora przeniesiona (warunki wykonywania oględzin wg Ir-1 § 14, podział na układy, 4 zdjęcia usterek).
- [x] Zdjęcia `ogledziny-znaki-kontrolne.jpg` i `ogledziny-uszkodzenie-lozyska.jpg` – te same co w wersji autora; autor: **Ryszard Grzecznik** (dopisany w `copyright.tex`, razem z dwoma wcześniejszymi). Pozostałe zdjęcia w rozdziale o oględzinach pochodzą od zespołu instruktorskiego.
- [ ] Teksty z diagramów na sl. 100–103 – nie da się ich odczytać automatycznie, a w prezentacji są skrótowe. Potrzebne rozwinięcie: częstotliwość oględzin (raz na 24 h?), kto je wykonuje, metody (wzrok, słuch, temperatura, zapach).
- [ ] Zdjęcia usterek (sl. 104–127): opis, co dokładnie widać na każdym zdjęciu (np. „nalep 45 mm na kole 1. osi”), (autorstwo potwierdzone – zespół instruktorski, poza zdjęciami R. Grzecznika).
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
- [x] Wartości potwierdzone przez autora i już w tekście: 0,48 MPa na końcu pociągu, spadek w przewodzie zasilającym ≤ 0,07 MPa w 5 min, ciśnienie w cylindrach przy próbie ep 0,10–0,15 MPa.
- [ ] Zdjęcia manometrów (sl. 151–155) w pełnej rozdzielczości, z typem pojazdu.

### 11. Masa hamująca (sl. 156–161, 178–182)
- [x] Rozdział zaktualizowany wg Ir-1 (zm. 19, od 01.07.2026) § 19–21, K-6 (03.2026) § 11 i zał. 5, K-2 (05.2025) § 13: źródła w przypisach (zamiast „K-2 rozdz. VIII § 28”), tablice A–D (400/700/1000/1300 m, S/W, co 1‰), nowy przykład (tablica A, 15‰, Pr 84 → 55 km/h) i własna tabela-wycinek zamiast skanu starej tablicy, kto liczy (KP), masa brutto, ładowny/próżny, ED → R, kolejność sposobów przy wyłączonym hamulcu, wspólne wózki, zezwolenie dyspozytora i rozkaz pisemny (Ir-1 § 21 ust. 10–11). Do ramki o masie ogólnej dopisany pociąg międzynarodowy (Ir-1 § 19 ust. 1 pkt 2).
- [x] **Zasada „hamulec wyłączony w co najmniej dwóch wagonach – pociąg nie może być wyprawiony”** – zostaje; według autora ma źródło (inne niż Ir-1, K-2, K-5, K-6). Warto dopisać przypis, gdy źródło zostanie wskazane.
- [x] **Droga hamowania** – dla przykładu przyjęto 400 m (decyzja autora). Skan tablicy 3 (z 500 m) zastąpiony własnym odwzorowaniem: linia 194, 400/400 m, pochylenia 10,7/14,8‰.
- [x] Zdjęcie pudła z rozbiciem masy hamującej na wózki – to **21WEag** (poprawiony podpis; wcześniej błędnie 34WEa).
- [x] Nowy przykład obliczeniowy (21WEag, linia 194, kierunek parzysty, V = 75 km/h, Pw = 122%, Mo = 150 t – przykładowo): Pr = 154; po wyłączeniu wózka 60 t Mhr = 171 t, Pr = 114 → tablica A, 15‰, S → 109 → **70 km/h**; Mhw = 183 t. Tabela-wycinek tablicy A (14–16‰, 50–80 km/h) i rysunek wpisów w karcie: poz. 10 „183 (171)”, poz. 12 „122 (109)”, strona 2 – „Prędkość maksymalna zmniejszona do 70 km/h”. Stary skan karty (`karta-proby-wylaczony-hamulec.jpg`) nieużywany.
- [ ] Do potwierdzenia: w nawiasie poz. 12 wpisujemy procent wymagany dla zmniejszonej prędkości (109), a nie procent rzeczywisty (114) – tak przyjęto zgodnie z dotychczasowym opisem w podręczniku. Masa ogólna 150 t w przykładzie jest umowna.

### 12. Wypełnianie karty próby hamulca – nowy rozdział (sl. 162–177)
- [x] Nowy rozdział wg K-6 (03.2026) § 10 i zał. 2: zasady ogólne, tabela „kto wypełnia którą pozycję”, symbole strony 2 (], 5, O, N), podpisy. Przykład 94709 / 31WEbc-018 z własnymi odwzorowaniami (nagłówek rozkładu, tabele z pudła, karta str. 1 kol. 1 i fragment str. 2) – zamiast wycinków i skanów ze slajdów, więc pusty wzór karty i skany nie są już potrzebne.
- [x] Przykład 2 (EN57KM-3002) – brak danych mas; różnice (hamulec klockowy → próbę prowadzi KP, wykreślenie poz. 16, „O” w członach rozrządczych) opisane w ramce „Na co zwrócić uwagę”, bez osobnej karty.
- [x] `obowiazki.tex`: poprawiony symbol wyłączonego hamulca „X” → „5” (K-6 § 10 ust. 16 pkt 2) i odsyłacz do nowego rozdziału.
- [ ] Do potwierdzenia: na sl. 164 przykład 94709 ma rodzaj próby „U”, ale wzór karty ma w kolumnie 1 nadrukowane „S” (K-6 § 10 ust. 12) i dalsze slajdy opisują poz. 14–15 „po próbie szczegółowej” – w podręczniku przyjęto **S**, prowadzi KP przy współudziale maszynisty.

### 13. Zabezpieczenie przed zbiegnięciem (sl. 183–185)
- [x] Rozdział przepisany: hamulec postojowy wg K-2 (§ 17, 20, 21, 23, 26 ust. 3), płozy – budowa, ramka „PL3 – jedyny stosowany w KŚ, uniwersalny do wszystkich rodzajów szyn”, zakazy wykładania; usunięte opisy innych typów płozów (PL1, PL2, niebieski 64 mm). Własny schemat TikZ płozu pod kołem z opisem części (zamiast grafiki ze sl. 184 w stylu AI).
- [ ] Opcjonalnie: zdjęcie płozu PL3 z bliska (podeszwa, wargi, język, stopka, uchwyt).

## Ilustracje przeniesione z prezentacji do `skryptkierownik-img/`
- `skrajnie-porownanie.jpg` (sl. 4) i `skrajnia-taboru-peron.jpg` (sl. 5) – trzeba potwierdzić autorstwo i prawo do wykorzystania.
- Blok 3: `wozek-widok-rozstrzelony.jpg`, `wozek-rama-wahacze.jpg`, `zestaw-kolowy-widok-rozbity.jpg`, `usprezynowanie-widok-rozbity.jpg` (sl. 51–55, rendery za zgodą producenta), `sprzeg-srubowy-model.jpg` (sl. 61), `ezt-wozki-klasyczne-schemat.jpg`, `ezt-wozki-jakobsa-schemat.jpg` (sl. 56, 58), `wozek-jakobsa-zdjecie.jpg` (sl. 59).
- `sprzeg-samoczynny-czolo.jpg`, `sprzeg-samoczynny-bok.jpg` – zdjęcia własne autora (27WEb-006f, 22WEd-003A), opisane numerami w LaTeX.
- `rozklad-przesylka-nadzwyczajna.png` (sl. 20) – wycinek rozkładu jazdy.
- `przesylka-nadzwyczajna-karta-r266.png` (sl. 25) – wzór oznaczeń.
- `rid-nalepki.png` (sl. 36) – piktogramy UN z Wikimedia Commons (domena publiczna).
- Nalepki manewrowe nr 13 i 15 są narysowane bezpośrednio w LaTeX (TikZ).
