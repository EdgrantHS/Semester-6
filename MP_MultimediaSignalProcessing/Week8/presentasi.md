# Image Restoration and Reconstruction

--- 

## Degradation and Restoration

### Slide 1: Types of degradation

Degredasi adalah perubahan yang terjadi pada gambar yang menyebabkan hilangnya informasi atau kualitas gambar. Beberapa jenis degradasi yang umum terjadi adalah:

- Noise: Variasi acak dalam luminansi atau warna piksel
- Blur: Kehilangan detail dalam gambar yang biasanya disebabkan oleh pergerakan atau ketidakakuratan fokus
- Artifact: Distorsi yang merepresentasi gambar yang tidak ada dalam scene asli

### Slide 2: Sources of degradation

Sumber degradasi dapat dibagi menjadi tiga kategori utama:

- Acquisition: Degradasi yang terjadi saat mengambil gambar (misalnya, pergerakan kamera menghasilkan blur atau terjadi aliasing)
- Transmission: Degradasi yang terjadi saat mentransmisikan gambar (misalnya, bit flip atau kehilangan paket)
- Storage: Degradasi yang terjadi saat menyimpan gambar (misalnya, kompresi JPEG)

### Slide 3: Model image Degradation and Restoration

Pada sistem di atas dapat dilihat gambar awal $f(x,y)$ yang mengalami degradasi $H$ dan noise $n(x,y)$ sehingga menghasilkan gambar yang terlihat $g(x,y)$. Tujuan dari proses restorasi adalah mengembalikan gambar yang terlihat $g(x,y)$ menjadi gambar asli $f(x,y)$. Namun, karena tidak selaalu mungkin untuk mengembalikan gambar asli, tujuan dari proses restorasi adalah menghasilkan gambar yang terlihat $\hat{f}(x,y)$ yang mendekati gambar asli $f(x,y)$.

### Slide 4: Contoh H

H memiliki 3 properti utama:

- Linear: 
  - $H(a_1f_1(x,y)+a_2f_2(x,y)) = a_1H(f_1(x,y)) + a_2H(f_2(x,y))$
  - Output dari 2 input yang dijumlahkan sama dengan output dari 2 input yang diolah secara terpisah dan dijumlahkan.
- Position-invariant: 
  - $H(f(x-x_0, y-y_0)) = H(f(x,y))$
  - Output dari input yang digeser sama dengan output dari input yang tidak digeser.
- Homogeneous: 
  - $H(af(x,y)) = aH(f(x,y))$
  - Output dari input yang dikalikan dengan konstanta sama dengan output dari input yang tidak dikalikan dengan konstanta.

### Slide 5: Fourier Transform of Degradation

Dalam domain waktu persamaan degradasi adalah  
$$g(x,y) = h(x,y) * f(x,y) + n(x,y)$$   
sedangkan dalam domain frekuensi persamaan degradasi adalah  
$$G(u,v) = H(u,v)F(u,v) + N(u,v)$$   
Dalam domain frekuensi, degradasi dapat dihitung dengan mengalikan spektrum gambar asli dengan fungsi transfer degradasi. Jika ingin menghitung gambar asli, kita dapat menggunakan persamaan invers Fourier transform.

## Noise Models

### Slide 6: Categories of Noise

- Distribution-based noise: Noise yang dihasilkan oleh distribusi acak (misalnya, Gaussian, Poisson, Salt-and-pepper)
- Correlation-based noise: Noise yang dihasilkan oleh korelasi antar piksel (misalnya, speckle noise, block noise)
- Nature-based noise: Noise yang dihasilkan oleh sifat alam (misalnya, film grain, film scratches)
- Source-based noise: Noise yang dihasilkan oleh sumber (misalnya, sensor noise, quantization noise)

### Slide 7: Distribution-based Noise

Distribution-based noise adalah noise yang dihasilkan oleh distribusi acak. Persamaannya menghasilkan probabilitas noise yang dihasilkan. Beberapa jenis distribution-based noise adalah:

- Gaussian noise: Noise yang dihasilkan oleh distribusi Gaussian
  - $p(z) = \frac{1}{\sqrt{2\pi\sigma^2}}e^{-\frac{(z-\mu)^2}{2\sigma^2}}$
- Poisson noise: Noise yang dihasilkan oleh distribusi Poisson, sering ditemukan pada citra X-ray atau citra mikroskop
  - $p(z) = \frac{(np)^z}{z!}e^{-np}$
- Salt-and-pepper noise: Noise yang dihasilkan oleh distribusi salt-and-pepper, disebut juga impulse noise atau binary noise. Biasa disebabkan oleh kerusakan pada sensor.
  - $p(z) = \begin{cases} P_s & \text{if } z = 0 \\ P_p & \text{if } z = 1 \\ 1-P_s-P_p & \text{if } z = 0 \end{cases}$
- Exponential noise: Noise yang dihasilkan oleh distribusi exponential. Biasa digunakan untuk menggambarkan noise pada citra yang dihasilkan oleh sensor CCD.
  - $p(z) = \lambda e^{-\lambda z}$

Daftar simbol:

- $p(z)$ adalah probabilitas (pdf) noise yang dihasilkan
- $z$ adalah nilai noise
- $\mu$ adalah rata-rata noise
- $\sigma$ adalah standar deviasi noise
- $n$ adalah jumlah pixel
- $p$ ratio pixel noise dibandingkan dengan total pixel

### Slide 8: Correlation-based Noise

Noise yang pixelnya bergantung pada pixel lainnya. Uncorellated noise adalah noise yang pixelnya tidak bergantung pada pixel lainnya seperti white noise. Power spectral density (PSD) adalah ukuran kekuatan noise pada frekuensi tertentu. PSD noise yang tinggi pada frekuensi rendah biasanya disebut sebagai low-frequency noise, sedangkan PSD noise yang tinggi pada frekuensi tinggi biasanya disebut sebagai high-frequency noise.

White noise adalah noise yang memiliki PSD konstan pada semua frekuensi. Sedangkan, pink noise adalah noise yang memiliki PSD yang menurun seiring dengan peningkatan frekuensi 1/f. Ini disebut juga flicker noise.

### Slide 9: Nature-based Noise

- Additive noise: Noise yang ditambahkan ke gambar asli
- Multiplicative noise: Noise yang dikalikan dengan gambar asli. Contohnya speckle noise yaitu Average amplitude meningkat seiring dengan peningkatan intensitas gambar.

### Slide 10: Source-based Noise

- Quantization noise: Noise yang dihasilkan oleh proses quantization, biasanya terjadi pada proses kompresi gambar
- Photon noise: Noise yang dihasilkan oleh proses pengambilan gambar akibat jumlah foton yang masuk ke sensor

## Estimation of Degradation Function

### Slide 11: Metode Estimasi H

- Estimation by Observation: Mengamati gambar yang terdegradasi dan mengestimasi fungsi degradasi
- Estimation by Experiment: Mengambil gambar dengan kondisi tertentu dan mengestimasi fungsi degradasi
- Estimation by Modeling: Membuat model matematis dari proses degradasi dan mengestimasi fungsi degradasi

### Slide 12: Estimation by Observation

Mencari informasi dari gambar yang terdegradasi untuk mengestimasi fungsi degradasi. Biasa dilakukan pada sub-bagian gambar yang memiliki noise yang tinggi.

$$H(u,v) = \frac{G(u,v)}{\hat{F}(u,v)}$$

- $H(u,v)$ adalah fungsi transfer degradasi
- $G(u,v)$ adalah spektrum gambar terdegradasi
- $\hat{F}(u,v)$ adalah spektrum gambar asli

### Slide 13: Estimation by Experiment

Menggunakan device yang menghasilkan gambar dengan kondisi tertentu untuk mengestimasi fungsi degradasi. Biasa dilakukan pada gambar yang dihasilkan oleh sensor. Atau menggunakan kamera dengan kondisi tertentu untuk menghasilkan gambar dengan noise yang tinggi.

Bisa dilakukan dengan mengambil gambar putih dan hitam, kemudian menganalisis noise yang dihasilkan untuk mengestimasi fungsi degradasi.

### Slide 14: Estimation by Modeling

Membuat model matematis dari proses degradasi untuk mengestimasi fungsi degradasi. Biasa dilakukan pada proses degradasi yang kompleks seperti proses kompresi gambar.

## Metode Restorasi Sederhana

### Slide 15: Mean Filter

Mean filter adalah filter yang mengambil rata-rata dari piksel tetangga. Mean filter biasa digunakan untuk menghilangkan Gaussian noise dan Uniform noise. Mean filter dapat dihitung dengan persamaan berikut:

$$\hat{f}(x,y) = \frac{1}{mn}\sum_{s=-a}^{a}\sum_{t=-b}^{b}g(x+s,y+t)$$

### Slide 16: Order-Statistic Filter

Order-statistic filter adalah filter yang mengambil nilai piksel tertentu dari piksel tetangga. Contoh dari order-statistic filter adalah median filter.

$$\hat{f}(x,y) = \text{median}\{g(x+s,y+t)\}$$

### Slide 17: Periodic Noise Reduction

Periodic noise adalah noise yang memiliki frekuensi tertentu. Periodic noise biasa dihilangkan dengan menggunakan filter notch atau filter bandpass.

Dapat dihilangkan dengan bandpass filter yang menghilangkan frekuensi noise dan mempertahankan frekuensi gambar. 

## Metode Restorasi Lanjutan

### Slide 18: Jenis Metode Restorasi

- Deconvolution/Inverse Filtering: Menggunakan invers dari fungsi degradasi untuk mengembalikan gambar asli. Seluruh informasi gambar asli dapat dikembalikan.
- Wiener Filtering: Menggunakan filter Wiener untuk mengembalikan gambar asli. Filter Wiener mempertimbangkan noise yang ada pada gambar.
- Blind Deconvolution: Menggunakan metode deconvolution tanpa mengetahui fungsi degradasi. Biasa digunakan pada gambar yang tidak diketahui fungsi degradasinya.

### Slide 19: Unconstrained Restoration

Inverse filter unconstrained restoration: Menggunakan metode restorasi tanpa mempertimbangkan batasan. Proses akan meminimalisir noise, biasa digunakan pada gambar yang memiliki noise yang tinggi. 

- minimize noise $||n||^2$
- $n = g - H\hat{f}$
- minimize $J(\hat{f}) = ||g - H\hat{f}||^2$
- $\frac{\partial J(\hat{f})}{\partial \hat{f}} = 0$
- $\hat{f} = H^{\dagger}g = (H^TH)^{-1}H^Tg$

### Slide 20: Constrained Restoration

Inverse filter constrained restoration: Menggunakan metode restorasi dengan mempertimbangkan batasan. Proses akan mempertimbangkan noise dan batasan lainnya, biasa digunakan pada gambar yang memiliki noise yang rendah.

- minimize noise $||n||^2$
- minimize $J(\hat{f}) = ||g - H\hat{f}||^2 + \lambda R(\hat{f})$
- $\frac{\partial J(\hat{f})}{\partial \hat{f}} = 0$
- $\hat{f} = (H^TH + \lambda R)^{-1}H^Tg$
- $R$ adalah fungsi batasan, contohnya fungsi smoothness agar gambar yang dihasilkan lebih halus
- $\lambda$ adalah hyperparameter yang mengontrol trade-off antara minimasi noise dan mempertimbangkan batasan

### Slide 21: Denoising Autoencoder

Denoising autoencoder adalah metode restorasi yang menggunakan autoencoder untuk menghilangkan noise pada gambar. Autoencoder adalah neural network yang terdiri dari encoder dan decoder. Encoder digunakan untuk menghasilkan representasi gambar yang direpresentasikan dengan sedikit neuron, sedangkan decoder digunakan untuk mengembalikan gambar asli dari representasi gambar.

Autoencoder akan training meminimalisisr error antara gambar asli dan gambar yang direkonstruksi oleh autoencoder.

- $\text{minimize} ||E||^2 = ||f - D(E(f))||^2$
- Dengan $E$ adalah encoder, $D$ adalah decoder, dan $f$ adalah gambar asli

Denosing autoencoder akan training meminimalisisr error antara gambar asli dan gambar yang terdegradasi.

