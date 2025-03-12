# Aljabar Linear Lanjut (After UTS)

## Least square (Week 1)

**Video Bagus:** [khan academy](https://youtu.be/MC7l96tW8V8?si=nG4Uf8HlqdmBoQnj)

### Definisi

- Least Square adalah metode untuk mencari nilai yang paling mendekati dari data yang diberikan
- Kalau matrix tall artinya data yang mempengaruhi hasil. Jadi tidak pasti ada solusi untuk b
- Least Square akan mencari nilai yang paling mendekati dari data yang diberikan

### Rumus

- $Ax = b$  

- A = matrix tall
- x = variabel yang dicari

#### Mencari

- Cari $||A \hat x - b||^2$ paling kecil
- Cari turunan dari $||A \hat x - b||^2$ terhadap semyua $\hat x_i$ dan set sama dengan 0
  - Objective function $f(x)$: $||A \hat x - b||^2$ (fungsi tujuan)
  - Residual $r$: vector $A \hat x - b$

#### Rumus Cepat

$$\hat x = (A^{T}A)^{-1}A^{T}b$$
$A^{\dagger} = (A^{T}A)^{-1}A^{T}$  (pseudoinverse)
$\hat x = A^{\dagger}\ b$


## Solving Least Square (Week 2)

### QR Decomposition (Square Matrix)

Link Wikipedia: [QR Decomposition](https://en.wikipedia.org/wiki/QR_decomposition)

- $A = QR$
- Q = orthogonal matrix
- R = upper triangular matrix

#### Rumus QR

- $Q = \begin{bmatrix} q_1 & q_2 & q_3 \end{bmatrix}$

- $R = \begin{bmatrix} r_1 & r_2 & r_3 \\ 0 & r_2 & r_3 \\ 0 & 0 & r_3 \end{bmatrix}$

- $A = QR$

#### Rumus Least Square

- $Ax = b$
- $QRx = b$
- $Rx = Q^{T}b$
- $x = R^{-1}Q^{T}b$

### Back Substitution

- $R = \begin{bmatrix} r_1 & r_2 & r_3 \\ 0 & r_2 & r_3 \\ 0 & 0 & r_3 \end{bmatrix}$
- $R\hat x = Q^{T}b$

- $\hat x = R^{-1}Q^{T}b$

- $x_n = b_n / r_{nn}$

- $x_{n-1} = (b_{n-1} - r_{n-1,n}x_n) / r_{n-1,n-1}$ (Kayaknya salah, nanti cari sendiri lagi)

### complexity

- $T(n) = 2n^3 + 3n^2$
  - 2n^3 = back substitution
  - 3n^2 = QR decomposition
- $O(n^3)$

## Least Square Data Fitting (Week 2)

$y \approx f(x)$

- $x$ = independent variable (feature vector)
  - perbedaan feature dan variabel adalah feature adalah variabel yang mempengaruhi hasil
- $y$ = outcome variable (prediction)
- $f: R^n \rightarrow R$ relationship between $x$ and $y$
- $f(x)$ tidak diketahui, relationship antara $x$ dan $y$ tidak diketahui

### Some AI Terms

- $x$ = data
- $y$ = answer
- $(x, y)$ = dataset
- $f(x)$ = model
- model parameter = $\theta _i$
- $f(x) = \theta _0 + \theta _1x_1 + \theta _2x_2 + ... + \theta _nx_n$

### Meminimalkan Prediction Error Data Fitting

- $y \approx f(x)$

Minimize $||f(x) - y||^2$

- $||f(x) - y||^2$
- $||A \theta - y||^2 = 0$
- Minimize $||A \hat\theta - y||^2$
- Minimize MSE
  - $\frac{||A \hat\theta - y||^2}{N}$ = Mean Squared Error (MSE)
- Info tambahan gak masuk UTS: RMSE (Root Mean Squared Error) = $\sqrt{\frac{||A \hat\theta - y||^2}{N}}$
- Info tambahan gak masuk UTS: MAE (Mean Absolute Error) = $\frac{||A \hat\theta - y||}{N}$

#### Rumus Least Square Data Fitting

- $\hat\theta = (A^{T}A)^{-1}A^{T}y$
