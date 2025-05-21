# ML - Pemrosesan Sinyal Multimedia

---

## Inverse Problem (Week b1)

- Mengubah degradasi sinyal menjadi sinyal awal

### Linear Observation Model

$$y = Fx + n$$

- $y$: Observation
- $x$: Latent clear signal estimation
- $F$: Degradasi operator/matrix
- $n$: Noise

Ill-posed problem:

- Ill positioning problem: $F$ tidak invertible, $x$ tidak dapat diestimasi dengan baik

Weakly-posed problem:

- $F$ invertible, tetapi $x$ tidak dapat diestimasi dengan baik
- Kalau Fx = y tidak well-posed, maka ill-posed

## Morphological Image Processing (Week b3)

### Basic Morph Processing

- Level 1
  - Fit: Persis menimpa structuring element pada objek
  - Hit: Ada bagian dari structuring yang menimpa objek
  - Miss: Tidak ada bagian structuring yang menimpa objek
- Level 2
  - Erosi: Menghilangkan bagian dari objek yang tidak terfit
  - Dilasi: Menambah bagian dari objek yang terfit
- Level 3
  - Banyak, contohnya
    - Opening: Erosi diikuti dilatasi: Memisahkan objek
    - Closing: Dilatasi diikuti erosi: Mengisi Hole

```mermaid
graph TD
  A[Fit]-->B[Erosi]
  C[Hit]-->D[Delasi]
  D-->E[Opening]
  B-->E
  D-->F[Closing]
  B-->F
```

> Strel (Structuring element): bentuk yang digunakan untuk memproses citra, anggap sebagai kernel dalam konvolusi

### Main-main himpunan

Reflection

- $$\hat{B} = \{w | w = -b, b \in B\}$$
- $b$ adalah elemen dari $B$, $w$ adalah elemen dari $\hat{B}$

Translation

- $$\hat{B} = \{w | w = b + z, b \in B\}$$

Erosi

- $$A \ominus B = \{z | (B)_z \subseteq A\}$G$
- B adalah structuring element, $A$ adalah citra
- B subset dari A

Dilasi

- $$A \oplus B = \{z | (B)_z \cap A^C \neq \emptyset\}$$
- B intersect A tidak kosong

## Image Segmentation (Week b4)

- Segmentasi paling sederhana: Thresholding
- Edge detection: Mencari batas objek dalam citra
- Graph-based segmentation: Menggunakan graph untuk segmentasi citra
- Clustering: Mengelompokkan piksel berdasarkan kesamaan

### Types of Segmentation

- **Semantik Segmentation**: Mengelompokkan piksel berdasarkan label objek, objek terpisah yang jenisnya sama akan dikelompokkan menjadi 1
- **Instance Segmentation**: Memisahkan objek yang berbeda dalam citra, objek yang berbeda tetapi jenisnya sama tidak akan dikelompokkan menjadi 1

### Line Detection

- Kernel, convolution based
- Hough Transform: Mencari garis dalam citra dengan mengubah koordinat piksel ke ruang parameter

### Edge Detection

## Image Recognition (Week b6)

### Segmentation

Edge based segmentation

- Sobel
- Canny
- Canny

Region based segmentation

- Watershed: Region growing, region merging, region splitting

### Representation & Descriptor

Objek yang sudah disegmentasi ingin dikenali, maka perlu representasi dan deskriptor

Representation: bagaimana objek yang sudah segmented dijelaskan secara external maupun internal

- Internal (Terkait dengan bagian dalam objek): Area, perimeter, circularity, color, texture - Regional Properties
- External (Terkait dengan bagian luar objek): Edge, boundary, region - Shape/Silhouette based

Descriptor: description of the represented region

- Internal (Terkait dengan bagian dalam objek): Area, perimeter, circularity, color, texture - Regional Properties
- External (Terkait dengan bagian luar objek): Edge, boundary, region - Shape/Silhouette based

> Representation: Key (contoh: pixel)
> Descriptor: Value (contoh: amount of pixel)

Thresholding: Menggunakan threshold pada Descriptor untuk menentukan apakah objek tersebut ada atau tidak (Contoh, circularity > 0.5 untuk menentukan apakah objek tersebut bulat atau tidak)

### Object Recognition Outline

Quantitative (decision function)

- Minimum distance classifier
- Matching by Correlation
- Optimal Subspace Projection

Qualitative (decision tree)


