# Paper UTS - Autoencoder for Image Compression

## Kriteria

1. TPUTS ini bersifat grup assignment, dan pelaksanaannya bersifat asinkron/di luar kelas.
2. Telusuri beberapa paper jurnal ilmiah ternama dalam 3 tahun terakhir, semisal IEEE dan lainnya mengenai aplikasi teknik kompresi sinyal multimedia (kompresi suara, audio, citra, video, dll.).
3. Buatlah makalah yang merupakan kompilasi dari beberapa jurnal tersebut (dalam bahasa Indonesia).  File makalah dibuat mengikuti format terlampir bersama ketentuan TPUTS ini. File makalah disimpan dalam format MS-Word dan diberi nama TPUTS_No.Grup_Paper.docx, mis Grup 8: TPUTS_08_Paper.docx.
4. Buatlah coding/program yang sesuai dengan materi makalah menggunakan MATLAB®, dan beri nama file: TPUTS_No.Grup_MATLAB.zip (merupakan nama zip folder program dan data MATLAB). Seringkali citra/data/function MATLAB yang digunakan tidak dimasukkan dalam zip file yang mengakibatkan program tidak dapat diperiksa (berakibat nilai coding = 0). Pastikan seluruhnya tersimpan dalam file zip dan pastikan direktori/folder pada *.m files benar.
5. Buat juga presentasinya dalam format MS-Power Point dan diberi nama: TPUTS_No.Grup_Presentasi.pptx.
6. Kumpulkan semua makalah/paper jurnal ilmiah yang Anda rujuk dan dizip dengan nama TPUTS_No.Grup_Referensi.zip.
7. Gabungkan semua file dalam satu folder dan dizip dengan nama: TPUTS_No.Grup.zip dan diunggah ke EMAS sebelum deadline.
8. Pastikan tidak ada kelompok yang mengerjakan topik yang sama, silakan dikordinasikan bersama Ketua Kelas.

## Paper

1. ConvAE-512: Bandwidth-Efficient Image Compression in Edge with Auto-Encoders
2. Image compression using Auto-Encoders in Deep learning
3. Learned Image Compression Using A Long and Short Attention Module
4. Variable-Rate Learned Image Compression with Multi-Objective Optimization and Quantization-Reconstruction Offsets
5. Region-Based Retinal Image Compression Using Convolutional Auto-Encoder And Arithmetic Encoding
P. K. Goel, V. Agarwal, S. Verma, A. Aeron, C. Jayant and S. Singh, "Image compression using Auto-Encoders in Deep learning," 2024 OPJU International Technology Conference (OTCON) on Smart Computing for Innovation and Advancement in Industry 4.0, Raigarh, India, 2024, pp. 1-5, doi: 10.1109/OTCON60325.2024.10687959.




## Catatan dari Baca Materi

- Latar Belakang: Seiring perkembangan teknologi kamera, data citra yang dihasilkan akan semakin besar. Penyimpanan dan transmisi citra yang besar akan membutuhkan biaya yang besar. Oleh karena itu, dibutuhkan teknik kompresi citra yang baik untuk mengurangi ukuran data citra tanpa mengurangi kualitas citra.
- Teknik kompresi citra yang biasa digunakan, JPEG, sudah cukup tua dan tidak efisien. Oleh karena itu, dapat menggunakan teknologi autoencoder untuk melakukan kompresi citra.
- Autoencoder adalah salah satu teknik Deep Learning yang membentuk Artificial Neural Network (ANN) yang terdiri dari dua bagian, encoder dan decoder. Encoder berfungsi untuk mengubah data input menjadi representasi yang lebih sederhana (latent space), sedangkan decoder berfungsi untuk mengubah representasi tersebut menjadi data output yang sama dengan data input.
- Jika latent space ditransmisikan, maka dapat mengirimkan data yang sangat kecil. Dengan demikian, autoencoder dapat digunakan untuk melakukan kompresi data.
- Device yang mengambil gambar dapat langsung melakukan kompresi gambar menggunakan encoder, lalu mentransmisikan data tersebut. Device yang menerima data tersebut dapat melakukan dekompresi menggunakan decoder. Komputasi dilakukan di device ujung dengan mengimplementasikan edge computing.
- Dengan Autoencoder juga dapat meningkatkan security data, karena data yang ditransmisikan hanya dapat di-decode oleh device yang memiliki decoder yang sesuai.

1

- ConvAE-512 menggunakan Convolutional Neural Network (CNN) untuk Autoencodernya. Convolutional layer dipakai Encoder, sedangkan Transposed Convolutional layer atau deconvolutional layer dipakai Decoder.
- Pooling layer dapat mengurangi detail data, jadi lebih baik menggunakan Convolutional layer.
- Dibanding JPEG, ConvAE-512 lebih baik dibanding JPEG dan WEBP dalam kualitas gambar dan ukuran file. Tetapi, proses kompresi dan dekompresi mebutuhkan waktu yang lebih lama dibanding JPEG dan WEBP. 
- CPU resource yang dipakai ConvAE-512 tidak terlalu besar, bagus untuk edge device yang memiliki resource terbatas.

2

- Autoencoder secara general, jika dipakai untuk kompresi citra, lebih baik kompresinya pada gambar yang berukuran besar. Kompresi pada gambar yang berukuran kecil, tidak terlalu banyak mengurangi ukuran file.
- Training: Design Autoencoder, Load data image, train Autoencoder, save model untuk kompresi dan dekompresi gambar baru.
- ANN lain untuk kompresi citra: 
  - VAE (Variational Autoencoder): Menggunakan variational inference untuk mempelajari distribusi data latennya.
  - GAN (Generative Adversarial Network): Menggunakan dua ANN, Generator dan Discriminator, untuk menghasilkan data latennya.
  - Hybrid: Menggunakan DL dan conventional compression
  - Attention Mechanism & Transformer: Menggunakan attention mechanism untuk memperhatikan bagian penting dari gambar.

3

- Attention Mechanism: Mekanisme yang memperhatikan bagian penting dari gambar.
- Long and Short Attention Module: Mekanisme yang memperhatikan bagian penting dari gambar dengan menggunakan dua attention module, long dan short.
- Biasanya attention mechanism digunakan pada Natural Language Processing (NLP), pada pemrosesan citra juga dapat digunakan.
- Long Attention Module fokus pada seluruh gambar secara global
- Short Attention Module fokus pada bagian kecil gambar secara lokal
- Kedua module ini diintegrasi pada encoder dan decoder Autoencoder.

4

- Dibanding training banyak model Autoencoder yang berbeda untuk compression level yang berbeda, paper ini menggunakan multi-objective optimization (fokus pada banyak hasil kompresi sekaligus) untuk training satu model Autoencoder yang dapat melakukan kompresi dengan berbagai level.

5

- Region-Based Retinal Image Compression
- Salah satu kelebihan terbesar autoencoder adalah dapat ditraining untuk domain spesifik, seperti citra retina.
- Medical imaging pembuluh darah sangat penting untuk diagnosis. Autoencoder dapat preservasi detail pembuluh darah dan compress yang lain.
- Menggunakan Convolutional Autoencoder pada citra yang tidak penting
- Menggunakan Arithmetic Encoding pada citra yang penting (lossless)



## Abstrak

## I. Pendahuluan

Seiring perkembangan teknologi handphone dan kamera, data citra yang dihasilkan akan semakin besar. Penyimpanan dan transmisi citra yang besar akan membutuhkan biaya yang besar. Oleh karena itu, dibutuhkan teknik kompresi citra yang baik. 

Teknik kompresi citra yang biasa digunakan, JPEG, sudah cukup tua dan tidak efisien dibanding teknik modern. Perkembangan teknik kompresi konvensional, seperti WEBP, juga masih dapat ditingkatkan. Oleh karena itu, dapat menggunakan pendekatan kompresi yang secara keseluruhan berbeda, yaitu menggunakan Deep Learning, khususnya Autoencoder.

Autoencoder adalah salah satu teknik Deep Learning yang membentuk Artificial Neural Network (ANN) yang terdiri dari dua bagian, encoder dan decoder. Encoder berfungsi untuk mengubah data input menjadi representasi yang lebih sederhana (latent space), sedangkan decoder berfungsi untuk mengubah representasi tersebut menjadi data output yang sama dengan data input.

Jika latent space ditransmisikan, dapat dikirimkan data yang sangat kecil. Dengan demikian, autoencoder dapat digunakan untuk melakukan kompresi data. Device yang mengambil citra dapat langsung melakukan kompresi menggunakan encoder, lalu mentransmisikan data tersebut. Device yang menerima data tersebut dapat melakukan dekompresi menggunakan decoder. Komputasi dilakukan di device ujung dengan mengimplementasikan edge computing. Metode ini juga dapat meningkatkan security data, karena data yang ditransmisikan hanya dapat di-decode oleh device yang memiliki decoder yang sesuai.

## II. Materi

Salah satu algoritma atau model kompresi citra Auto-Encoding yang dapat digunakan adalah ConvAE-512, model ini dijelaskan pada paper [1] "ConvAE-512: Bandwidth-Efficient Image Compression in Edge with Auto-Encoders". Model ini menggunakan Convolutional Neural Network (CNN) untuk Autoencodernya dengan Convolutional layer dipakai Encoder, sedangkan Transposed Convolutional layer atau deconvolutional layer dipakai Decoder. Hal ini dikarenakan pooling layer dapat mengurangi detail data, sehingga lebih baik menggunakan Convolutional layer.[1]

Dibanding metode kompresi citra konvensional, seperti JPEG, ConvAE-512 lebih baik dalam kualitas gambar dan ukuran file. Tetapi, proses kompresi dan dekompresi mebutuhkan waktu yang lebih lama. CPU resource yang dipakai ConvAE-512 tidak terlalu besar, jadi bagus untuk edge device yang memiliki resource terbatas. Kompresi ini sebaiknya dipakai pada saat kondisi bandwidth yang kurang baik atau device yang memiliki resource storage yang terbatas.[1]

AE secara general, jika dipakai untuk kompresi citra, lebih baik kompresinya pada gambar yang berukuran besar karena lebih banyak informasi yang dapat dihilangkan dan lebih banyak redundansi yang dapat dihapus atau fitur yang digeneralisasi. Pada kompresi gambar yang kecil, ukuran file yang dihasilkan tidak terlalu berkurang karena informasi yang dapat dihilangkan dan fitur yang dapat digeneralisasi tidak terlalu banyak. [2]

Pelatihan AE untuk kompresi citra, termasuk ConvAE-512, dilakukan dengan mendesain AE, memuat data citra training, melatih AE, dan menyimpan model untuk kompresi dan dekompresi gambar baru. Selain ConvAE-512, terdapat juga beberapa Artificial Neural Network (ANN) lain yang dapat digunakan untuk kompresi citra:
- VAE (Variational Autoencoder): Menggunakan variational inference untuk mempelajari distribusi data latennya.
- GAN (Generative Adversarial Network): Menggunakan dua ANN, Generator dan Discriminator, untuk menghasilkan data latennya.
- Hybrid: Menggunakan gabungan dari Deep Learning dan kompresi konvensional.
- Attention Mechanism & Transformer: Menggunakan attention mechanism untuk memperhatikan bagian penting dari gambar.[2]

Pada paper [3] yang berjudul "Learned Image Compression Using A Long and Short Attention Module", dijelaskan Long and Short Attention Module untuk AE. Attention Mechanism biasanya digunakan pada Natural Language Processing (NLP), tetapi juga dapat digunakan pada pemrosesan citra. Secara umum, Attention Mechanism akan memperhatikan bagian penting dari gambar. Long Attention Module fokus pada seluruh gambar secara global, sedangkan Short Attention Module fokus pada bagian kecil gambar secara lokal. Kedua modul ini diintegrasi pada encoder dan decoder AE untuk meningkatkan kualitas kompresi citra. Kelebihannya adalah dapat mengeneralisasi fitur yang penting dari gambar dan menghilangkan fitur yang tidak penting, tetapi kekurangannya adalah model cenderung lebih kompleks dan rentan terhadap overfitting jika tidak diatur dengan baik.[3]

Kedua model AE yang dijelaskan pada paper [1] "ConvAE-512: Bandwidth-Efficient Image Compression in Edge with Auto-Encoders" dan paper [3] "Learned Image Compression Using A Long and Short Attention Module" dapat melakukan kompresi citra. Namun, level kompresi yang dihasilkan oleh kedua model tersebut hanya satu. Jika ingin melakukan kompresi dengan berbagai level, perlu dilakukan training ulang. Paper [4] "Variable-Rate Learned Image Compression with Multi-Objective Optimization and Quantization-Reconstruction Offsets" menjelaskan metode kompresi citra yang dapat melakukan kompresi dengan berbagai level tanpa perlu training ulang. Metode ini menggunakan multi-objective optimization untuk training satu model yang memiliki objective yang berbeda-beda. Objective tersebut berupa level kompresi yang berbeda. Dengan demikian, model ini dapat melakukan beberapa level kompresi dalam satu model. Kelebihan dari metode ini adalah tidak perlu training ulang untuk setiap level kompresi, tetapi kekurangannya adalah untuk setiap level kompresi, model akan memiliki kualitas yang tidak sebaik model yang dilatih khusus untuk level tersebut.[4]

Pada paper [5] "Region-Based Retinal Image Compression Using Convolutional Auto-Encoder And Arithmetic Encoding", dijelaskan metode kompresi citra yang spesifik untuk citra retina. Citra medis sangat penting detail-detailnya yang spesifik pada domain medis tersebut
. Pada citra retina, pembuluh darah sangat penting untuk diagnosis. Secara umum, model ini akan menggunakan Convolutional AE untuk kompresi citra yang tidak penting dan Arithmetic Encoding untuk kompresi citra yang penting. Dengan demikian, detail pembuluh darah dapat dipreservasi secara sempurna (lossless) dengan Arithmetic Encoding, sedangkan kompresi bagian yang lain dapat dilakukan dengan Convolutional AE. Salah satu kelebihan terbesar AE adalah dapat ditraining untuk domain spesifik, seperti citra retina, tetapi model ini tidak dapat digunakan untuk kompresi citra yang lain.[5]


## III. Analisis Kode

- Model hanya bisa pada gambar spesifik, tidak bisa pada gambar lain. Jika ingin model yang general, perlu dilakukan training dengan banyak gambar.
- Output tidak sama persis dengan input karena training model AE yang kurang banyak. Jika training model AE lebih banyak, maka output akan lebih mirip dengan input.

## IV. Kesimpulan

Autoencoder (AE) adalah salah satu teknik Deep Learning yang dapat digunakan untuk kompresi citra. AE terdiri dari dua bagian, encoder dan decoder. Encoder berfungsi untuk mengubah data input menjadi representasi yang lebih sederhana (latent space), sedangkan decoder berfungsi untuk mengubah representasi tersebut menjadi data output yang sama dengan data input. Dengan demikian, AE dapat digunakan untuk melakukan kompresi data. 
Beberapa model AE yang dapat digunakan untuk kompresi citra adalah ConvAE-512 yang menggunakan Convolutional Neural Network (CNN) untuk Autoencodernya, Long and Short Attention Module yang menggunakan Attention Mechanism untuk memperhatikan bagian penting dari gambar, Variable-Rate Learned Image Compression yang menggunakan multi-objective optimization untuk training satu model yang dapat melakukan kompresi dengan berbagai level, dan Region-Based Retinal Image Compression yang menggunakan Convolutional AE untuk kompresi citra yang tidak penting dan Arithmetic Encoding untuk kompresi citra yang penting.
Kesimpulannya, AE memiliki kelebihan dibaning metode kompresi konvensional, yaitu dapat melakukan kompresi dengan kualitas yang lebih baik dan ukuran file yang lebih kecil. Namun, AE juga memiliki kekurangan, yaitu proses kompresi dan dekompresi yang lebih lama dan model yang lebih kompleks. Oleh karena itu, pemilihan model AE yang tepat sangat penting untuk aplikasi kompresi citra yang baik.
Selain itu, salah satu kelebihan terbesar AE adalah dapat ditraining untuk domain spesifik, seperti citra retina. Dengan demikian, AE dapat digunakan untuk kompresi citra yang spesifik, seperti citra retina, yang memiliki detail-detail yang penting untuk diagnosis medis.


