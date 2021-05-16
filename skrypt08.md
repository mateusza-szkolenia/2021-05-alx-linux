# Przekazywanie wielu parametrów

```
[kurs@centos55 2021-05-alx-linux]$ ./skrypt08.sh Ala ma kota
Liczba parametrów: [3]
Zerowy parametr: [./skrypt08.sh] nazwa programu/skryptu
Pierwszy parametr: [Ala]
Drugi parametr: [ma]
Trzeci parametr: [kota]
Czwarty parametr: []
```

```
[kurs@centos55 2021-05-alx-linux]$ ./skrypt08.sh "Ala ma kota"
Liczba parametrów: [1]
Zerowy parametr: [./skrypt08.sh] nazwa programu/skryptu
Pierwszy parametr: [Ala ma kota]
Drugi parametr: []
Trzeci parametr: []
Czwarty parametr: []
```

```
[kurs@centos55 2021-05-alx-linux]$ ./skrypt08.sh "Ala ma kota" "Ola ma psa" "Ela ma mysz"
Liczba parametrów: [3]
Zerowy parametr: [./skrypt08.sh] nazwa programu/skryptu
Pierwszy parametr: [Ala ma kota]
Drugi parametr: [Ola ma psa]
Trzeci parametr: [Ela ma mysz]
Czwarty parametr: []
```

```
[kurs@centos55 2021-05-alx-linux]$ ./skrypt08.sh 'Ala ma kota'
Liczba parametrów: [1]
Zerowy parametr: [./skrypt08.sh] nazwa programu/skryptu
Pierwszy parametr: [Ala ma kota]
Drugi parametr: []
Trzeci parametr: []
Czwarty parametr: []
```

```
[kurs@centos55 2021-05-alx-linux]$ ./skrypt08.sh 'Ala ma kota' "Ola ma psa"
Liczba parametrów: [2]
Zerowy parametr: [./skrypt08.sh] nazwa programu/skryptu
Pierwszy parametr: [Ala ma kota]
Drugi parametr: [Ola ma psa]
Trzeci parametr: []
Czwarty parametr: []
```

```
[kurs@centos55 2021-05-alx-linux]$ ./skrypt08.sh 'Ala ma kota'"Ola ma psa"
Liczba parametrów: [1]
Zerowy parametr: [./skrypt08.sh] nazwa programu/skryptu
Pierwszy parametr: [Ala ma kotaOla ma psa]
Drugi parametr: []
Trzeci parametr: []
Czwarty parametr: []
```

```
[kurs@centos55 2021-05-alx-linux]$ ./skrypt08.sh "ala"ma'ko'ta
Liczba parametrów: [1]
Zerowy parametr: [./skrypt08.sh] nazwa programu/skryptu
Pierwszy parametr: [alamakota]
Drugi parametr: []
Trzeci parametr: []
Czwarty parametr: []
```

```
[kurs@centos55 2021-05-alx-linux]$ ./skrypt08.sh "ala""ma""kota"
Liczba parametrów: [1]
Zerowy parametr: [./skrypt08.sh] nazwa programu/skryptu
Pierwszy parametr: [alamakota]
Drugi parametr: []
Trzeci parametr: []
Czwarty parametr: []
```

## Podstawianie nazw plików

### Znak wieloznaczny w zwykłym `ls -l`

```
[kurs@centos55 2021-05-alx-linux]$ ls -l zadanie0*
-rw-rw-r--. 1 kurs kurs 107 05-16 10:53 zadanie01.md
-rwxrwxr-x. 1 kurs kurs  91 05-16 10:21 zadanie01.sh
-rw-rw-r--. 1 kurs kurs 155 05-16 10:42 zadanie02.md
-rwxrwxr-x. 1 kurs kurs 134 05-16 11:20 zadanie02.sh
-rw-rw-r--. 1 kurs kurs 126 05-16 11:31 zadanie03.md
-rwxrwxr-x. 1 kurs kurs  62 05-16 11:40 zadanie03.sh
```

### Znak wieloznaczny w naszym skrypcie

```
[kurs@centos55 2021-05-alx-linux]$ ./skrypt08.sh zadanie0*
Liczba parametrów: [6]
Zerowy parametr: [./skrypt08.sh] nazwa programu/skryptu
Pierwszy parametr: [zadanie01.md]
Drugi parametr: [zadanie01.sh]
Trzeci parametr: [zadanie02.md]
Czwarty parametr: [zadanie02.sh]
```

Widzimy, że do skryptu zosały przekazane jako parametry konkretne nazwy plików (pasujące do wzorca)

### Znak wieloznaczny niepasujący do żadnego pliku (np. `jpg`)

```
[kurs@centos55 2021-05-alx-linux]$ ./skrypt08.sh *.jpg
Liczba parametrów: [1]
Zerowy parametr: [./skrypt08.sh] nazwa programu/skryptu
Pierwszy parametr: [*.jpg]
Drugi parametr: []
Trzeci parametr: []
Czwarty parametr: []
```

Symbol wieloznaczny niepasujący do żadnego pliku zostanie przekazany dosłownie.



