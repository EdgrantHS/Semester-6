# Bab 1 \- Introduction

## Background

Makan Bergisi Gratis (MBG) banyak kontroversi

## Project Summary

Membuat aplikasi tracking inventaris antar banyak node. Infrastrukturnya terdiri dari 3 jenis node:

- Node Gudang
- Node Dapur
- Node Sekolah

### Inventaris antar node

Setiap node memiliki database inventaris masing-masing. Setiap node dapat mengirimkan inventaris ke node lain. Setiap node dapat menerima inventaris dari node lain. Namun kecenderungan pengiriman inventaris adalah dari node gudang ke node dapur, dan dari node dapur ke node sekolah.

### Proses pengiriman inventaris

Sebelum proses pengiriman, petugas pada node pengirim akan scan QR pada paket barang yang akan dikirim. Saat barang sampai di node penerima, petugas pada node penerima akan scan QR pada paket barang yang diterima. Setelah itu, sistem akan otomatis mengupdate database inventaris pada node penerima. 

Saat barang di-scan petugas pada node pengirim, sistem akan otomatis menghapus barang dari database inventaris pada node pengirim. Saat barang di-scan petugas pada node penerima, sistem akan otomatis menambah barang ke database inventaris pada node penerima.

### Proses pengolah inventaris

Pada node dapur, bahan baku yang diterima dari node gudang akan diolah menjadi makanan siap saji. Pemilihan bahan baku yang akan diolah menjadi makanan siap saji dilakukan oleh petugas dapur melalui sebuah quick menu (contohnya petugas dapur memiliki membuat 10 roti A, inventaris akan bertambah 10 roti A dan berkurang bahan baku yang dibutuhkan untuk membuat 10 roti A). Jika menu yang diinginkan tidak ada pada quick menu, petugas dapur dapat membuat temporary menu baru yang hanya dapat dilihat oleh petugas dapur pada node tersebut. Jika menu yang dibuat oleh petugas dapur dianggap cocok, node admin dapat mengkonfirmasi menu tersebut dan dapat dilihat oleh petugas dapur pada node lain.

### Proses distribusi makanan

Setelah makanan siap saji selesai dibuat, petugas dapur akan memasukkan makanan siap saji ke dalam paket makanan. Paket makanan akan dikirim ke node sekolah. Petugas dapur akan scan QR pada paket makanan yang akan dikirim. Saat makanan sampai di node sekolah, petugas pada node sekolah akan scan QR pada paket makanan yang diterima. Setelah itu, sistem akan otomatis mengupdate database inventaris pada node sekolah.

### Proses Pelaporan Ketidaksesuaian

Jika node penerima mendapatkan barang yang tidak sesuai dengan pesanan, petugas pada node penerima dapat melaporkan ketidaksesuaian tersebut. Laporan ketidaksesuaian dapat dilihat oleh admin dan dapat dilihat sumber node yang mengirim barang yang tidak sesuai.

### Privileges Levels

#### System Admin

- Membuat, mengedit, dan menghapus akun petugas
- Melihat seluruh laporan ketidaksesuaian
- Melihat dan mengedit database inventaris pada seluruh node

#### Node Admin

- Melihat laporan ketidaksesuaian yang terjadi pada node tersebut
- Melihat dan mengedit database inventaris pada node tersebut
- Membuat, mengedit, dan menghapus akun petugas pada node tersebut
- Mengkonfirmasi menu yang dibuat oleh petugas dapur (Hanya untuk admin dapur)
  
#### Petugas Gudang

- Menambahkan barang ke database inventaris pada node gudang
- Scan QR pada paket barang yang akan dikirim ke node dapur
  
#### Petugas Dapur

- Scan QR pada paket bahan baku yang diterima dari node gudang
- Scan QR pada paket makanan yang akan dikirim ke node sekolah
- Melihat quick menu dan memilih menu yang akan dibuat (Akan secara otomatis mengurangi bahan baku yang dibutuhkan)
- Membuat temporary menu baru

#### Petugas Sekolah

- Scan QR pada paket makanan yang diterima dari node dapur
- Memberikan laporan ketidaksesuaian jika menerima barang yang tidak sesuai

# Bab 2 \- Functional Objectives

## Prioritas Tinggi
- **Pengembangan Database Inventaris:**  
  Mengembangkan database inventaris yang terpisah untuk masing-masing node (Gudang, Dapur, dan Sekolah), sehingga setiap admin node dapat mengakses dan mengelola data inventaris di node-nya.

- **Fitur Pemindaian QR pada Pengiriman Barang:**  
  Mengimplementasikan fitur scan QR untuk paket barang yang dikirim oleh petugas node pengirim. Saat pemindaian dilakukan, sistem secara otomatis menghapus data barang dari database inventaris node pengirim.

- **Fitur Pemindaian QR pada Penerimaan Barang:**  
  Mengimplementasikan fitur scan QR untuk paket barang yang diterima oleh petugas node penerima. Pemindaian ini akan memicu sistem untuk secara otomatis menambahkan data barang ke database inventaris node penerima.

- **Fitur Quick Menu untuk Pengolahan Bahan Baku:**  
  Menyediakan opsi bagi petugas dapur untuk memilih bahan baku yang akan diolah menjadi makanan siap saji melalui quick menu. Pemilihan bahan baku ini secara otomatis akan mengurangi jumlah stok bahan baku yang diperlukan.

## Prioritas Menengah
- **Fitur Pembuatan Temporary Menu:**  
  Mengembangkan fitur yang memungkinkan petugas dapur membuat temporary menu baru. Menu ini hanya dapat diakses oleh petugas dapur di node terkait.

- **Fitur Konfirmasi Menu oleh Node Admin:**  
  Menyediakan mekanisme bagi node admin untuk mengkonfirmasi menu yang dibuat oleh petugas dapur. Setelah dikonfirmasi, menu tersebut akan dapat diakses oleh petugas dapur pada node lain.

- **Fitur Pelaporan Ketidaksesuaian:**  
  Mengembangkan fitur bagi petugas node penerima untuk melaporkan ketidaksesuaian barang yang diterima. Laporan ini akan ditampilkan kepada admin serta mengindikasikan node asal pengiriman barang yang tidak sesuai.

## Prioritas Rendah
- Saat ini, tidak ada fitur dengan prioritas rendah yang telah didefinisikan.

---

# Pages

## Super Admin

### Dashboard

- **Overview:** Menampilkan ringkasan data inventaris dari seluruh node.
- **Recent Reports:** Menampilkan laporan ketidaksesuaian terbaru dari seluruh node.

### Node Management

- **Node List:** Menampilkan daftar node yang terdaftar dalam sistem.
- **Add Node:** Menambahkan node baru ke dalam sistem.
- **Edit Node:** Mengubah informasi node yang sudah terdaftar.
- **Delete Node:** Menghapus node dari sistem.

#### Node Detail

- **Inventory Management:** Menampilkan database inventaris dari node terkait.
- **User Management:** Menampilkan daftar petugas yang terdaftar pada node terkait.
- **Report Management:** Menampilkan laporan ketidaksesuaian yang terjadi pada node terkait.
- **Menu Management:** Menampilkan menu yang telah dibuat oleh petugas dapur pada node terkait.

### User Management

- **User List:** Menampilkan daftar petugas yang terdaftar dalam sistem.
- **Add User:** Menambahkan petugas baru ke dalam sistem.
- **Edit User:** Mengubah informasi petugas yang sudah terdaftar.
- **Delete User:** Menghapus petugas dari sistem.
- **Assign Role:** Memberikan peran kepada petugas yang terdaftar.

### Item Management

- **Item List:** Menampilkan daftar jenis barang yang terdaftar dalam sistem.
- **Add Item:** Menambahkan jenis barang baru ke dalam sistem.
- **Edit Item:** Mengubah informasi jenis barang yang sudah terdaftar.
- **Delete Item:** Menghapus jenis barang dari sistem.

### Inventory Management

- **Inventory List:** Menampilkan daftar barang yang tersedia di seluruh node.
- **Add Inventory:** Menambahkan barang ke dalam database inventaris node terkait.
- **Edit Inventory:** Mengubah informasi barang yang sudah terdaftar.
- **Delete Inventory:** Menghapus barang dari database inventaris node terkait.
- **Transfer Inventory:** Memindahkan barang dari satu node ke node lain. Selain itu dapat resolve QR code yang tidak terbaca.

### Report Management

- **Report List:** Menampilkan daftar laporan ketidaksesuaian yang terjadi pada seluruh node.
- **View Report:** Melihat detail laporan ketidaksesuaian yang terjadi pada node terkait.
- **Resolve Report:** Menandai laporan ketidaksesuaian sebagai sudah ditangani.

## Node Admin

### Dashboard

- **Overview:** Menampilkan ringkasan data inventaris dari node terkait.
- **Recent Reports:** Menampilkan laporan ketidaksesuaian terbaru dari node terkait.

### Inventory Management

- Same as Super Admin's tetapi hanya menampilkan data inventaris dari node terkait.

### User Management

- Same as Super Admin's tetapi hanya menampilkan petugas yang terdaftar pada node terkait.

### Report Management

- Same as Super Admin's tetapi hanya menampilkan laporan ketidaksesuaian yang terjadi pada node terkait.

### Menu Management (Only for Dapur Admin)

- **Menu List:** Menampilkan menu yang telah dibuat oleh petugas dapur pada node terkait.
- **Confirm Menu:** Mengkonfirmasi menu yang dibuat oleh petugas dapur.
- **Edit Menu:** Mengubah menu yang sudah terdaftar yang dibuat pada node terkait.
- **Delete Menu:** Menghapus menu yang sudah terdaftar yang dibuat pada node terkait.

## Petugas Gudang

### Add Inventory

- **Add Inventory:** Menambahkan barang ke dalam database inventaris node gudang.
- **Edit/Delete Inventory:** hanya dapat mengedit atau menghapus barang yang diunggah oleh petugas gudang yang bersangkutan.
  
### Scan QR

- **Scan QR:** Memindai QR pada paket barang yang akan dikirim ke node dapur.

## Petugas Dapur

### Quick Menu

- **Quick Menu:** Menampilkan daftar bahan baku yang tersedia dan memungkinkan petugas dapur untuk memilih bahan baku yang akan diolah menjadi makanan siap saji.
- **Create Temporary Menu:** Membuat menu sementara yang hanya dapat diakses oleh petugas dapur pada node terkait.
- **View Temporary Menu:** Melihat menu sementara yang telah dibuat.
- **Edit Temporary Menu:** Mengubah menu sementara yang telah dibuat.
- **Delete Temporary Menu:** Menghapus menu sementara yang telah dibuat.

### Scan QR

- **Scan QR:** Memindai QR pada paket bahan baku yang diterima dari node gudang.
- **Scan QR:** Memindai QR pada paket makanan yang akan dikirim ke node sekolah.

### Report Discrepancy

- **Report Discrepancy:** Melaporkan ketidaksesuaian barang yang diterima.

## Petugas Sekolah

### Scan QR

- **Scan QR:** Memindai QR pada paket makanan yang diterima dari node dapur.

### Report Discrepancy

- **Report Discrepancy:** Melaporkan ketidaksesuaian barang yang diterima.

# Bab 3 \- Non-Functional Objectives

## Reliability

- Sistem harus tersedia 24/7 setidaknya 99% dari waktu, kecuali saat maintenance.
- Setidaknya 95% Scan QR harus menghasilkan data yang benar, jika tidak maka sistem harus memberikan notifikasi error.
- Setiap perubahan data inventaris harus tercatat dan dapat diakses oleh admin.
- Tidak boleh ada data inventaris yang hilang atau terhapus tanpa sepengetahuan admin.
- Tidak boleh ada data inventaris yang terduplikasi.
- Setiap laporan ketidaksesuaian harus tercatat dan dapat diakses oleh admin.

## Usability

- Role node admin harus mudah dipahami tanpa latar belakang IT dengan memberikan petunjuk penggunaan.
- Role petugas harus mudah dipahami tanpa pendidikan formal tanpa diberikan pelatihan.
- Setiap fitur harus memiliki dokumentasi yang jelas dan mudah dipahami.
- Setiap fitur harus memiliki panduan penggunaan yang mudah diakses.
- Setiap fitur harus memiliki notifikasi error yang jelas dan mudah dipahami.
- Setiap fitur harus memiliki notifikasi sukses yang jelas dan mudah dipahami.
- Setiap fitur harus dapat diakses dari halaman utama dengan maksimal 5 klik.
- User yang sudah mengetahui menu tidak perlu menggunakan lebih dari 10 detik untuk menggunakannya.

## Performance

- Setiap halaman harus dapat dimuat dalam waktu kurang dari 5 detik dengan asumsi koneksi internet 384 kbps (3G).
- Sistem harus mampu menangani hingga 10 pengguna secara bersamaan.
- Setiap resource media jika tidak dapat dimuat harus memberikan alternatif teks.

## Security

- Setiap data sensitif yang disimpan harus dienkripsi.
- Setiap data yang dikirimkan antar node harus dienkripsi.
- Autentikasi harus menggunakan metode yang aman.
- Setiap perubahan data inventaris harus di-log dan dapat diakses oleh admin.
- Setiap laporan ketidaksesuaian harus di-log dan dapat diakses oleh admin.
- Setiap perubahan data inventaris harus dapat di-rollback.
- Setiap laporan ketidaksesuaian harus dapat di-rollback.

## Supportability

- Perubahan topology node harus dapat dilakukan dan tanpa downtime.
- Penambahan jenis barang harus dapat dilakukan dan segera dapat digunakan oleh semua node.
- Konfirmasi menu harus dapat dilakukan oleh node admin dan segera dapat digunakan oleh semua node.
- Sistem perlu dapat digunakan pada perangkat Android 12 ke atas.

## Purchased Components

- Nama domain yang akan berfungsi sebagai alamat website.
- Cloud service provider untuk menyimpan data dan menjalankan aplikasi, jika diperlukan.
- Printer label untuk mencetak QR code.
- Kotak kardus untuk mengemas barang yang akan dikirim sebagai simulasi pada workshop.
- Bahan baku untuk membuat makanan siap saji sebagai simulasi pada workshop.
