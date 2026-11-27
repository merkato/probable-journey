---
name: git-push-bez-gh
description: Commit, push and prepare a pull request for this repository without the GitHub CLI (gh) and without SSH keys – pushes over HTTPS with Git Credential Manager and gives a compare link for the PR. Use when the user asks to commit, push ("wypchnij", "zatwierdź", "wyślij na GitHuba"), sync with GitHub, or open a PR, and gh is not installed or SSH fails ("Host key verification failed", "Permission denied (publickey)").
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
- Duże pliki binarne: GitHub odrzuca pliki > 100 MB i ostrzega powyżej 50 MB. Sprawdź rozmiar PDF-ów przed dodaniem (`ls -l *.pdf`). Plik powyżej 100 MB nie przejdzie – zgłoś to użytkownikowi.

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
