Nama: Edgrant Henderson Suryajaya  
NPM: 2206025016

## 1. Minimum Value

### a. list = {-1, 2, -3, 4, -5, 6, -7, 8, -9, 10}

input : list = {-1, 2, -3, 4, -5, 6, -7, 8, -9, 10}

Route :  

> 1 > 2 > 3 > 4 > 5 > 6 > 7 > 8 > 5 > 7 > 8 > 5 > 6 > 7 > 8 > 5 > 7 > 8 > 5 > 6 > 7 > 8 > 5 > 7 > 8 > 5 > 6 > 7 > 8 > 5 > 7 > 8 > 5 > 6 > 7 > 8 > 5 > 7 > 7A > 9

Index pertama dari list akan diset sebagai nilai minimum, jadi iterasi dimulai dari index kedua membandingkan item dengan nilai minimum.

| Iter | item | min |
|------|------|-----|
| 1 | 2 | -1 |
| 2 | -3 | -3 |
| 3 | 4 | -3 |
| 4 | -5 | -5 |
| 5 | 6 | -5 |
| 6 | -7 | -7 |
| 7 | 8 | -7 |
| 8 | -9 | -9 |
| 9 | 10 | -9 |

> number of iteration : 9  
> output (min) : -9

---

### b. list = {3, 7, 4, 2, 5, 1, 0, 9, 6, 8}

input : list = {3, 7, 4, 2, 5, 1, 0, 9, 6, 8}

Route :

> 1 > 2 > 3 > 4 > 5 > 6 > 7 > 8 > 5 > 7 > 8 > 5 > 7 > 8 > 5 > 6 > 7 > 8 > 5 > 7 > 8 > 5 > 6 > 7 > 8 > 5 > 6 > 7 > 8 > 5 > 7 > 8 > 5 > 7 > 8 > 5 > 7 > 8 > 5 > 7 > 7A > 9

Index pertama dari list akan diset sebagai nilai minimum, jadi iterasi dimulai dari index kedua membandingkan item dengan nilai minimum.

| Iter | item | min |
|------|------|-----|
| 1 | 7 | 3 |
| 2 | 4 | 3 |
| 3 | 2 | 2 |
| 4 | 5 | 2 |
| 5 | 1 | 1 |
| 6 | 0 | 0 |
| 7 | 9 | 0 |
| 8 | 6 | 0 |
| 9 | 8 | 0 |

> number of iteration : 9  
> output (min) : 0

---

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

## 2 Linear search for 5

### a. list = {3, 7, 4, 2, 5, 1, 0}

input : list = {3, 7, 4, 2, 5, 1, 0}

Route :

> 1 > 2 > 3 > 4 > 5 > 3 > 4 > 5 > 3 > 4 > 5 > 3 > 4 > 5 > 3 > 4 > 5 > 5A > 6

| Iter | index | item | found |
|------|------|------|-------|
| 1 | 0 | 3 | False |
| 2 | 1 | 7 | False |
| 3 | 2 | 4 | False |
| 4 | 3 | 2 | False |
| 5 | 4 | 5 | True |

> number of operation : 5  
> output (found) : True, ditemukan pada index ke-4

---

### b. list = {3, 7, 4, 2, 9, 1, 0}

input : list = {3, 7, 4, 2, 9, 1, 0}

Route :

> 1 > 2 > 3 > 4 > 5 > 3 > 4 > 5 > 3 > 4 > 5 > 3 > 4 > 5 > 3 > 4 > 5 > 3 > 4 > 5 > 3 > 4 > 5 > 3 > 3A > 6

| Iter | index | item | found |
|------|------|------|-------|
| 1 | 0 | 3 | False |
| 2 | 1 | 7 | False |
| 3 | 2 | 4 | False |
| 4 | 3 | 2 | False |
| 5 | 4 | 9 | False |
| 6 | 5 | 1 | False |
| 7 | 6 | 0 | False |

> number of operation : 7  
> output (found) : False, tidak ditemukan

