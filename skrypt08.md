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

## Symbole generujące

```
[kurs@centos55 2021-05-alx-linux]$ ./skrypt08.sh raport-{wiosna,lato,jesien,zima}.txt
Liczba parametrów: [4]
Zerowy parametr: [./skrypt08.sh] nazwa programu/skryptu
Pierwszy parametr: [raport-wiosna.txt]
Drugi parametr: [raport-lato.txt]
Trzeci parametr: [raport-jesien.txt]
Czwarty parametr: [raport-zima.txt]
```

```
[kurs@centos55 2021-05-alx-linux]$ echo raport-{wiosna,lato,jesien,zima}.txt
raport-wiosna.txt raport-lato.txt raport-jesien.txt raport-zima.txt
```

### Zakresy liczbowe

```
[kurs@centos55 2021-05-alx-linux]$ echo raport-{2000..2012}.txt
raport-2000.txt raport-2001.txt raport-2002.txt raport-2003.txt
raport-2004.txt raport-2005.txt raport-2006.txt raport-2007.txt
raport-2008.txt raport-2009.txt raport-2010.txt raport-2011.txt
raport-2012.txt
```

```
[kurs@centos55 2021-05-alx-linux]$ echo raport-{1..15}.txt
raport-1.txt raport-2.txt raport-3.txt raport-4.txt
raport-5.txt raport-6.txt raport-7.txt raport-8.txt
raport-9.txt raport-10.txt raport-11.txt raport-12.txt
raport-13.txt raport-14.txt raport-15.txt
```

```
[kurs@centos55 2021-05-alx-linux]$ echo raport-{01..15}.txt
raport-01.txt raport-02.txt raport-03.txt raport-04.txt
raport-05.txt raport-06.txt raport-07.txt raport-08.txt
raport-09.txt raport-10.txt raport-11.txt raport-12.txt
raport-13.txt raport-14.txt raport-15.txt
```

```
[kurs@centos55 2021-05-alx-linux]$ echo raport-{0001..0015}.txt
raport-0001.txt raport-0002.txt raport-0003.txt raport-0004.txt
raport-0005.txt raport-0006.txt raport-0007.txt raport-0008.txt
raport-0009.txt raport-0010.txt raport-0011.txt raport-0012.txt
raport-0013.txt raport-0014.txt raport-0015.txt
```



