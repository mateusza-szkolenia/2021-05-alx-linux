# Przetwarzanie stringów w bashu

## wycinanie fragmentów (*substring*)

```
[kurs@centos55 2021-05-alx-linux]$ imie="Mateusz"

[kurs@centos55 2021-05-alx-linux]$ echo "${imie}"
Mateusz

[kurs@centos55 2021-05-alx-linux]$ echo "${imie}a"
Mateusza

[kurs@centos55 2021-05-alx-linux]$ echo "${imie:1:3}"
ate

[kurs@centos55 2021-05-alx-linux]$ echo "${imie:2:3}"
teu

[kurs@centos55 2021-05-alx-linux]$ echo "${imie::-2}"
Mateu
```

## usuwanie prefixów i suffixów

```
[kurs@centos55 2021-05-alx-linux]$ nazwapliku='raport-zima-2013.txt'

[kurs@centos55 2021-05-alx-linux]$ echo "${nazwapliku}"
raport-zima-2013.txt

[kurs@centos55 2021-05-alx-linux]$ echo "${nazwapliku#raport-}"
zima-2013.txt

[kurs@centos55 2021-05-alx-linux]$ echo "${nazwapliku#xyz-}"
raport-zima-2013.txt

[kurs@centos55 2021-05-alx-linux]$ echo "${nazwapliku#r*-}"
zima-2013.txt

[kurs@centos55 2021-05-alx-linux]$ echo "${nazwapliku%.txt}"
raport-zima-2013
```

## Zmiana wartości początkowej zmiennej
```
[kurs@centos55 2021-05-alx-linux]$ nazwapliku='raport-zima-2013.txt'

[kurs@centos55 2021-05-alx-linux]$ nazwapliku="${nazwapliku#raport-}"
[kurs@centos55 2021-05-alx-linux]$ echo $nazwapliku 
zima-2013.txt

[kurs@centos55 2021-05-alx-linux]$ nazwapliku="${nazwapliku%.txt}"
[kurs@centos55 2021-05-alx-linux]$ echo $nazwapliku 
zima-2013
```

# Tablice (*Array*)

```
[kurs@centos55 2021-05-alx-linux]$ imiona=(Mateusz Marcin Michał Marek)

[kurs@centos55 2021-05-alx-linux]$ echo $imiona
Mateusz

[kurs@centos55 2021-05-alx-linux]$ echo "${imiona[0]}"
Mateusz

[kurs@centos55 2021-05-alx-linux]$ echo "${imiona[1]}"
Marcin

[kurs@centos55 2021-05-alx-linux]$ echo "${imiona[2]}"
Michał

[kurs@centos55 2021-05-alx-linux]$ echo "${imiona[3]}"
Marek

[kurs@centos55 2021-05-alx-linux]$ echo "${#imiona}"
4
```

