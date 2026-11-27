---
name: git-push-bez-gh
description: Commit, push and prepare a pull request for this repository without the GitHub CLI (gh) and without SSH keys – pushes over HTTPS with Git Credential Manager and gives a compare link for the PR; on explicit request only, also rebuilds and compresses the handbook PDF (pdflatex + MiKTeX Ghostscript) and prepares a GitHub Release with the PDFs (PDFs are never committed, and never built during a plain commit/push). Use when the user asks to rebuild the PDF ("przebuduj PDF"), make a release ("wydanie", "release"), or when the user asks to commit, push ("wypchnij", "zatwierdź", "wyślij na GitHuba"), sync with GitHub, or open a PR, and gh is not installed or SSH fails ("Host key verification failed", "Permission denied (publickey)").
---

# Commit i push bez GitHub CLI

Na tym komputerze nie ma `gh`, a `origin` wskazuje na adres SSH (`git@github.com:...`), dla którego nie ma kluczy. Dlatego cała komunikacja z GitHubem idzie przez **HTTPS**, a logowanie obsługuje **Git Credential Manager** (`credential.helper = manager`). Przy pierwszym użyciu otwiera on okno logowania GitHuba – logowanie wykonuje użytkownik, nigdy Claude. Nie wpisuj tokenów ani haseł i nie proś o nie.

## 1. Rozpoznanie

Uruchom (Bash):

```sh
git status --short
git branch --show-current
git remote get-url origin
git log --oneline -5
```

- Z adresu `origin` wyznacz `OWNER/REPO` (np. `git@github.com:merkato/probable-journey.git` → `merkato/probable-journey`). Adres HTTPS: `https://github.com/OWNER/REPO.git`.
- Jeżeli bieżąca gałąź to `master` (gałąź domyślna), a użytkownik nie kazał commitować bezpośrednio na nią, najpierw utwórz gałąź roboczą: `git switch -c <krótka-nazwa>`.

## 2. Wybór plików

- Pokaż użytkownikowi listę zmian i dodawaj pliki **po nazwie** (`git add <ścieżki>`), nie `git add -A`.
- Nie dodawaj plików z sekretami (`.env`, `credentials*`, `.claude/settings.local.json`) ani plików tymczasowych LaTeX-a (`*.aux`, `*.log`, `*.toc` – są w `.gitignore`).
- Zmiany samego trybu pliku (diff `old mode / new mode`, np. `optpdf.sh`) zostaw poza commitem, chyba że użytkownik chce je zatwierdzić.
- **Wynikowych PDF-ów podręcznika (`skrypt-kierownik.pdf`, `skrypt-kierownik.compressed.pdf`) nigdy nie commituj** – są w `.gitignore` i publikuje się je jako GitHub Release (punkt 2b). Nie commituj też `skrypt-kierownik.toc`. `titlepage.pdf` to źródło okładki i zostaje w repozytorium.
- Inne duże pliki binarne (np. zdjęcia): GitHub odrzuca pliki > 100 MB i ostrzega powyżej 50 MB – sprawdź rozmiar przed dodaniem.

## 2a. Przebudowa PDF podręcznika (tylko na żądanie)

**PDF buduj wyłącznie wtedy, gdy użytkownik o to poprosi** (np. „przebuduj PDF”, „zrób wydanie”). Zwykły commit i push nigdy nie uruchamiają budowania PDF ani Release'u – nie proponuj ich też z własnej inicjatywy po zmianach w plikach `.tex`. Zbudowany PDF **nie trafia do commita**. Nie ma osobnego Ghostscripta (`gs`), a `optpdf.sh` w tym środowisku nie działa – użyj MiKTeX-a:

```sh
# pełny PDF – dwa przebiegi (spis treści, odsyłacze)
for i in 1 2; do pdflatex -shell-escape -interaction=nonstopmode -halt-on-error skrypt-kierownik.tex > /dev/null 2>&1 || echo "błąd w przebiegu $i"; done
grep -c '^!' skrypt-kierownik.log          # 0 = bez błędów

# wersja skompresowana – Ghostscript z MiKTeX, ustawienie /ebook
MGS="$(dirname "$(which pdflatex)")/mgs.exe"
MSYS_NO_PATHCONV=1 MSYS2_ARG_CONV_EXCL='*' "$MGS" -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 \
  -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH \
  -sOutputFile=skrypt-kierownik.compressed.pdf skrypt-kierownik.pdf
ls -l skrypt-kierownik*.pdf
```

- `MSYS_NO_PATHCONV=1` jest konieczne: bez niego Git Bash zamienia `/ebook` na ścieżkę Windows i Ghostscript odrzuca opcję.
- Budowanie trwa kilka minut – daj limit czasu ok. 600000 ms.
- Jeśli `pdflatex` zgłosi błąd, pokaż użytkownikowi linie zaczynające się od `!` z `skrypt-kierownik.log` i nie publikuj Release'u.
- Wersja skompresowana ma zwykle ok. 6–7 MB, pełny PDF ok. 60–65 MB (limit pliku w Release to 2 GB).

## 2b. Release z PDF-ami (tylko na żądanie)

Release robi się **tylko na wyraźne polecenie użytkownika** – nigdy automatycznie przy commicie, pushu ani scaleniu PR – to publikacja na GitHubie. Bez `gh` i bez tokenu Release tworzy użytkownik w przeglądarce; Claude przygotowuje wszystko do tego momentu.

1. Zbuduj i skompresuj PDF (punkt 2a) z tego commita, który ma być wydany – zwykle z `master` po scaleniu PR. Drzewo robocze ma być czyste w plikach `.tex` (`git status`).
2. Nazwa tagu z metryczki `additional/metadata.tex`: `\revision{1.3.01}` → tag `v1.3.01` (przy kolejnym wydaniu tej samej wersji dodaj sufiks, np. `v1.3.01-2`). Sprawdź, czy tag nie istnieje: `git ls-remote --tags https://github.com/OWNER/REPO.git`.
3. Utwórz tag z opisem i – po zgodzie użytkownika – wypchnij go przez HTTPS:

```sh
git tag -a v1.3.01 -m "Podręcznik kierownika pociągu – wydanie IV, wersja 1.3.01"
git push "https://github.com/OWNER/REPO.git" "refs/tags/v1.3.01"
```

4. Przygotuj notatki do wydania (po polsku: co zmieniono od poprzedniego wydania – na podstawie `git log <poprzedni-tag>..v1.3.01 --oneline`) i daj użytkownikowi link z wypełnionym tagiem i tytułem:
   `https://github.com/OWNER/REPO/releases/new?tag=v1.3.01&title=Wydanie%20IV%2C%20wersja%201.3.01`
5. Użytkownik wkleja notatki, przeciąga do strony oba pliki – podaj ich pełne ścieżki (`skrypt-kierownik.pdf`, `skrypt-kierownik.compressed.pdf`) – i klika „Publish release”.

## 3. Commit

- Opis po polsku, w stylu dotychczasowej historii (krótki tytuł, ewentualnie lista zmian w treści).
- Dołącz wiersz atrybucji wskazany w bieżącej konwersacji (system-reminder), np. `Co-Authored-By: ...`.
- Wieloliniowy opis przekazuj przez heredoc, żeby nie zgubić polskich znaków i nowych linii:

```sh
git commit -F - <<'EOF'
Tytuł zmiany

- szczegół 1
- szczegół 2

Co-Authored-By: ...
EOF
```

- Nie pomijaj hooków (`--no-verify`) i nie poprawiaj (`--amend`) commitów już wypchniętych.

## 4. Push przez HTTPS

Najpierw sprawdź, czy SSH w ogóle działa – jeśli nie, od razu przejdź do HTTPS:

```sh
ssh -o BatchMode=yes -o ConnectTimeout=10 -T git@github.com 2>&1 | head -2
```

(„Host key verification failed”, „Permission denied (publickey)” albo brak odpowiedzi = SSH nie działa.)

Wypchnij bieżącą gałąź na jawny adres HTTPS. Repozytorium ma duże PDF-y, więc daj długi limit czasu (np. 600000 ms) albo uruchom w tle:

```sh
BR=$(git branch --show-current)
git push "https://github.com/OWNER/REPO.git" "HEAD:refs/heads/$BR"
```

- Jeżeli Git Credential Manager otworzy okno logowania, powiedz użytkownikowi, że ma się zalogować w tym oknie, i poczekaj na wynik.
- Po udanym pushu zaktualizuj lokalną kopię gałęzi zdalnej, żeby `git status` pokazywał właściwy stan:

```sh
git fetch "https://github.com/OWNER/REPO.git" "$BR:refs/remotes/origin/$BR"
```

- **Nigdy** nie używaj `--force` ani `--force-with-lease` bez wyraźnego polecenia użytkownika. Na `master` wypychaj tylko wtedy, gdy użytkownik o to prosi.
- Odrzucenie „non-fast-forward”: najpierw pobierz zmiany (punkt 6), scal, dopiero potem wypchnij ponownie.

**Trwała zmiana adresu `origin`** na HTTPS (`git remote set-url origin https://github.com/OWNER/REPO.git`) upraszcza pracę – wtedy działa zwykłe `git push -u origin <gałąź>` i `git fetch`. To zmiana konfiguracji repozytorium, więc **zaproponuj ją i wykonaj tylko po zgodzie użytkownika**.

## 5. Pull request bez gh

Nie twórz PR przez API (wymagałoby tokenu). Zamiast tego:

1. Podaj użytkownikowi link porównania, w którym GitHub od razu proponuje utworzenie PR:
   `https://github.com/OWNER/REPO/compare/master...<gałąź>?expand=1`
2. Przygotuj tytuł i opis PR do wklejenia (po polsku: co się zmieniło, co sprawdzono, co zostało do zrobienia), zakończony wierszem atrybucji dla PR wskazanym w konwersacji.
3. Jeśli użytkownik chce, otwórz link w przeglądarce – ale samo kliknięcie „Create pull request” zostaw użytkownikowi albo wykonaj dopiero po jego wyraźnej zgodzie.

## 6. Pobieranie zmian z GitHuba

```sh
git fetch "https://github.com/OWNER/REPO.git" "master:refs/remotes/origin/master"
git fetch "https://github.com/OWNER/REPO.git" "<gałąź>:refs/remotes/origin/<gałąź>"
git log --oneline HEAD..origin/master      # co jest nowego na GitHubie
```

Scalaj (`git merge origin/master`) dopiero po pokazaniu użytkownikowi, co przyjdzie. Konflikty rozwiązuj świadomie i opisz je w komunikacie scalenia.

## 7. Raport

Na koniec napisz krótko: hash i tytuł commita, na jaką gałąź wypchnięto, link porównania lub PR oraz czego nie zrobiono (np. „PR nie został utworzony – link do utworzenia poniżej”).
