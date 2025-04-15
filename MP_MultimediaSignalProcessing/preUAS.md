# ML - Pemrosesan Sinyal Multimedia

---

## Inverse Problem (Week b1)

- Mengubah degradasi sinyal menjadi sinyal awal

### Linear Observation Model

$$y = Fx + n$$

- $y$: Observation
- $x$: Latent clear signal extimate
- $F$: Degradasi operator/matrix
- $n$: Noise

Ill-posed problem:

- Ill positioning problem: $F$ tidak invertible, $x$ tidak dapat diestimasi dengan baik

Weakly-posed problem:

- $F$ invertible, tetapi $x$ tidak dapat diestimasi dengan baik
- Kalau Fx = y tidak well-posed, maka ill-posed