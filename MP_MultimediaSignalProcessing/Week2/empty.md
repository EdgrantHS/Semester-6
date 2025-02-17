# AUDIO CODING AND COMPRESSION

## What is Audio Coding?

Audio coding adalah proses pengubahan data dalam bentuk audio menjadi bentuk lain yang lebih efisien dan dapat disimpan dalam media penyimpanan yang lebih kecil. Audio coding juga dikenal sebagai audio compression. Proses ini sangat penting dalam pengolahan sinyal audio karena memungkinkan untuk ntuk menyimpan lebih banyak data audio dalam media penyimpanan yang sama dan juga mentransmisikan data audio melalui jaringan dengan kecepatan yang lebih tinggi.

### How is it works?

#### 1. ADC (Analog to Digital Converter)

Signal suara akan diubah menjadi sinyal digital dengan sampling rate tertentu dan dilakukan quantization. Dalam kata lain, signal analog suara akan diambil cuplikannya pada interval tertentu dan kemudian diubah menjadi bilangan biner.

#### 2. Audio Compression (Encoding)

Setelah sinyal suara diubah menjadi sinyal digital, sinyal tersebut akan diubah menjadi bentuk yang lebih efisien. Proses ini disebut audio compression atau encoding. Terdapat beberapa metode yang digunakan dalam audio compression, seperti lossy dan lossless compression. Lossless compression akan mengurangi ukuran file tanpa mengurangi kualitas audio, sedangkan lossy compression akan mengurangi ukuran file dengan mengurangi kualitas audio. Beberapa metode lossy compression menghilangkan informasi yang dianggap tidak terlalu penting oleh pendengar manusia. Contohnya:

- Masking effect: Suara yang lebih keras akan menutupi suara yang lebih lemah.
- Frequency Selectivity: Manusia lebih sensitif terhadap perubahan frekuensi pada rentang (2-5Khz) dibandingkan dengan rentang frekuensi lainnya.
- Temporal masking: Suara yang terjadi setelah suara yang lebih keras akan diabaikan oleh pendengar.
- Perceptual coding: Menghilangkan informasi yang tidak terlalu penting bagi pendengar manusia (frekuensi di atas 20Khz, frekuensi di bawah 20Hz, dll).

#### 3. Bitrate Control

Bitrate control adalah proses mengatur seberapa banyak data yang akan digunakan untuk merepresentasikan sinyal audio. Bitrate yang lebih tinggi akan menghasilkan kualitas audio yang lebih baik, namun akan membutuhkan ruang penyimpanan yang lebih besar, dan juga sebaliknya.

#### 4. Audio Decoding

Setelah sinyal audio dikompresi, sinyal tersebut akan di-decode jika akan diputar atau digunakan. 

### Why is it Important?

- Meningkatkan efisiensi penyimpanan data
- Mengurangi penggunaan bandwidth saat mentransmisikan audio
- Meningkatkan Quality of Service (QoS) oleh pengguna
- Menurunkan biaya infrastruktur jaringan

## Basic Concept of Audio Compression

### Types of Audio Compression

### CODEC (Coder-Decoder)



### Audio Compression Techniques

### Relation between Quality of audio with Bit Rate

### Factors of Audio Compression Quality