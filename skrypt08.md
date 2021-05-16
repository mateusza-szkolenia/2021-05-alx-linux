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

