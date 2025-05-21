**Kelompok 13**

**Laporan UTS**

**![][image1]**

Ditulis Oleh:

Edgrant Henderson Suryajaya 2206025016

Muhammad Fahish Haritsah Bimo 2206059616

Aria Bima Sakti 2206062970

Muhammad Nadhif Fasichul Ilmi 2206813416

COMPUTER ENGINEERING STUDY PROGRAM

FACULTY OF ENGINEERING

UNIVERSITY OF INDONESIA

2024/2025

# **Daftar Isi** {#daftar-isi}

**[Daftar Isi 2](#daftar-isi)**

[**Kata Pengantar 3**](#kata-pengantar)

[**Bab 1 \- Pendahuluan 4**](#bab-1---pendahuluan)

[1.1 Latar Belakang 4](#latar-belakang)

[1.2 Permasalahan 4](#permasalahan)

[1.3 Solusi 5](#solusi)

[**Bab 2 \- Rancangan Kerja Sistem 6**](#bab-2---rancangan-kerja-sistem)

[2.1 Tujuan Laporan dan Proyek 6](#tujuan-laporan-dan-proyek)

[2.2 Deskripsi Sistem 6](#deskripsi-sistem)

[2.3 Ruang Lingkup Proyek 8](#ruang-lingkup-proyek)

[**Bab 3 \- Kebutuhan Sistem 10**](#bab-3---kebutuhan-sistem)

[3.1 Tujuan Objektif 10](#tujuan-objektif)

[3.1.1 Prioritas Tinggi 10](#prioritas-tinggi)

[3.1.2 Prioritas Sedang 11](#prioritas-sedang)

[3.1.3 Prioritas Rendah 11](#prioritas-rendah)

[3.2 Tujuan Non Objektif 11](#tujuan-non-objektif)

[3.2.1 Reliability 12](#reliability)

[3.2.2 Usability 12](#usability)

[3.2.3 Performance 12](#performance)

[3.2.4 Security 12](#security)

[3.2.5 Supportability 13](#supportability)

[3.2.6 Purchased Components 13](#purchased-components)

[**Bab 4 \- Rancangan Kerja Sistem 14**](#bab-4---rancangan-kerja-sistem)

[4.1 Deskripsi Aplikasi 14](#deskripsi-aplikasi)

[4.1.1 Fitur Utama 14](#fitur-utama)

[4.1.2 Fitur Tambahan 15](#fitur-tambahan)

[4.1.3 Fitur Admin 15](#fitur-admin)

[4.2 Penjelasan Node 16](#penjelasan-node)

[4.2.1 Source Node 16](#source-node)

[4.2.2 Assembly Node 16](#assembly-node)

[4.2.3 Distribution Node 17](#distribution-node)

[4.3 Penjelasan User Roles 18](#penjelasan-user-roles)

[4.3.1 Admin Pusat 18](#admin-pusat)

[4.3.2 Admin Node 19](#admin-node)

[4.3.3 Petugas 20](#petugas)

[**Lampiran 22**](#lampiran)

[**Literature Review 22**](#literature-review)

# **Kata Pengantar** {#kata-pengantar}

Puji syukur kami panjatkan kehadirat Tuhan Yang Maha Esa, karena atas berkat dan rahmat-Nya kami dapat menyelesaikan laporan ini dengan baik. Laporan ini disusun sebagai bagian dari mata kuliah Desain Proyek 1 (Despro 1\) yang diampu oleh Bapak Yan Maraden, S.T., M.T., M.Sc. Laporan ini berisi tentang spesifikasi kebutuhan sistem tracking inventaris Makanan Bergizi Gratis (MBG) berbasis QR Code yang kami kembangkan.

Kami mengucapkan terima kasih kepada semua pihak yang telah membantu dalam penyusunan laporan ini, terutama kepada

1. **Bapak Alfan Prasekal, S.T., M.Sc.,** selaku dosen pembimbing kelompok 13 yang telah memberikan bimbingan dan arahan selama proses penyusunan laporan ini.
2. **Bapak Yan Maraden, S.T., M.T., M.Sc.,** selaku dosen pengampu mata kuliah Despro 1 yang telah memberikan ilmu dan pengetahuan yang bermanfaat bagi kami.

Kami menyadari bahwa laporan ini masih jauh dari sempurna, oleh karena itu kami sangat mengharapkan kritik dan saran yang membangun dari semua pihak demi perbaikan di masa yang akan datang. Semoga laporan ini dapat bermanfaat bagi kita semua.

Hormat kami,

**Kelompok 13**

- Edgrant Henderson Suryajaya (2206025016)
- Muhammad Fahish Haritsah Bimo (2206059616)
- Aria Bima Sakti (2206062970)
- Muhammad Nadhif Fasichul Ilmi (2206813416)

Universitas Indonesia 2024/2025

# **Bab 1 \- Pendahuluan** {#bab-1---pendahuluan}

1. ## Latar Belakang {#latar-belakang}

   Program Makanan Bergizi Gratis (MBG) merupakan inisiatif yang digagas oleh pemerintah sebagai upaya untuk meningkatkan gizi, kesehatan, dan kualitas pendidikan bagi anak-anak sekolah serta kelompok rentan. Program ini bertujuan untuk memastikan bahwa semua anak, terutama mereka yang berasal dari keluarga kurang mampu, mendapatkan akses terhadap makanan sehat dan bergizi secara gratis. Dengan adanya program ini, diharapkan angka stunting dapat berkurang secara signifikan, serta membantu anak-anak dalam meningkatkan konsentrasi dan prestasi akademik mereka di sekolah.

   Namun, dalam pelaksanaannya, terdapat berbagai tantangan yang menghambat efektivitas distribusi makanan dalam program MBG. Salah satu aspek yang menjadi perhatian utama adalah sistem distribusi dan manajemen inventaris yang belum optimal, sehingga mengakibatkan berbagai permasalahan.

2. ## Permasalahan {#permasalahan}

   Beberapa masalah utama yang sering terjadi dalam implementasi program MBG adalah sebagai berikut :

- **Ketidaksesuaian Jumlah Bantuan:** Sekolah sering menerima jumlah makanan yang tidak sesuai dengan yang dijanjikan, baik lebih sedikit maupun lebih banyak.

- **Kehilangan Barang dalam Logistik:** Kurangnya pelacakan inventaris menyebabkan banyak barang hilang selama proses distribusi, dari gudang, dapur, hingga sekolah.

- **Keterbatasan Akses Informasi Admin Logistik:** Pencatatan manual menghambat akses admin logistik terhadap informasi stok dan pengiriman yang akurat dan cepat.

- **Tidak Ada Sistem Pelacakan Inventaris:** Ketiadaan sistem pelacakan otomatis menyulitkan pemantauan pergerakan barang dan pengelolaan inventaris..

3. ## Solusi {#solusi}

   Solusi yang kelompok kami tawarkan adalah Sistem Tracking Inventaris MBG berbasis QR Code. Dengan mengimplementasikan teknologi QR Code, setiap barang yang masuk dan keluar dari gudang, dapur, dan sekolah akan dilacak dan di-_update_ inventarisnya secara otomatis, meminimalkan kesalahan pencatatan manual dan memastikan akurasi data inventaris secara _real-time_. Dashboard monitoring _real-time_ akan memberikan visibilitas penuh kepada admin logistik, memungkinkan mereka untuk memantau status inventaris di setiap node dan mengambil keputusan cepat dalam mengatasi masalah distribusi.

   Selain itu, sistem ini akan mencakup sistem pelaporan ketidaksesuaian barang oleh penerima, memungkinkan tindakan lanjut yang cepat untuk mengatasi masalah dan mencegah terulangnya kesalahan.

#

# **Bab 2 \- Rancangan Kerja Sistem** {#bab-2---rancangan-kerja-sistem}

1. ## Tujuan Laporan dan Proyek {#tujuan-laporan-dan-proyek}

   Laporan ini disusun untuk mendokumentasikan proses perancangan dan pengembangan Sistem Tracking Inventaris MBG berbasis QR Code. Tujuan utama dari laporan ini adalah sebagai acuan bagi tim pengembang, pemangku kepentingan, serta pihak terkait dalam memahami sistem yang telah dirancang. Selain itu, laporan ini juga berfungsi sebagai bahan evaluasi terhadap efektivitas sistem dalam meningkatkan efisiensi distribusi program Makanan Bergizi Gratis (MBG). Dengan adanya dokumentasi ini, diharapkan sistem dapat terus dikembangkan dan disesuaikan dengan kebutuhan yang ada.

   Proyek Sistem Tracking Inventaris MBG berbasis QR Code bertujuan untuk memastikan distribusi makanan bergizi dapat berjalan lebih efisien, transparan, dan akuntabel. Sistem ini dirancang untuk mengurangi kesalahan dalam pencatatan distribusi, meningkatkan akurasi data inventaris, serta meminimalkan kehilangan barang selama proses distribusi. Dengan fitur dashboard monitoring real-time, pengguna dapat dengan mudah melacak pergerakan barang dari gudang hingga ke sekolah, sehingga setiap transaksi dapat terpantau dengan jelas. Selain itu, sistem ini juga memungkinkan pengguna untuk melaporkan ketidaksesuaian barang, sehingga dapat dilakukan perbaikan dalam proses distribusi ke depannya. Melalui pengembangan sistem ini, diharapkan distribusi makanan bergizi dalam program MBG dapat berjalan lebih optimal dan memberikan manfaat yang maksimal bagi masyarakat​.

2. ## Deskripsi Sistem {#deskripsi-sistem}

   Sistem yang dirancang adalah Sistem Tracking Inventaris MBG berbasis QR Code, yang bertujuan untuk meningkatkan otomasi, efisiensi, dan akurasi dalam distribusi Makanan Bergizi Gratis (MBG). Sistem ini memungkinkan pemantauan inventaris secara real-time dari gudang, dapur, hingga sekolah, guna memastikan bahwa setiap barang atau paket makanan yang dikirim dapat dilacak dengan akurat dan terdokumentasi dengan baik​.

   **Fitur utama dari sistem ini meliputi :**

- Tracking Inventaris Berbasis QR Code
  - Setiap barang atau paket makanan diberi QR Code unik untuk memastikan bahwa seluruh proses distribusi dapat dipantau secara real-time.
- Pembaruan Inventaris Otomatis
  - Setiap transaksi masuk dan keluar dari gudang, dapur, atau sekolah akan secara otomatis diperbarui dalam sistem guna meminimalkan kesalahan pencatatan manual.
- Dashboard Monitoring Real-time
  - Memungkinkan admin logistik untuk memantau stok di setiap node, serta mendeteksi dan menindaklanjuti ketidaksesuaian barang dengan cepat.
- Sistem Pelaporan Ketidaksesuaian Barang
  - Pihak penerima dapat melaporkan jika ada ketidaksesuaian jumlah atau kondisi barang yang diterima, sehingga dapat segera dilakukan tindak lanjut untuk perbaikan.
- **Sistem Hak Akses Pengguna**

  - Sistem ini dilengkapi dengan fitur hak akses yang membatasi dan mengatur izin bagi setiap pengguna sesuai dengan peran dan tanggung jawabnya dalam rantai distribusi. Dengan adanya sistem ini, hanya pengguna yang memiliki izin yang dapat mengakses data atau fitur tertentu, memastikan keamanan dan integritas data.

  Dengan adanya sistem ini, diharapkan distribusi makanan dalam program MBG menjadi lebih efisien, transparan, dan akuntabel. Selain itu, sistem ini dapat membantu mengurangi risiko kehilangan barang serta meningkatkan kepercayaan terhadap program MBG oleh pihak sekolah, masyarakat, maupun pemerintah​.

3. ## Ruang Lingkup Proyek {#ruang-lingkup-proyek}

   Ruang lingkup proyek ini adalah sistem berbasis web yang dirancang untuk mendukung pencatatan, pemantauan, serta pengelolaan inventaris dalam distribusi Makanan Bergizi Gratis (MBG). Sistem ini bertujuan untuk memastikan bahwa setiap barang yang dikirim dari gudang ke dapur, hingga ke sekolah dapat dilacak dengan akurat dan terdokumentasi dengan menggunakan QR Code. Dengan adanya sistem ini, setiap perpindahan barang dalam rantai distribusi MBG dapat dimonitor sehingga mengurangi risiko kehilangan barang serta meningkatkan akurasi pencatatan inventaris.

**Batasan proyek ini adalah sebagai berikut:**

- Sistem tidak mencakup transaksi keuangan atau pembayaran dalam pengadaan bahan baku dan logistik.
- Sistem tidak menggunakan teknologi blockchain, melainkan berbasis database konvensional untuk memastikan efisiensi dalam pencatatan inventaris.
- Tidak ada integrasi langsung dengan sistem pemerintah, tetapi laporan distribusi dapat diakses oleh pihak berwenang jika diperlukan.
- Keamanan sistem hanya mencakup perlindungan akses dengan autentikasi pengguna, tanpa mencakup enkripsi tingkat lanjut atau sistem keamanan berbasis AI.
- Sistem tidak mencakup pelacakan nutrisi bahan baku dan produk pangan.
- Sistem tidak mencakup pelacakan paket secara waktu nyata (_real-time_).
- Sistem tidak mencakup pengawasan bahan baku sebelum sampai di gudang.
- Sistem tidak mencakup pengawasan produk pangan setelah diterima di sekolah.

#

# **Bab 3 \- Kebutuhan Sistem** {#bab-3---kebutuhan-sistem}

1. ## Tujuan Objektif {#tujuan-objektif}

   Tujuan objektif adalah target-target yang ingin dicapai dalam sistem ini berdasarkan kebutuhan pengguna dan stakeholder. Tujuan ini mencakup pengembangan fitur-fitur yang akan mempermudah proses distribusi makanan bergizi gratis (MBG) serta meningkatkan akurasi dan efisiensi dalam manajemen inventaris. Tujuan objektif ini juga mencakup pengembangan sistem yang dapat diakses oleh semua pengguna dengan berbagai tingkat hak akses, sehingga setiap pengguna dapat melakukan tugasnya dengan mudah dan efisien.

1. ### Prioritas Tinggi {#prioritas-tinggi}

- **Pengembangan Database Inventaris:** Mengembangkan database inventaris yang terpisah untuk masing-masing node (Gudang, Dapur, dan Sekolah), sehingga setiap admin node dapat mengakses dan mengelola data inventaris di node-nya.

- **Fitur Pemindaian QR pada Pengiriman Barang:** Mengimplementasikan fitur scan QR untuk paket barang yang dikirim oleh petugas node pengirim. Saat pemindaian dilakukan, sistem secara otomatis menghapus data barang dari database inventaris node pengirim.

- **Fitur Pemindaian QR pada Penerimaan Barang:** Mengimplementasikan fitur scan QR untuk paket barang yang diterima oleh petugas node penerima. Pemindaian ini akan memicu sistem untuk secara otomatis menambahkan data barang ke database inventaris node penerima.

- **Fitur Quick Menu untuk Pengolahan Bahan Baku:** Menyediakan opsi bagi petugas dapur untuk memilih bahan baku yang akan diolah menjadi makanan siap saji melalui quick menu. Pemilihan bahan baku ini secara otomatis akan mengurangi jumlah stok bahan baku yang diperlukan.

2. ### Prioritas Sedang {#prioritas-sedang}

- **Fitur Pembuatan Temporary Menu:** Mengembangkan fitur yang memungkinkan petugas dapur membuat temporary menu baru. Menu ini hanya dapat diakses oleh petugas dapur di node terkait.

- **Fitur Konfirmasi Menu oleh Node Admin:** Menyediakan mekanisme bagi node admin untuk mengkonfirmasi menu yang dibuat oleh petugas dapur. Setelah dikonfirmasi, menu tersebut akan dapat diakses oleh petugas dapur pada node lain.

- **Fitur Pelaporan Ketidaksesuaian:** Mengembangkan fitur bagi petugas node penerima untuk melaporkan ketidaksesuaian barang yang diterima. Laporan ini akan ditampilkan kepada admin serta mengindikasikan node asal pengiriman barang yang tidak sesuai.

3. ### Prioritas Rendah {#prioritas-rendah}

- **Informasi Detail Paket Melalui Pemindaian QR:** Mengembangkan fitur yang memungkinkan petugas node untuk mendapatkan informasi detail mengenai paket barang dengan memindai kode QR pada paket tersebut. Fitur ini akan menampilkan informasi seperti asal pengiriman, tujuan penerimaan, isi paket, cara penyimpanan yang baik, tanggal kadaluarsa, dan lain-lain.

- **Integrasi Sistem Logistik Alternatif:** Menyediakan opsi untuk membuat sistem logistik baru yang terpisah dan tidak terhubung dengan sistem logistik yang sudah ada. Hal ini memungkinkan fleksibilitas dalam pemilihan beberapa mitra logistik yang berbeda.

2. ## Tujuan Non Objektif {#tujuan-non-objektif}

   Tujuan non objektif adalah target-target yang ingin dicapai dalam sistem ini yang tidak terkait langsung dengan kebutuhan pengguna dan stakeholder, tetapi lebih kepada aspek teknis dan operasional dari sistem. Tujuan ini mencakup pengembangan sistem yang dapat diandalkan, aman, dan mudah digunakan oleh semua pengguna.

1. ### Reliability {#reliability}

- Sistem harus tersedia 24/7 setidaknya 99% dari waktu, kecuali saat maintenance.

- Setidaknya 95% Scan QR harus menghasilkan data yang benar, jika tidak maka sistem harus memberikan notifikasi error.

- Setiap perubahan data inventaris harus tercatat dan dapat diakses oleh admin.

- Tidak boleh ada data inventaris yang hilang atau terhapus tanpa sepengetahuan admin.

- Tidak boleh ada data inventaris yang terduplikasi.

- Setiap laporan ketidaksesuaian harus tercatat dan dapat diakses oleh admin.

2. ### Usability {#usability}

- Role node admin harus mudah dipahami tanpa latar belakang IT dengan memberikan petunjuk penggunaan.

- Role petugas harus mudah dipahami tanpa pendidikan formal tanpa diberikan pelatihan.

- Setiap fitur harus memiliki dokumentasi yang jelas dan mudah dipahami.

- Setiap fitur harus memiliki panduan penggunaan yang mudah diakses.

- Setiap fitur harus memiliki notifikasi error yang jelas dan mudah dipahami.

- Setiap fitur harus memiliki notifikasi sukses yang jelas dan mudah dipahami.

- Setiap fitur harus dapat diakses dari halaman utama dengan maksimal 5 klik.

- User yang sudah mengetahui menu tidak perlu menggunakan lebih dari 10 detik untuk menggunakannya.

3. ### Performance {#performance}

- Setiap halaman harus dapat dimuat dalam waktu kurang dari 5 detik dengan asumsi koneksi internet 384 kbps (3G).

- Sistem harus mampu menangani hingga 10 pengguna secara bersamaan.

- Setiap resource media jika tidak dapat dimuat harus memberikan alternatif teks.

4. ### Security {#security}

- Setiap data sensitif yang disimpan harus dienkripsi.

- Setiap data yang dikirimkan antar node harus dienkripsi.

- Autentikasi harus menggunakan metode yang aman.

- Setiap perubahan data inventaris harus di-log dan dapat diakses oleh admin.

- Setiap laporan ketidaksesuaian harus di-log dan dapat diakses oleh admin.

- Setiap perubahan data inventaris harus dapat di-rollback.

- Setiap laporan ketidaksesuaian harus dapat di-rollback.

5. ### Supportability {#supportability}

- Perubahan topology node harus dapat dilakukan dan tanpa downtime.

- Penambahan jenis barang harus dapat dilakukan dan segera dapat digunakan oleh semua node.

- Konfirmasi menu harus dapat dilakukan oleh node admin dan segera dapat digunakan oleh semua node.

- Sistem perlu dapat digunakan pada perangkat Android 12 ke atas.

6. ### Purchased Components {#purchased-components}

- Nama domain yang akan berfungsi sebagai alamat website.

- Cloud service provider untuk menyimpan data dan menjalankan aplikasi, jika diperlukan.

- Printer label untuk mencetak QR code.

- Kotak kardus untuk mengemas barang yang akan dikirim sebagai simulasi pada workshop.

- Bahan baku untuk membuat makanan siap saji sebagai simulasi pada workshop.

# **Bab 4 \- Rancangan Kerja Sistem** {#bab-4---rancangan-kerja-sistem}

1. ## Deskripsi Aplikasi {#deskripsi-aplikasi}

   Aplikasi ini adalah sistem berbasis web yang dirancang untuk mendukung pencatatan, pemantauan, serta pengelolaan inventaris dalam distribusi Makanan Bergizi Gratis (MBG).

1. ### Fitur Utama {#fitur-utama}

Terdapat lima fitur utama yang akan membantu pengguna dalam menjalankan tugasnya, antara lain:

- **Inventaris Setiap Node:** Setiap node (Gudang, Dapur, Sekolah) memiliki database inventaris yang terpisah. Admin node dapat mengelola data inventaris di _node_\-nya masing-masing.

- **Pemindaian QR pada Pengiriman Barang:** Petugas node pengirim dapat melakukan pemindaian QR pada paket barang yang akan dikirim. Pemindaian ini akan menghapus data barang dari database inventaris node pengirim.

- **Pemindaian QR pada Penerimaan Barang:** Petugas node penerima dapat melakukan pemindaian QR pada paket barang yang diterima. Pemindaian ini akan menambahkan data barang ke database inventaris node penerima.

- **Pengolahan Bahan Baku:** Petugas dapur dapat memilih bahan baku yang akan diolah menjadi makanan siap saji melalui quick menu. Pemilihan ini akan mengurangi jumlah stok bahan baku yang diperlukan dan menambah jumlah stok makanan jadi yang dihasilkan.

- **Pelaporan Ketidaksesuaian:** Petugas node penerima dapat melaporkan ketidaksesuaian barang yang diterima. Laporan ini akan ditampilkan kepada admin dan mengindikasikan node asal pengiriman barang yang tidak sesuai.

2. ### Fitur Tambahan {#fitur-tambahan}

Selain lima fitur utama tersebut, aplikasi ini juga dilengkapi dengan fitur pendukung lainnya, seperti:

- **Pembuatan Temporary Menu:** Petugas dapur dapat membuat temporary menu baru yang hanya dapat diakses oleh petugas dapur di node terkait. Temporary menu dapat dikonfirmasi oleh node admin agar dapat diakses oleh petugas dapur pada node lain.

- **Informasi Detail Paket:** Petugas node dapat mendapatkan informasi detail mengenai paket barang dengan memindai kode QR pada paket tersebut. Fitur ini akan menampilkan informasi seperti asal pengiriman, tujuan penerimaan, isi paket, cara penyimpanan yang baik, tanggal kadaluarsa, dan lain-lain.

- **Integrasi Sistem Logistik Alternatif:** Sistem ini menyediakan opsi untuk membuat sistem logistik baru yang terpisah dan tidak terhubung dengan sistem logistik yang sudah ada. Hal ini memungkinkan fleksibilitas dalam pemilihan beberapa mitra logistik yang berbeda.

3. ### Fitur Admin {#fitur-admin}

Setelah itu, terdapat fitur tambahan khusus admin node dan admin pusat, antara lain:

- **Pengelolaan Data Petugas:** Admin node dapat mengelola data petugas di _node_\-nya masing-masing, termasuk menambah, mengedit, dan menghapus akun pengguna. Admin pusat dapat mengelola data petugas di seluruh node.

- **Pengelolaan Inventaris:** Admin node dapat mengelola data inventaris di _node_\-nya masing-masing, termasuk menambah, mengedit, dan menghapus data inventaris. Admin pusat dapat mengelola data inventaris di seluruh node.

- **Pengelolaan Node:** Admin pusat dapat mengelola data node, termasuk menambah, mengedit, dan menghapus data node. Admin node tidak dapat mengelola data node.

- **Pengelolaan Laporan Ketidaksesuaian:** Admin pusat dapat mengelola laporan ketidaksesuaian yang diterima dari seluruh node. Admin node dapat mengelola dan menindaklanjuti laporan ketidaksesuaian yang diterima dari _node_\-nya masing-masing.

- **Dashboard Monitoring:** Admin pusat dapat memantau seluruh alur distribusi, mulai dari gudang, dapur, hingga ke pihak sekolah sebagai penerima akhir. Admin node dapat memantau alur distribusi di _node_\-nya masing-masing.

2. ## Penjelasan Node {#penjelasan-node}

Terdapat tiga node dalam sistem ini, yaitu Gudang, Dapur, dan Sekolah. Dalam sistem akan disebut sebagai Source Node, Assembly Node, dan Distribution Node agar dapat lebih generic dan dapat digunakan untuk sistem lain di luar MBG. Setiap node memiliki fungsi dan tanggung jawab yang berbeda dalam proses distribusi makanan bergizi gratis (MBG). Berikut adalah deskripsi masing-masing node:

1. ### Source Node {#source-node}

Source Node, atau gudang, adalah titik awal dalam proses distribusi makanan. Di sini, bahan baku makanan diterima dan disimpan sebelum didistribusikan ke dapur. Tanggung jawab dari source node adalah sebagai berikut:

- Menerima bahan baku dari supplier dan menyimpannya dalam inventaris.

- Membuat QR Code untuk setiap paket bahan baku yang akan dikirim ke dapur.

- Melakukan pemindaian QR Code pada paket bahan baku yang akan dikirim ke dapur.

2. ### Assembly Node {#assembly-node}

Assembly Node, atau dapur, adalah titik di mana bahan baku diolah menjadi makanan siap saji. Tanggung jawab dari assembly node adalah sebagai berikut:

- Memindai QR Code pada paket bahan baku yang diterima dari gudang dan menyimpannya dalam inventaris dapur.

- Memastikan bahwa bahan baku yang diterima dalam kondisi baik dan sesuai dengan yang tercatat dalam sistem, jika tidak sesuai maka pekerja dapur harus melaporkan ketidaksesuaian.

- Mengelola bahan baku yang diterima dan memastikan bahwa jumlah yang diterima sesuai dengan yang tercatat dalam sistem.

- Mengolah bahan baku menjadi makanan siap saji sesuai dengan menu yang telah ditentukan.

- Membuat menu baru jika makan siap saji yang ingin dibuat tidak ada dalam daftar menu yang sudah ada.

- Membuat QR Code untuk setiap paket makanan siap saji yang akan didistribusikan ke sekolah.

- Melakukan pemindaian QR Code pada paket makanan siap saji yang akan didistribusikan ke sekolah.

3. ### Distribution Node {#distribution-node}

Distribution Node, atau sekolah, adalah titik akhir dalam proses distribusi makanan. Di sini, makanan siap saji diterima dan didistribusikan kepada siswa. Tanggung jawab dari distribution node adalah sebagai berikut:

- Memindai QR Code pada paket makanan siap saji yang diterima dari dapur dan menyimpannya dalam inventaris sekolah.

- Memastikan bahwa makanan siap saji yang diterima dalam kondisi baik dan sesuai dengan yang tercatat dalam sistem, jika tidak sesuai maka pihak sekolah harus melaporkan ketidaksesuaian.

![][image2]

**Gambar 4.1.** Diagram Tanggung Jawab Node

3. ## Penjelasan User Roles {#penjelasan-user-roles}

Terdapat tiga user roles dalam sistem ini, yaitu Admin Pusat, Admin Node, dan Petugas. Setiap role memiliki hak akses dan tanggung jawab yang berbeda dalam sistem. Selain itu, setiap role yang sama pada jenis node yang berbeda memiliki sedikit perbedaan tergantung pada jenis nodenya. Berikut adalah deskripsi masing-masing user roles:

1. ### Admin Pusat {#admin-pusat}

Admin Pusat adalah pengguna yang memiliki hak akses penuh terhadap seluruh sistem. Hak akses ini mencakup pengelolaan data petugas, sekolah, jadwal distribusi, serta pemantauan data seluruh laporan. Untuk lebih rincinya, hak admin pusat dapat dilihat pada 4.1.3

2. ### Admin Node {#admin-node}

Admin Node adalah pengguna yang memiliki hak akses administrator terbatas pada _node_\-nya masing-masing. Hak akses ini mencakup pengelolaan data petugas, sekolah, jadwal distribusi, serta pemantauan data seluruh laporan di _node_\-nya. Untuk lebih rincinya, hak admin node dapat dilihat pada 4.1.3.

Seluruh admin node memiliki hak sebagai berikut:

- **Pengelolaan Data Petugas:** Admin node dapat mengelola data petugas di _node_\-nya masing-masing, termasuk menambah, mengedit, dan menghapus akun petugas. Admin node juga dapat memberikan hak akses kepada petugas sesuai dengan peran dan tanggung jawabnya.

- **Pengelolaan Inventaris:** Admin node dapat mengelola data inventaris di _node_\-nya masing-masing, termasuk menambah, mengedit, dan menghapus data inventaris.

- **Pengelolaan Laporan Ketidaksesuaian:** Admin node dapat mengelola laporan ketidaksesuaian yang diterima dari _node_\-nya masing-masing. Admin node juga dapat menindaklanjuti laporan ketidaksesuaian yang diterima dari _node_\-nya masing-masing.

- **Monitoring Alur Distribusi:** Admin node dapat memantau alur distribusi di _node_\-nya masing-masing. Admin node juga dapat melihat laporan distribusi yang telah dilakukan oleh petugas di _node_\-nya.

Selain itu, terdapat hak akses tambahan yang dimiliki oleh admin node sesuai dengan jenis _node_\-nya:

- **Admin Gudang:** Admin gudang memiliki hak untuk membuat QR Code untuk setiap paket bahan baku yang akan dikirim ke dapur.

- **Admin Dapur:** Admin dapur memiliki hak untuk mengkonfirmasi menu yang dibuat oleh petugas dapur. Selain itu, admin dapur juga dapat membuat QR Code untuk setiap paket makanan siap saji yang akan didistribusikan ke sekolah.

- **Admin Sekolah:** Admin sekolah tidak memiliki hak akses tambahan selain hak akses yang sama dengan admin node lainnya.

3. ### Petugas {#petugas}

Petugas adalah pengguna yang memiliki hak akses terbatas. Hak akses ini mencakup pemindaian QR Code pada paket barang yang diterima dan dikirim, serta pelaporan ketidaksesuaian barang. Petugas tidak dapat melihat data inventaris, tidak dapat mengelola data petugas, dan tidak dapat melihat laporan ketidaksesuaian; petugas hanya memiliki hak yang disebutkan sebelumnya. Namun, tergantung pada jenis _node_\-nya, petugas memiliki hak akses tambahan sebagai berikut:

- **Petugas Gudang:** Petugas gudang memiliki hak tambahan untuk menambah jumlah stok bahan baku yang diterima dari supplier. Petugas gudang tidak dapat membuat QR Code, hal ini hanya dapat dilakukan oleh admin gudang.

- **Petugas Dapur:** Petugas dapur memiliki hak tambahan untuk mengolah bahan baku menjadi makanan siap saji sesuai dengan menu yang terdapat pada daftar menu. Petugas dapur juga dapat membuat menu baru jika menu yang ingin dibuat tidak ada dalam daftar menu yang sudah ada. Petugas dapur tidak dapat membuat QR Code, hal ini hanya dapat dilakukan oleh admin dapur.

- **Petugas Sekolah:** Petugas sekolah tidak memiliki hak akses tambahan selain hak akses yang sama dengan petugas node lainnya.

  Dengan implementasi solusi ini, diharapkan distribusi makanan menjadi lebih efisien, akuntabel, dan transparan, serta memudahkan pengawasan dan evaluasi program MBG. Sistem ini juga akan mencakup manajemen bahan baku di dapur dan verifikasi pengiriman makanan ke sekolah, memastikan setiap tahap distribusi tercatat dengan akurat.

  Sistem Tracking Inventaris MBG berbasis QR Code secara langsung mengatasi masalah ketidaksesuaian jumlah bantuan, kehilangan barang, keterbatasan akses informasi admin logistik, dan ketiadaan sistem pelacakan inventaris. Dengan pelacakan otomatis, visibilitas _real-time_, dan sistem pelaporan yang terintegrasi, solusi ini memastikan distribusi makanan yang lebih efisien, memiliki akuntabilitas, dan transparan, sehingga program MBG dapat mencapai tujuannya secara optimal.

**Gambar 4.2.** Diagram Hubungan Node dan Tanggung Jawab User

#

# **Lampiran** {#lampiran}

## Literature Review {#literature-review}

Literatur yang digunakan dalam proyek ini terdiri dari tiga jurnal utama yang membahas penerapan QR Code dalam sistem pelacakan rantai pasok pangan. Jurnal pertama berjudul _“Nutritional Quality and Safety Traceability System for China’s Leafy Vegetable Supply Chain”_ karya Yuhong Dong dkk., menjelaskan penerapan QR Code dalam sistem pelacakan kualitas dan keamanan pangan berbasis analisis Fault Tree (FTA) dan metode HACCP. QR Code digunakan untuk mencatat informasi nutrisi dan keamanan yang dapat diakses oleh konsumen, dengan evaluasi kualitas nutrisi dilakukan menggunakan metode fuzzy mathematics. Namun, relevansi sistem ini untuk proyek kami cukup terbatas, karena pencatatan nutrisi tidak cocok diterapkan pada produk olahan yang mengalami perubahan kandungan selama proses pengolahan. Meskipun demikian, penggunaan QR Code untuk keperluan logistik sangat bermanfaat, terutama karena kemampuan koreksi kesalahannya yang tinggi.

Jurnal kedua, berjudul _“FoodSQRBlock: Digitizing Food Production and the Supply Chain with Blockchain and QR Code in the Cloud”_ oleh Somdip Dey dkk., mengembangkan sistem keterlacakan pangan berbasis Blockchain dan QR Code. Sistem ini memungkinkan pelacakan real-time mulai dari produksi hingga distribusi dengan menyimpan data secara immutable dalam Blockchain. QR Code berfungsi sebagai penghubung utama antara produk dan data perjalanan serta kondisi penyimpanannya. Teknologi cloud computing juga diintegrasikan untuk memungkinkan akses data yang cepat dan efisien. Sistem ini relevan sebagai inspirasi tambahan dalam proyek, khususnya jika ingin menyediakan informasi produk kepada pengguna akhir melalui pemindaian QR Code, meskipun fokus utama proyek kami lebih pada proses logistik internal.

Sementara itu, jurnal ketiga berjudul _“A Blockchain-Driven Food Supply Chain Management Using QR Code and XAI-Faster RCNN Architecture”_ karya Surbhi Bhatia dan Abdulaziz Saad Albarrak, mengusulkan sistem keterlacakan pangan yang menggabungkan QR Code, Blockchain, dan teknologi AI (Faster RCNN) untuk mendeteksi kontaminasi atau pemalsuan produk secara otomatis. Sistem ini berhasil meningkatkan akurasi pelacakan hingga 99,53% dan efisiensi operasional hingga 75% lebih cepat dibandingkan metode manual. Sistem ini menegaskan keunggulan QR Code dalam rantai pasok pangan, terutama dalam hal keamanan data, transparansi, dan pendeteksian dini terhadap produk tidak layak konsumsi.

Dari ketiga jurnal, dapat disimpulkan bahwa QR Code efektif dan fleksibel untuk pelacakan dalam rantai pasok pangan. Namun, pencatatan nilai gizi tidak disarankan dalam proyek ini karena keterbatasan data dan perubahan nutrisi selama pengolahan. Proyek kami lebih tepat menggunakan QR Code untuk pelacakan logistik, dengan desain yang mengutamakan koreksi kesalahan tinggi agar tetap mudah dipindai.

#
------------

**Despro Kelompok 13**

**Dokumentasi Page**


Ditulis Oleh:

Edgrant Henderson Suryajaya		2206025016

 

 

COMPUTER ENGINEERING STUDY PROGRAM

FACULTY OF ENGINEERING

UNIVERSITY OF INDONESIA

2024/2025

# Tujuan

Dokumentasi Page ini bertujuan untuk bertindak sebagai panduan bagi developer untuk mengembangkan sistem yang telah dirancang. Selain itu, dokumentasi ini juga bertujuan untuk memberikan gambaran umum tentang sistem.

1. ## Penjelasan Halaman

1. ### Halaman Super Admin

   #### Halaman Dashboard Super Admin

* **Accessible By:** Super Admin  
* **Description:** Menampilkan ringkasan data inventaris dari seluruh node.	

![][image1]

**Gambar 4.1.**		Wireframe Halaman Dashboard Super Admin

| Section Name | Section Description | Section Input | Section Output |
| :---- | :---- | :---- | :---- |
| Overview | Menampilkan ringkasan data inventaris dari seluruh node. | Button untuk berpindah ke halaman Inventory Management. | Data inventaris dari seluruh node. |
| Recent Reports | Menampilkan laporan ketidaksesuaian terbaru dari seluruh node. | Row dapat diklik untuk melihat detail laporan.  Button untuk berpindah ke halaman Report Management. | Daftar laporan ketidaksesuaian terbaru dari seluruh node. |

**Tabel 4.1.**		Section Halaman Dashboard Super Admin

---

#### Halaman Node Management Super Admin

* **Accessible By:** Super Admin  
* **Description:** Menampilkan daftar node yang terdaftar dalam sistem.

![][image2]

**Gambar 4.2.**		Wireframe Halaman Node Super Admin

| Section Name | Section Description | Section Input | Section Output |
| :---- | :---- | :---- | :---- |
| Node List | Menampilkan daftar node yang terdaftar dalam sistem. | Row dapat diklik untuk melihat detail node. Add Node Button untuk menambahkan node baru.  | Daftar node yang terdaftar dalam sistem. |
| Node Detail | Menampilkan detail dari node yang dipilih. | Button untuk berpindah ke halaman Node Detail yang menampilkan Node Inventory Management, Node User Management, Node Report Management, dan Node Menu Management.  Button untuk mengedit node. Button untuk menghapus node. | Detail dari node yang dipilih (nama, alamat, dan informasi lainnya). |
| Add Node Button | Menambahkan node baru ke dalam sistem. | Popup form untuk menambahkan node baru. |  |
| Delete Node Button | Menghapus node dari sistem. | Popup konfirmasi untuk menghapus node. |  |

**Tabel 4.2.**		Section Halaman Node Super Admin

---

#### Halaman User Management Super Admin

* **Accessible By:** Super Admin  
* **Description:** Menampilkan daftar petugas yang terdaftar dalam sistem.

![][image2]

**Gambar 4.3.**		Wireframe Halaman User Super Admin

| Section Name | Section Description | Section Input | Section Output |
| :---- | :---- | :---- | :---- |
| User List | Menampilkan daftar petugas yang terdaftar dalam sistem. | Row dapat diklik untuk melihat detail user.  Add User Button untuk menambahkan user baru.   Delete User Button pada setiap row untuk menghapus user.  Assign Role Button pada setiap row untuk memberikan peran kepada user. | Daftar user yang terdaftar dalam sistem. |
| User Detail | Menampilkan detail dari user yang dipilih. | Button untuk berpindah ke halaman User Detail yang menampilkan User Inventory Management dan User Report Management.  Button untuk mengedit user.  Button untuk menghapus user. Button untuk assign role. | Detail dari user yang dipilih (nama, alamat, dan informasi lainnya). |
| Assign Role Button | Memberikan peran kepada user yang terdaftar. | Popup form untuk memberikan peran kepada user yang terdaftar. | Daftar peran yang tersedia. |
| Add User Button | Menambahkan user baru ke dalam sistem. | Popup form untuk menambahkan user baru. |  |
| Delete User Button | Menghapus user dari sistem. | Popup konfirmasi untuk menghapus user. |  |

**Tabel 4.3.**		Section Halaman User Super Admin

---

#### Halaman Item Management Super Admin

* **Accessible By:** Super Admin  
* **Description:** Menampilkan daftar jenis barang yang terdaftar dalam sistem.

![][image2]

**Gambar 4.4.**		Wireframe Halaman Item Super Admin

| Section Name | Section Description | Section Input | Section Output |
| :---- | :---- | :---- | :---- |
| Item List | Menampilkan daftar jenis barang yang terdaftar dalam sistem. | Row dapat diklik untuk melihat detail item.  Add Item Button untuk menambahkan item baru.  Delete Item Button pada setiap row untuk menghapus item. | Daftar item yang terdaftar dalam sistem. |
| Item Detail | Menampilkan detail dari item yang dipilih. | Button untuk berpindah ke halaman Item Inventory Management.  Button untuk mengedit item.  Button untuk menghapus item. | Detail dari item yang dipilih (nama, kategori, dan informasi lainnya). |
| Add Item Button | Menambahkan item baru ke dalam sistem. | Popup form untuk menambahkan item baru. |  |
| Delete Item Button | Menghapus item dari sistem. | Popup konfirmasi untuk menghapus item. |  |

**Tabel 4.4.**		Section Halaman Item Super Admin

#### Halaman Inventory Management Super Admin

* **Accessible By:** Super Admin  
* **Description:** Menampilkan database inventaris dari node terkait.

![][image2]

**Gambar 4.5.**		Wireframe Halaman Inventory Super Admin

| Section Name | Section Description | Section Input | Section Output |
| :---- | :---- | :---- | :---- |
| Inventory List | Menampilkan database inventaris dari node terkait. | Row dapat diklik untuk melihat detail inventaris.  Add Inventory Button untuk menambahkan inventaris baru.  Delete Inventory Button pada setiap row untuk menghapus inventaris.  Transfer Inventory Button pada setiap row untuk memindahkan inventaris ke node lain. | Daftar inventaris dari node terkait. |
| Inventory Detail | Menampilkan detail dari inventaris yang dipilih. | Button untuk berpindah ke halaman Item Management.  Button untuk menghapus inventaris.  Button untuk transfer inventaris. Button untuk resolve QR code. | Detail dari inventaris yang dipilih (nama, kategori, dan informasi lainnya). |
| Add Inventory Button | Menambahkan inventaris baru ke dalam sistem. | Popup form untuk menambahkan inventaris baru. |  |
| Delete Inventory Button | Menghapus inventaris dari sistem. | Popup konfirmasi untuk menghapus inventaris. |  |
| Transfer Inventory Button | Memindahkan inventaris dari satu node ke node lain. | Popup form untuk memindahkan inventaris ke node lain. |  |
| Resolve QR Code | Menyelesaikan pemindaian QR code yang tidak terbaca. | Button untuk menyelesaikan pemindaian QR code. |  |

**Tabel 4.5.**		Section Halaman Inventory Super Admin

---

#### Halaman Report Management Super Admin

* **Accessible By:** Super Admin  
* **Description:** Menampilkan laporan ketidaksesuaian yang terjadi pada seluruh node.

![][image2]

**Gambar 4.6.**		Wireframe Halaman Report Super Admin

| Section Name | Section Description | Section Input | Section Output |
| :---- | :---- | :---- | :---- |
| Report List | Menampilkan daftar laporan ketidaksesuaian yang terjadi pada seluruh node. | Row dapat diklik untuk melihat detail laporan.  Add Report Button untuk menambahkan laporan baru.  Resolve Report Button pada setiap row untuk menandai laporan sebagai sudah ditangani. | Daftar laporan ketidaksesuaian yang terjadi pada seluruh node. |
| Report Detail | Menampilkan detail dari laporan yang dipilih. | Button untuk berpindah ke halaman Report Inventory Management.  Button untuk mengedit laporan. Button untuk menghapus laporan. Button untuk resolve laporan. | Detail dari laporan yang dipilih (nama, kategori, dan informasi lainnya). |
| Add Report Button | Menambahkan laporan baru ke dalam sistem. | Popup form untuk menambahkan laporan baru. |  |
| Resolve Report Button | Menandai laporan ketidaksesuaian sebagai sudah ditangani. | Popup konfirmasi untuk menandai laporan sebagai sudah ditangani. |  |

**Tabel 4.6.**		Section Halaman Report Super Admin

---

#### Halaman Menu Management Super Admin

* **Accessible By:** Super Admin  
* **Description:** Menampilkan menu yang telah dibuat oleh petugas dapur pada seluruh node.

![][image2]

**Gambar 4.7.**		Wireframe Halaman Menu Super Admin

| Section Name | Section Description | Section Input | Section Output |
| :---- | :---- | :---- | :---- |
| Menu List | Menampilkan menu yang telah dibuat oleh petugas dapur pada seluruh node. | Row dapat diklik untuk melihat detail menu.  Add Menu Button untuk menambahkan menu baru.  Delete Menu Button pada setiap row untuk menghapus menu.  Confirm Menu Button pada setiap row untuk mengkonfirmasi menu. | Daftar menu yang telah dibuat oleh petugas dapur pada seluruh node. |
| Menu Detail | Menampilkan detail dari menu yang dipilih. | Button untuk berpindah ke halaman Menu Detail yang menampilkan Menu Inventory Management.  Button untuk mengedit menu.  Button untuk menghapus menu. Button untuk mengkonfirmasi menu. | Detail dari menu yang dipilih (nama, kategori, dan informasi lainnya). |
| Add Menu Button | Menambahkan menu baru ke dalam sistem. | Popup form untuk menambahkan menu baru. |  |
| Delete Menu Button | Menghapus menu dari sistem. | Popup konfirmasi untuk menghapus menu. |  |
| Confirm Menu Button | Mengkonfirmasi menu yang telah dibuat oleh petugas dapur. | Popup konfirmasi untuk mengkonfirmasi menu. |  |

**Tabel 4.7.**		Section Halaman Menu Super Admin

### Halaman Node Admin

#### Halaman Dashboard Node Admin

* **Accessible By:** Semua Node Admin
* **Description:** Menampilkan ringkasan data inventaris dari node terkait.

![][image2]

**Gambar 4.8.**		Wireframe Halaman Dashboard Node Admin

| Section Name | Section Description | Section Input | Section Output |
| :---- | :---- | :---- | :---- |
| Overview | Menampilkan ringkasan data inventaris dari node terkait. | Button untuk berpindah ke halaman Inventory Management. | Data inventaris dari node terkait. |
| Recent Reports | Menampilkan laporan ketidaksesuaian terbaru dari node terkait. | Row dapat diklik untuk melihat detail laporan.  Button untuk berpindah ke halaman Report Management. | Daftar laporan ketidaksesuaian terbaru dari node terkait. |
| Recent Menu (Hanya untuk Assembly Node Admin) | Menampilkan menu terbaru yang telah dibuat oleh petugas dapur pada node terkait. | Row dapat diklik untuk melihat detail menu.  Button untuk berpindah ke halaman Menu Management. | Daftar menu terbaru yang telah dibuat oleh petugas dapur pada node terkait. |
| Add New Inventory (Hanya untuk Source Node Admin) | Menambahkan inventaris baru ke dalam sistem. | Popup form untuk menambahkan inventaris baru. |  |

**Tabel 4.8.**		Section Halaman Dashboard Node Admin

---

#### Halaman User Management Node Admin

* **Accessible By:** Semua Node Admin
* **Description:** Menampilkan daftar petugas yang terdaftar dalam sistem pada node terkait.

![][image2]

**Gambar 4.9.**		Wireframe Halaman User Node Admin

| Section Name | Section Description | Section Input | Section Output |
| :---- | :---- | :---- | :---- |
| User List | Menampilkan daftar petugas yang terdaftar dalam sistem pada node terkait. | Row dapat diklik untuk melihat detail user.  Add User Button untuk menambahkan user baru.  Delete User Button pada setiap row untuk menghapus user.  Assign Role Button pada setiap row untuk memberikan peran kepada user. | Daftar user yang terdaftar dalam sistem pada node terkait. |
| User Detail | Menampilkan detail dari user yang dipilih. | Button untuk berpindah ke halaman User Detail yang menampilkan User Inventory Management dan User Report Management.  Button untuk mengedit user.  Button untuk menghapus user. Button untuk assign role. | Detail dari user yang dipilih (nama, alamat, dan informasi lainnya). |
| Assign Role Button | Memberikan peran kepada user yang terdaftar. | Popup form untuk memberikan peran kepada user yang terdaftar. | Daftar peran yang tersedia. |
| Add User Button | Menambahkan user baru ke dalam sistem. | Popup form untuk menambahkan user baru. |  |
| Delete User Button | Menghapus user dari sistem. | Popup konfirmasi untuk menghapus user. |  |

**Tabel 4.9.**		Section Halaman User Node Admin

---

#### Halaman Inventory Management Node Admin

* **Accessible By:** Semua Node Admin
- **Description:** Menampilkan database inventaris dari node terkait. Inventory yang ditampilkan meliputi inventory yang ada di node tersebut, inventory yang ada di node lain yang sedang dalam proses pengiriman, dan inventory yang ada di node itu yang sedang dalam proses pengiriman ke node lain.

![][image2]

**Gambar 4.10.**		Wireframe Halaman Inventory Node Admin

| Section Name | Section Description | Section Input | Section Output |
| :---- | :---- | :---- | :---- |
| Inventory List | Menampilkan database inventaris dari node terkait. | Row dapat diklik untuk melihat detail inventaris.  Add Inventory Button untuk menambahkan inventaris baru.  Delete Inventory Button pada setiap row untuk menghapus inventaris.  Transfer Inventory Button pada setiap row untuk memindahkan inventaris ke node lain. | Daftar inventaris dari node terkait. |
| Inventory Detail | Menampilkan detail dari inventaris yang dipilih. | Button untuk berpindah ke halaman Item Management.  Button untuk menghapus inventaris.  Button untuk transfer inventaris. Button untuk resolve QR code. | Detail dari inventaris yang dipilih (nama, kategori, dan informasi lainnya). |
| Add Inventory Button | Menambahkan inventaris baru ke dalam sistem. | Popup form untuk menambahkan inventaris baru. |  |
| Delete Inventory Button | Menghapus inventaris dari sistem. | Popup konfirmasi untuk menghapus inventaris. |  |
| Transfer Inventory Button | Memindahkan inventaris dari satu node ke node lain. | Popup form untuk memindahkan inventaris ke node lain. |  |
| Resolve QR Code | Menyelesaikan pemindaian QR code yang tidak terbaca. | Button untuk menyelesaikan pemindaian QR code. |  |

**Tabel 4.10.**		Section Halaman Inventory Node Admin

---

#### Halaman Report Management Node Admin

* **Accessible By:** Semua Node Admin
* **Description:** Menampilkan laporan ketidaksesuaian yang terjadi pada node terkait.

![][image2]

**Gambar 4.11.**		Wireframe Halaman Report Node Admin

| Section Name | Section Description | Section Input | Section Output |
| :---- | :---- | :---- | :---- |
| Report List | Menampilkan daftar laporan ketidaksesuaian yang terjadi pada node terkait. | Row dapat diklik untuk melihat detail laporan.  Add Report Button untuk menambahkan laporan baru.  Resolve Report Button pada setiap row untuk menandai laporan sebagai sudah ditangani. | Daftar laporan ketidaksesuaian yang terjadi pada node terkait. |
| Report Detail | Menampilkan detail dari laporan yang dipilih. | Button untuk berpindah ke halaman Report Inventory Management.  Button untuk mengedit laporan. Button untuk menghapus laporan. Button untuk resolve laporan. | Detail dari laporan yang dipilih (nama, kategori, dan informasi lainnya). |
| Add Report Button | Menambahkan laporan baru ke dalam sistem. | Popup form untuk menambahkan laporan baru. |  |
| Resolve Report Button | Menandai laporan ketidaksesuaian sebagai sudah ditangani. | Popup konfirmasi untuk menandai laporan sebagai sudah ditangani. |  |

**Tabel 4.11.**		Section Halaman Report Node Admin

---

#### Halaman Item Management Node Admin

* **Accessible By:** Source Node Admin
* **Description:** Menampilkan daftar jenis barang yang dibuat oleh admin gudang pada node terkait, item yang dibuat dapat diakses global oleh semua node. Namun, source node admin hanya dapat mengedit item yang dibuat oleh admin gudang pada node tersebut. 

![][image2]

**Gambar 4.12.**		Wireframe Halaman Item Node Admin

| Section Name | Section Description | Section Input | Section Output |
| :---- | :---- | :---- | :---- |
| Item List | Menampilkan daftar jenis barang yang terdaftar dalam sistem pada node terkait. | Row dapat diklik untuk melihat detail item.  Add Item Button untuk menambahkan item baru.  Delete Item Button pada setiap row untuk menghapus item. | Daftar item yang terdaftar dalam sistem pada node terkait. |
| Item Detail | Menampilkan detail dari item yang dipilih. | Button untuk berpindah ke halaman Item Inventory Management.  Button untuk mengedit item.  Button untuk menghapus item. | Detail dari item yang dipilih (nama, kategori, dan informasi lainnya). |
| Add Item Button | Menambahkan item baru ke dalam sistem. | Popup form untuk menambahkan item baru. |  |
| Delete Item Button | Menghapus item dari sistem. | Popup konfirmasi untuk menghapus item. |  |
| Transfer Item Button | Memindahkan item dari satu node ke node lain. | Popup form untuk memindahkan item ke node lain. |  |

**Tabel 4.12.**		Section Halaman Item Node Admin

#### Halaman Menu Management Node Admin

* **Accessible By:** Assembly Node Admin
- **Description:** Menampilkan menu yang telah dibuat oleh petugas dapur pada node terkait. Menu yang dibuat dapat diakses oleh semua node, namun assembly node admin hanya dapat mengedit menu yang dibuat oleh petugas dapur pada node tersebut.

![][image2]

**Gambar 4.13.**		Wireframe Halaman Menu Node Admin

| Section Name | Section Description | Section Input | Section Output |
| :---- | :---- | :---- | :---- |
| Menu List | Menampilkan menu yang telah dibuat oleh petugas dapur pada node terkait. | Row dapat diklik untuk melihat detail menu.  Add Menu Button untuk menambahkan menu baru.  Delete Menu Button pada setiap row untuk menghapus menu.  Confirm Menu Button pada setiap row untuk mengkonfirmasi menu. | Daftar menu yang telah dibuat oleh petugas dapur pada node terkait. |
| Menu Detail | Menampilkan detail dari menu yang dipilih. | Button untuk berpindah ke halaman Menu Detail yang menampilkan Menu Inventory Management.  Button untuk mengedit menu.  Button untuk menghapus menu. Button untuk mengkonfirmasi menu. | Detail dari menu yang dipilih (nama, kategori, dan informasi lainnya). |
| Add Menu Button | Menambahkan menu baru ke dalam sistem. | Popup form untuk menambahkan menu baru. |  |
| Delete Menu Button | Menghapus menu dari sistem. | Popup konfirmasi untuk menghapus menu. |  |
| Confirm Menu Button | Mengkonfirmasi menu yang telah dibuat oleh petugas dapur. | Popup konfirmasi untuk mengkonfirmasi menu. |  |

**Tabel 4.13.**		Section Halaman Menu Node Admin

---

