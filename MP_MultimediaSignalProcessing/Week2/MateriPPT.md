# Video CODING AND COMPRESSION

## Mengapa Perlu Video Coding?

Video 60 fps dengan resolusi 1920x1080 akan menghasilkan 124.416.000 pixel per detik. Ini adalah 370MB per detik. Jika kita ingin mentransmisikan video ini melalui jaringan, kita membutuhkan bandwidth yang sangat-sangat besar. Oleh karena itu, kita perlu melakukan kompresi video. Algoritma atau Codec yang paling populer adalah H.264, oleh karena itu dalam slides ini, kami mayoritas akan membahas H.264.

## Lossy Compression dalam Video

Lossy compression adalah metode kompresi yang mengurangi ukuran file dengan mengurangi kualitas video yang tidak terlalu terlihat oleh mata manusia. Hampir seluruh codec video, termasuk H.264, menggunakan lossy compression karena dapat sangat mengurangi ukuran file video. Lossless video compression sangat jarang digunakan karena ukuran file yang tetap sangat besar.

## 2 Tipe Compression dalam Video

Video dapat dipikirkan sebagai kumpulan gambar yang bergerak. Oleh karena itu, ada dua tipe kompresi dalam video:

### 1. Intraframe (Spatial) Compression

Kompresi yang dilakukan pada satu frame video. Hal ini sama seperti kompresi gambar yang dibahas pada materi minggu lalu, dilakukan chroma subsampling, quantization, dan lain-lain. Penjelasan detail tidak akan diulang di sini.

### 2. Interframe (Temporal) Compression

Kompresi yang dilakukan antara banyak frame video. Kompresi ini dilakukan dengan menghilangkan redundansi antar frame, seperti motion compensation, dan lain-lain. Penjelasan detail akan dijelaskan di slide-slide berikutnya.

## Details of Temporal Compression

### Overview

- Macroblock
- Motion Compensation
- Motion Estimation
- I-Frame, P-Frame, B-Frame

### Macroblock

Macroblock adalah unit terkecil dalam video yang dapat diolah oleh encoder dan decoder. Macroblock biasanya berukuran 16x16 pixel. Seluruh proses motion estimation dan motion compensation dilakukan pada macroblock. Pergerakan macroblock disebut motion vector.

### Motion Compensation

Motion compensation adalah teknik yang digunakan untuk menghilangkan redundansi spasial antar frame video. Dengan menggunakan motion compensation, encoder hanya perlu menyimpan perbedaan antara frame sekarang dengan frame sebelumnya. Dengan kata lain, encoder hanya perlu menyimpan pergerakan objek dalam video.

### Motion Estimation

Motion estimation adalah proses mencari pergerakan objek dalam video. Encoder akan mencari pergerakan objek dalam video dengan mencocokkan macroblock pada frame sekarang dengan macroblock pada frame sebelumnya. Pergerakan objek dalam video disebut motion vector.

### Gabungan Motion Compensation dan Motion Estimation

Motion compensation dan motion estimation bekerja bersamaan. Motion estimation akan mencari motion vector untuk membentuk frame prediksi. Frame prediksi ini dibandingkan dengan frame asli untuk menghasilkan residual frame. Residual frame ini yang akan disimpan oleh encoder.

### I-Frame, P-Frame, B-Frame

- I-Frame (Intraframe): Frame yang tidak bergantung pada frame lain. I-Frame adalah frame yang paling besar ukurannya karena tidak ada redundansi antar frame.
- P-Frame (Predictive Frame): Frame yang bergantung pada I-Frame atau P-Frame sebelumnya. P-Frame hanya menyimpan perbedaan antara frame sekarang dengan frame sebelumnya.
- B-Frame (Bidirectional Frame): Frame yang bergantung pada I-Frame, P-Frame, atau B-Frame sebelumnya dan sesudahnya. B-Frame menyimpan perbedaan antara frame sekarang dengan frame sebelumnya dan sesudahnya.

### Compression Lain

Setelah Motion Compensation dan Motion Estimation, terbentuk beberapa I-Frame dan Residual Frame. I-Frame dan Residual Frame ini kemudian akan di-compress menggunakan metode lain, seperti DCT, quantization, dan chroma subsampling. Setelah itu akan dicompress lagi menggunakan algoritma seperti Huffman, RLE, atau Arithmetic Coding. Dengan metode-metode ini, video 3 detik yang awalnya 1GB dapat dicompress menjadi 100KB, hanya 0.01% dari ukuran aslinya. Karena, video tersebut hanya menyimpan kurang lebih 3 I-Frame yang tercompress dan beberapa Residual Frame.

## Keterbatasan H.264

### Hal yang Bagus Dikompresi H.264

Kelebihan H.264 adalah mengkompresi video dengan pergerakan objek yang konsisten. Jika objek bergerak dengan kecepatan konstan (Contoh: Panning Kamera), H.264 akan menghasilkan video yang sangat kecil ukurannya karena dapat mencatat Motion Vector yang sama untuk beberapa frame.

H.264 juga baik dalam mengkompresi video dengan sedikit pergerakan objek. Jika objek dalam video sedikit bergerak, H.264 akan menghasilkan residual frame yang sangat kecil.

### Hal yang Sulit Dikompresi H.264

H.264 mudah mengkompresi video dengan pergerakan objek yang pergerakannya konsisten atau pergerakannya sedikit. Oleh karena itu, jika objek dalam video bergerak dengan pergerakan yang acak dan tidak konsisten, H.264 akan sulit mengkompresi video tersebut. Contohnya adalah konfeti jatuh, air terjun, atau salju turun. Objek objek tersebut bergerak dengan pergerakan yang acak dan tidak konsisten, sehingga sulit dikompresi oleh H.264.
H.264 mudah mengkompresi video dengan pergerakan objek yang pergerakannya konsisten atau pergerakannya sedikit. Oleh karena itu, jika objek dalam video bergerak dengan pergerakan yang acak dan tidak konsisten, H.264 akan sulit mengkompresi video tersebut. Contohnya adalah konfeti jatuh, air terjun, atau salju turun. Objek objek tersebut bergerak dengan pergerakan yang acak dan tidak konsisten, sehingga sulit dikompresi oleh H.264.

