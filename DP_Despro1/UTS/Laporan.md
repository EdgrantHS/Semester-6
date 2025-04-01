# **Kata Pengantar**

Puji dan syukur kami panjatkan ke hadirat Tuhan Yang Maha Esa atas rahmat dan karunia-Nya sehingga kami dapat menyelesaikan Laporan UTS Desain dan Pemrograman (Despro) ini dengan baik dan tepat waktu. Laporan ini disusun sebagai bagian dari pemenuhan tugas Ujian Tengah Semester pada mata kuliah Desain dan Pemrograman, yang merupakan bagian dari kurikulum di Program Studi Teknik Komputer, Fakultas Teknik, Universitas Indonesia.

Kami menyadari bahwa laporan ini tidak akan dapat terselesaikan tanpa adanya bimbingan, dukungan, dan kerja sama dari berbagai pihak. Oleh karena itu, kami ingin mengucapkan terima kasih kepada:

1. **Dosen pengampu mata kuliah Desain dan Pemrograman**, yang telah memberikan bimbingan, arahan, dan ilmu yang sangat berharga selama proyek ini berlangsung.  
2. **Rekan-rekan satu tim**, yang telah bekerja sama dengan baik dalam menyelesaikan proyek ini dengan penuh dedikasi dan tanggung jawab.  
3. **Keluarga dan teman-teman**, yang telah memberikan dukungan moral dan motivasi selama proses pengerjaan laporan ini.

Kami menyadari bahwa laporan ini masih memiliki kekurangan dan jauh dari kesempurnaan. Oleh karena itu, kami sangat terbuka terhadap kritik dan saran yang membangun untuk perbaikan di masa mendatang. Kami berharap laporan ini dapat memberikan manfaat bagi pembaca serta menjadi referensi yang berguna bagi pengembangan sistem yang lebih baik di masa depan. Akhir kata, semoga laporan ini dapat memberikan kontribusi positif dalam bidang Desain dan Pemrograman serta menjadi bahan pembelajaran yang bermanfaat bagi semua pihak.

Hormat kami,

**Kelompok 13**

* Edgrant Henderson Suryajaya (2206025016)  
* Muhammad Fahish Haritsah Bimo (2206059616)  
* Aria Bima Sakti (2206062970)  
* Muhammad Nadhif Fasichul Ilmi (2206813416)

Universitas Indonesia 2024/2025

# **Bab 1 \- Pendahuluan**

1. ## Latar Belakang

   Program Makanan Bergizi Gratis (MBG) merupakan inisiatif yang digagas oleh pemerintah sebagai upaya untuk meningkatkan gizi, kesehatan, dan kualitas pendidikan bagi anak-anak sekolah serta kelompok rentan. Program ini bertujuan untuk memastikan bahwa semua anak, terutama mereka yang berasal dari keluarga kurang mampu, mendapatkan akses terhadap makanan sehat dan bergizi secara gratis. Dengan adanya program ini, diharapkan angka stunting dapat berkurang secara signifikan, serta membantu anak-anak dalam meningkatkan konsentrasi dan prestasi akademik mereka di sekolah.

   Namun, dalam pelaksanaannya, terdapat berbagai tantangan yang menghambat efektivitas distribusi makanan dalam program MBG. Salah satu aspek yang menjadi perhatian utama adalah sistem distribusi dan manajemen inventaris yang belum optimal, sehingga mengakibatkan berbagai permasalahan.

2. ## Permasalahan

   Beberapa masalah utama yang sering terjadi dalam implementasi program MBG adalah sebagai berikut :

* **Ketidaksesuaian Jumlah Bantuan:** Sekolah sering menerima jumlah makanan yang tidak sesuai dengan yang dijanjikan, baik lebih sedikit maupun lebih banyak.

* **Kehilangan Barang dalam Logistik:** Kurangnya pelacakan inventaris menyebabkan banyak barang hilang selama proses distribusi, dari gudang, dapur, hingga sekolah. 

* **Keterbatasan Akses Informasi Admin Logistik:** Pencatatan manual menghambat akses admin logistik terhadap informasi stok dan pengiriman yang akurat dan cepat.

* **Tidak Ada Sistem Pelacakan Inventaris:** Ketiadaan sistem pelacakan otomatis menyulitkan pemantauan pergerakan barang dan pengelolaan inventaris..

3. ## Solusi

   Solusi yang kelompok kami tawarkan adalah Sistem Tracking Inventaris MBG berbasis QR Code. Dengan mengimplementasikan teknologi QR Code, setiap barang yang masuk dan keluar dari gudang, dapur, dan sekolah akan dilacak dan di-update inventarisnya secara otomatis, meminimalkan kesalahan pencatatan manual dan memastikan akurasi data inventaris secara real-time. Dashboard monitoring real-time akan memberikan visibilitas penuh kepada admin logistik, memungkinkan mereka untuk memantau status inventaris di setiap node dan mengambil keputusan cepat dalam mengatasi masalah distribusi.

   Selain itu, sistem ini akan mencakup sistem pelaporan ketidaksesuaian barang oleh penerima, memungkinkan tindakan lanjut yang cepat untuk mengatasi masalah dan mencegah terulangnya kesalahan.

   Dengan implementasi solusi ini, diharapkan distribusi makanan menjadi lebih efisien, akuntabel, dan transparan, serta memudahkan pengawasan dan evaluasi program MBG. Sistem ini juga akan mencakup manajemen bahan baku di dapur dan verifikasi pengiriman makanan ke sekolah, memastikan setiap tahap distribusi tercatat dengan akurat.

   Sistem Tracking Inventaris MBG berbasis QR Code secara langsung mengatasi masalah ketidaksesuaian jumlah bantuan, kehilangan barang, keterbatasan akses informasi admin logistik, dan ketiadaan sistem pelacakan inventaris. Dengan pelacakan otomatis, visibilitas real-time, dan sistem pelaporan yang terintegrasi, solusi ini memastikan distribusi makanan yang lebih efisien, memiliki akuntabilitas, dan transparan, sehingga program MBG dapat mencapai tujuannya secara optimal.

# 

# **Old Bab 1 \- Introduction**

1. ## Purpose of Document

   Dokumen ini dibuat untuk mendokumentasikan spesifikasi kebutuhan proyek Sistem Tracking Inventaris MBG yang dikembangkan oleh Kelompok 13\. Sistem ini dirancang untuk meningkatkan otomasi, efisiensi, dan akurasi dalam distribusi Makanan Bergizi Gratis (MBG), mulai dari penyimpanan bahan baku di gudang, pengolahan di dapur, hingga pendistribusian ke sekolah. Dengan adanya sistem ini, diharapkan seluruh rantai pasokan dapat dipantau dengan lebih baik, sehingga meminimalkan kesalahan pencatatan, kehilangan barang, serta ketidaksesuaian jumlah barang yang diterima oleh pihak penerima manfaat.

   Dalam implementasinya, sistem ini menggunakan teknologi QR Code untuk pencatatan transaksi inventaris, di mana setiap barang yang masuk dan keluar dari node (gudang, dapur, sekolah) akan dicatat secara otomatis melalui pemindaian QR Code. Proses ini akan memungkinkan administrator rantai pasokan MBG untuk memiliki akses ke data mengenai status distribusi barang.

Dokumen ini memiliki beberapa tujuan utama, antara lain :

1. Mendefinisikan Masalah Utama yang Ingin Diselesaikan  
* Dalam distribusi MBG, terdapat berbagai kendala yang sering terjadi, seperti barang hilang saat dalam proses logistik, ketidaksesuaian jumlah bantuan yang diterima oleh sekolah dibandingkan dengan yang dikirim dari gudang, serta kurangnya akses informasi bagi admin logistik.  
* Dokumen ini akan menguraikan secara rinci berbagai permasalahan tersebut dan bagaimana sistem yang dikembangkan dapat menjadi solusi efektif untuk mengatasinya.  
2. Memberikan Gambaran Umum Mengenai Proyek  
* Dokumen ini akan menjelaskan secara detail bagaimana sistem ini bekerja, termasuk latar belakang pengembangannya, metode yang digunakan dalam sistem tracking, serta bagaimana sistem ini dapat memberikan solusi terhadap masalah distribusi makanan bergizi gratis.  
3. Menjelaskan Kebutuhan Sistem Secara Fungsional dan Non-Fungsional  
* Dokumen ini akan mencantumkan berbagai kebutuhan yang harus dipenuhi oleh sistem agar dapat berfungsi dengan baik.  
* Kebutuhan fungsional, seperti proses pencatatan barang masuk dan keluar, sistem tracking berbasis QR Code, laporan ketidaksesuaian barang, serta pembaruan inventaris secara otomatis saat bahan digunakan untuk produksi.  
* Kebutuhan non-fungsional, seperti keamanan data, kecepatan pemrosesan informasi, kemudahan penggunaan bagi pengguna, serta skalabilitas sistem agar dapat digunakan dalam skala yang lebih luas.  
4. Memberikan Panduan Implementasi dan Perancangan Teknis Sistem  
* Dokumen ini juga akan menjadi acuan dalam pengembangan sistem secara teknis, termasuk teknologi yang digunakan, arsitektur sistem, dan desain UI/UX dari aplikasi yang akan dibangun.  
* Panduan ini akan mencakup berbagai aspek teknis seperti struktur database, cara kerja QR Code dalam proses tracking, metode penyimpanan dan pemrosesan data inventaris, serta mekanisme autentikasi pengguna untuk memastikan keamanan data.  
  Dengan adanya dokumen ini, seluruh proses pengembangan sistem dapat berjalan lebih terstruktur, sesuai dengan kebutuhan pengguna, serta memastikan bahwa setiap fitur yang dikembangkan benar-benar dapat menyelesaikan masalah utama yang telah diidentifikasi. Selain itu, dokumen ini juga dapat digunakan sebagai bahan evaluasi dan pengawasan oleh pihak yang berkepentingan dalam program MBG, seperti pemerintah, donatur, dan organisasi sosial, sehingga mereka dapat memastikan bahwa distribusi makanan bergizi benar-benar berjalan secara efisien, otomatis, dan akuntabel.  
  Dengan adanya sistem ini, diharapkan setiap node dalam distribusi MBG, mulai dari gudang hingga sekolah, dapat memiliki pencatatan inventaris yang lebih akurat, terhindar dari kehilangan barang, serta memastikan bahwa setiap makanan yang dikirim benar-benar sampai ke penerima manfaat dalam jumlah yang sesuai.

2. ## Project Summary

   Sistem Tracking Inventaris MBG merupakan sebuah aplikasi berbasis QR Code yang dikembangkan untuk melacak, mencatat, dan memonitor pergerakan barang dalam distribusi Makanan Bergizi Gratis (MBG) secara otomatis. Sistem ini bertujuan untuk meningkatkan otomasi, akuntabilitas, dan efisiensi dalam proses pendistribusian makanan, sehingga barang yang dikirim dapat diawasi dengan lebih ketat dan dipastikan sampai ke penerima dengan jumlah yang sesuai.

   Sistem ini terdiri dari tiga jenis node utama, yang masing-masing memiliki peran penting dalam rantai pasokan MBG :

1. **Node Gudang**  
   * Bertindak sebagai tempat penyimpanan bahan baku sebelum dikirim ke dapur untuk diolah.  
   * Semua bahan baku yang diterima dari pemasok akan dimasukkan ke dalam sistem dan diberikan QR Code unik agar dapat dipantau pergerakannya.

2. **Node Dapur**  
   * Berfungsi sebagai tempat pengolahan bahan baku menjadi makanan siap saji sebelum dikirim ke sekolah.  
   * Petugas dapur akan memilih bahan yang akan digunakan, dan sistem akan secara otomatis mengurangi stok bahan baku sesuai jumlah yang digunakan dalam proses produksi.  
   * Setiap paket makanan yang diterima dari gudang akan dipindai dengan QR Code untuk memastikan bahwa semua barang yang dikirim telah sampai sesuai dengan jumlah yang ditentukan.  
   * Makanan yang sudah siap akan diberikan QR Code unik agar dapat dipantau pergerakannya.

3. **Node Sekolah**  
   * Bertanggung jawab untuk menerima makanan siap saji dan mendistribusikannya kepada penerima manfaat.  
   * Setiap paket makanan yang diterima dari dapur akan dipindai dengan QR Code untuk memastikan bahwa semua barang yang dikirim telah sampai sesuai dengan jumlah yang ditentukan.

   Setiap node dalam sistem ini memiliki database inventaris mandiri yang akan diperbarui secara otomatis setiap kali ada barang yang masuk atau keluar. Dengan sistem ini, setiap pergerakan barang dapat dipantau dan dicatat sehingga mengurangi kemungkinan kehilangan barang atau ketidaksesuaian jumlah antara yang dikirim dan yang diterima. 

   **Alur perpindahan barang dalam sistem ini meliputi :**

* **Gudang → Dapur** : Bahan baku dikirim dari gudang ke dapur untuk diolah menjadi makanan siap saji.  
  **Dapur → Sekolah** : Makanan siap saji dikirim dari dapur ke sekolah untuk dibagikan kepada siswa yang berhak menerima.

### **Proses Pengiriman Inventaris**

1. Sebelum barang dikirim, petugas di node pengirim akan melakukan pemindaian QR Code pada paket barang yang akan dikirim.  
2. Saat barang sampai di tujuan, petugas di node penerima akan melakukan pemindaian ulang QR Code untuk mengkonfirmasi penerimaan barang.  
3. Setelah barang diterima, sistem secara otomatis akan memperbarui database inventaris, dengan rincian :  
   * Stok barang di node pengirim berkurang sesuai jumlah yang dikirim.  
   * Stok barang di node penerima bertambah sesuai jumlah yang diterima.

### **Proses Pengolahan Inventaris di Dapur**

* Bahan baku yang diterima dari gudang akan diolah menjadi makanan siap saji.  
* Petugas dapur dapat memilih bahan yang akan digunakan melalui quick menu atau daftar menu yang sudah tersedia dalam sistem.  
* Jika menu yang diinginkan tidak tersedia dalam daftar menu, petugas dapur dapat membuat menu sementara untuk menginput bahan yang digunakan.  
* Jika admin node mengkonfirmasikan menu sementara, menu tersebut akan dapat diakses pada seluruh node.  
* Setelah makanan diproduksi, stok bahan baku di sistem akan otomatis berkurang sesuai jumlah yang digunakan.

  ### **Proses Distribusi Makanan**

  Setelah makanan siap saji dikemas, petugas dapur akan melakukan pemindaian QR Code pada setiap paket makanan sebelum dikirim ke sekolah. Pemindaian ini bertujuan untuk mencatat jumlah dan jenis makanan yang dikirim serta memastikan bahwa setiap paket telah terdaftar dalam sistem. Ketika paket makanan tiba di sekolah, petugas sekolah akan melakukan pemindaian ulang QR Code untuk memastikan bahwa paket telah diterima dalam jumlah yang sesuai dengan yang dikirim dari dapur. Setelah proses pemindaian selesai, sistem secara otomatis akan memperbarui database inventaris sekolah. Dengan adanya pembaruan ini, admin logistik dapat dengan mudah memantau jumlah stok makanan yang tersedia di setiap node, sehingga dapat memastikan bahwa distribusi berjalan sesuai rencana dan tidak ada kekurangan atau kelebihan stok yang tidak terdata.

  **Proses Pelaporan Ketidaksesuaian**

  Jika barang yang diterima tidak sesuai dengan jumlah atau kualitas yang diharapkan, petugas pada node penerima dapat segera membuat laporan ketidaksesuaian melalui sistem. Laporan ini akan langsung terlihat oleh admin yang bertanggung jawab untuk menindaklanjuti masalah tersebut. Dalam laporan ini, sistem akan mencatat secara otomatis dari node mana barang tersebut dikirim, sehingga sumber kesalahan dapat diidentifikasi dengan cepat. Dengan adanya sistem ini, langkah korektif dapat segera dilakukan untuk memastikan bahwa barang yang diterima sesuai standar yang telah ditentukan, mengurangi potensi kesalahan dalam distribusi, serta meningkatkan akuntabilitas dalam sistem manajemen inventaris MBG.

  ## **Hak Akses Pengguna (Privilege Levels)**

  Sistem ini memiliki beberapa tingkat hak akses yang diberikan kepada pengguna berdasarkan peran dan tanggung jawabnya dalam operasional distribusi MBG.

  ### **1\. System Admin**

* Bertanggung jawab atas pengelolaan sistem secara keseluruhan.  
* Dapat membuat, mengedit, dan menghapus akun petugas di semua node.  
* Dapat membuat, mengedit, dan menghapus database jenis item, node, dan menu.  
* Memiliki akses penuh untuk melihat dan mengedit database inventaris di seluruh node.  
* Bertanggung jawab untuk memantau laporan ketidaksesuaian barang di semua node.

  ### **2\. Node Admin (Gudang, Dapur, Sekolah)**

* Memiliki kendali penuh terhadap operasional di node masing-masing.  
* Dapat melihat dan mengedit database inventaris pada node tempatnya bertugas.  
* Dapat membuat, mengedit, dan menghapus akun petugas yang bekerja di node tersebut.  
* Admin dapur memiliki tambahan wewenang untuk mengkonfirmasi menu baru yang dibuat oleh petugas dapur sebelum menu tersebut dapat digunakan oleh seluruh dapur lain dalam sistem.  
* Bertanggung jawab untuk menindaklanjuti laporan ketidaksesuaian barang yang berhubung dengan node tersebut.

  ### **3\. Petugas Gudang**

* Bertanggung jawab untuk menambahkan barang ke dalam inventaris gudang saat bahan baku diterima dari pemasok.  
* Melakukan pemindaian QR Code pada paket barang sebelum dikirim ke dapur.

  ### **4\. Petugas Dapur**

* Melakukan pemindaian QR Code pada paket bahan baku yang diterima dari gudang.  
* Melakukan pemindaian QR Code pada paket makanan sebelum dikirim ke sekolah.  
* Menggunakan menu untuk memilih bahan yang akan digunakan dalam proses produksi makanan.  
* Dapat membuat menu sementara baru jika menu yang diinginkan tidak tersedia dalam daftar menu.  
* Dapat melaporkan ketidaksesuaian barang jika makanan yang diterima tidak sesuai jumlah atau kualitasnya.

  ### **5\. Petugas Sekolah**

* Melakukan pemindaian QR Code pada paket makanan yang diterima dari dapur.  
* Dapat melaporkan ketidaksesuaian barang jika makanan yang diterima tidak sesuai jumlah atau kualitasnya.

3. ## Background

   Program Makanan Bergizi Gratis (MBG) merupakan inisiatif yang digagas oleh pemerintah sebagai upaya untuk meningkatkan gizi, kesehatan, dan kualitas pendidikan bagi anak-anak sekolah serta kelompok rentan. Program ini bertujuan untuk memastikan bahwa semua anak, terutama mereka yang berasal dari keluarga kurang mampu, mendapatkan akses terhadap makanan sehat dan bergizi secara gratis. Dengan adanya program ini, diharapkan angka stunting dapat berkurang secara signifikan, serta membantu anak-anak dalam meningkatkan konsentrasi dan prestasi akademik mereka di sekolah.

   Namun, dalam pelaksanaannya, terdapat berbagai tantangan yang menghambat efektivitas distribusi makanan dalam program MBG. Salah satu aspek yang menjadi perhatian utama adalah sistem distribusi dan manajemen inventaris yang belum optimal, sehingga mengakibatkan berbagai permasalahan, seperti ketidaksesuaian jumlah bantuan yang diterima, kehilangan barang dalam proses logistik, serta keterbatasan akses informasi bagi pihak yang bertanggung jawab dalam pengelolaan distribusi. Berikut adalah beberapa permasalahan utama yang sering terjadi dalam implementasi program MBG :

1. **Ketidaksesuaian Jumlah Bantuan dengan yang Diterima Sekolah**  
   Salah satu masalah yang sering terjadi dalam distribusi MBG adalah adanya perbedaan antara jumlah makanan yang dikirim dari dapur atau gudang dengan jumlah makanan yang diterima oleh sekolah. Beberapa sekolah melaporkan bahwa makanan yang diterima tidak sesuai dengan jumlah yang tercatat dalam data pengiriman. Hal ini bisa terjadi karena berbagai faktor, seperti kesalahan pencatatan manual, kehilangan barang dalam perjalanan, atau potensi penyalahgunaan dalam proses distribusi. Tanpa adanya sistem tracking yang jelas, sulit bagi admin logistik atau pihak yang berwenang untuk mengidentifikasi penyebab ketidaksesuaian ini. Akibatnya, sekolah tidak dapat memastikan bahwa semua siswa yang berhak mendapatkan makanan sesuai dengan jumlah yang telah direncanakan, yang pada akhirnya dapat berdampak pada efektivitas program MBG secara keseluruhan.

2. **Banyak Barang Hilang dalam Proses Logistik MBG**  
   Kurangnya pelacakan dalam rantai pasokan MBG menyebabkan barang yang dikirim sering kali hilang atau tidak tercatat dengan baik dalam sistem. Kehilangan ini dapat terjadi dalam berbagai tahap, mulai dari pengangkutan bahan baku dari gudang ke dapur, distribusi makanan dari dapur ke sekolah, hingga penerimaan barang di sekolah. Karena sistem pencatatan masih banyak dilakukan secara manual atau berbasis dokumen fisik, proses pengecekan keberadaan barang menjadi sulit dilakukan. Akibatnya, saat terjadi kehilangan barang, pihak yang bertanggung jawab kesulitan menelusuri titik kehilangan, apakah itu terjadi di gudang, selama transportasi, atau setelah tiba di lokasi penerima. Tanpa adanya sistem tracking yang akurat, kehilangan barang dalam jumlah besar bisa terjadi tanpa diketahui penyebab pastinya, sehingga menghambat kelancaran distribusi MBG.

3. #### **Admin Logistik Tidak Memiliki Akses Informasi yang Menyeluruh**

   Manajemen distribusi MBG masih menghadapi tantangan besar dalam hal akses informasi yang cepat, akurat, dan menyeluruh. Saat ini, pencatatan masih banyak dilakukan secara manual atau berbasis spreadsheet, yang menyebabkan ketidakefisienan dalam memantau stok dan alur distribusi barang. Karena sistem yang digunakan tidak otomatis dan terintegrasi, admin logistik sering kali mengalami keterlambatan dalam memperoleh informasi tentang kondisi inventaris, status pengiriman, serta potensi ketidaksesuaian jumlah barang yang dikirim dan diterima. Kondisi ini menyebabkan sulitnya melakukan audit dan pengawasan, serta menghambat pengambilan keputusan yang cepat dalam menyelesaikan masalah operasional. Jika admin logistik tidak memiliki akses terhadap informasi yang menyeluruh, maka penyusunan laporan distribusi dan evaluasi efektivitas program MBG juga menjadi lebih sulit dilakukan. Hal ini dapat mengurangi transparansi dalam proses distribusi dan meningkatkan risiko terjadinya penyimpangan yang tidak terdeteksi.

4. **Tidak Ada Sistem Tracking Inventaris**

   Saat ini, tidak ada sistem yang dapat secara otomatis melacak pergerakan barang dari satu titik distribusi ke titik berikutnya dalam rantai pasokan MBG. Setiap barang yang keluar dari gudang atau dapur tidak memiliki sistem pemantauan yang akurat, sehingga sulit bagi pihak terkait untuk memastikan bahwa barang tersebut benar-benar sampai ke lokasi tujuan dengan kondisi yang sesuai. Ketiadaan sistem inventaris menyebabkan kesulitan dalam memastikan keakuratan stok barang, baik di gudang, dapur, maupun sekolah. Jika tidak ada pencatatan yang jelas mengenai barang apa saja yang telah dikirim, diterima, atau digunakan dalam produksi makanan, maka akan sulit bagi admin logistik untuk mengontrol dan mengelola inventaris secara efektif. Selain itu, tanpa sistem tracking yang terdigitalisasi, pengecekan barang hanya dapat dilakukan secara manual, yang memakan waktu lama dan rentan terhadap kesalahan manusia (human error). Hal ini juga membuat sistem lebih rentan terhadap kecurangan atau manipulasi data, karena tidak ada mekanisme yang dapat memverifikasi keberadaan barang secara otomatis.

   ### **Dampak dari Permasalahan Ini**

   Jika masalah-masalah di atas tidak segera diatasi, maka program MBG dapat mengalami berbagai konsekuensi negatif, di antaranya :

* **Distribusi makanan yang tidak merata**, sehingga ada siswa yang seharusnya mendapatkan makanan tetapi tidak menerimanya.  
* **Peningkatan angka kehilangan barang dalam proses logistik**, yang dapat mengakibatkan pemborosan dan kerugian bagi pemerintah.  
* **Kesulitan dalam melakukan audit dan pengawasan**, sehingga mempersulit proses evaluasi dan perbaikan sistem distribusi MBG.  
* **Menurunnya kepercayaan terhadap program MBG**, baik dari pihak sekolah, masyarakat, maupun pemerintah yang mendanai program ini.

  Untuk mengatasi berbagai tantangan ini, diperlukan sebuah solusi berbasis teknologi yang dapat meningkatkan otomasi, akuntabilitas, dan efisiensi dalam manajemen inventaris MBG. Salah satu solusi yang diusulkan adalah dengan mengembangkan Sistem Tracking Inventaris MBG berbasis QR Code, yang dapat membantu mencatat dan memantau pergerakan barang secara otomatis dan terintegrasi.

4. ## Project Scope

   Ruang lingkup proyek ini adalah sistem berbasis web yang dirancang untuk mendukung pencatatan, pemantauan, serta pengelolaan inventaris dalam distribusi Makanan Bergizi Gratis (MBG). Sistem ini bertujuan untuk memastikan bahwa setiap barang yang dikirim dari gudang ke dapur, hingga ke sekolah dapat dilacak dengan akurat dan terdokumentasi dengan menggunakan QR Code. Dengan adanya sistem ini, setiap perpindahan barang dalam rantai distribusi MBG dapat dimonitor sehingga mengurangi risiko kehilangan barang serta meningkatkan akurasi pencatatan inventaris.

   Sistem ini akan mencakup fitur utama seperti tracking inventaris setiap node, pembaruan inventaris secara otomatis, serta pelaporan ketidaksesuaian barang. Dengan fitur ini, pengguna dapat dengan mudah mengetahui jumlah barang yang tersedia, proses pengiriman, serta mencatat jika terdapat perbedaan antara jumlah barang yang dikirim dan diterima.

**Komponen utama dalam cakupan proyek ini meliputi :**

* **Sistem tracking inventaris berbasis QR Code** untuk mempermudah memastikan keakuratan distribusi barang.  
* **Dashboard monitoring real-time** yang memungkinkan admin logistik untuk memantau stok di setiap node.  
* **Sistem pelaporan ketidaksesuaian barang**, yang dapat digunakan jika jumlah atau kondisi barang yang diterima tidak sesuai dengan data pengiriman.  
* **Sistem hak akses**, sehingga setiap pengguna memiliki izin akses sesuai dengan perannya dalam rantai distribusi.

**Batasan proyek ini adalah sebagai berikut:**

* Sistem tidak mencakup transaksi keuangan atau pembayaran dalam pengadaan bahan baku dan logistik.  
* Sistem tidak menggunakan teknologi blockchain, melainkan berbasis database konvensional untuk memastikan efisiensi dalam pencatatan inventaris.  
* Tidak ada integrasi langsung dengan sistem pemerintah, tetapi laporan distribusi dapat diakses oleh pihak berwenang jika diperlukan.  
* Keamanan sistem hanya mencakup perlindungan akses dengan autentikasi pengguna, tanpa mencakup enkripsi tingkat lanjut atau sistem keamanan berbasis AI.  
* Sistem tidak mencakup pelacakan nutrisi bahan baku dan produk pangan.  
* Sistem tidak mencakup pelacakan paket secara waktu nyata (*real-time*).  
* Sistem tidak mencakup pengawasan bahan baku sebelum sampai di gudang.  
* Sistem tidak mencakup pengawasan produk pangan setelah diterima di sekolah.

5. ## System Purpose

   Sistem Tracking Inventaris MBG berbasis QR Code dibuat dengan tujuan memastikan keutuhan distribusi program Makan Siang Gratis secara keseluruhan. Pengawasan dilakukan untuk setiap sektor, mulai dari distribusi bahan pokok dari gudang ke dapur, proses persiapan dan masak, hingga distribusi makanan jadi dari dapur ke sekolah-sekolah. Sistem ini akan mengawal setiap pasokan yang ada dari sektor ke sektor, dengan pemantauan yang efisien, akurat, dan otomatis. Dengan dibuatnya sistem ini, dapat mendukung pengawasan pemerintah dan instansi terkait agar proses distribusi tepat waktu dan tepat sasaran.

1. ###  Users

   Pengguna dari sistem ini meliputi seluruh pihak yang terlibat dalam proses distribusi program.

1. Admin Pusat

   Sistem ini memberikan *privilege* untuk seluruh pengawasan alur dan data kepada *administrator*. Mereka dapat melakukan kelola data petugas, sekolah, jadwal distribusi, serta pemantauan data seluruh laporan.

2. Pekerja Gudang

   Penggunaan sistem oleh pekerja gudang akan memvalidasi pasokan yang akan diberangkatkan dari gudang, mulai dari jumlah yang diberangkatkan serta kesesuaian jadwal. Mereka juga dapat melaporkan ketidaksesuaian pasokan yang tersedia untuk setiap hari sebelum pengiriman. Dengan ini, setiap pasokan akan dipastikan jumlahnya sebelum diberangkatkan ke setiap dapur di wilayah tersebut.

3. Pekerja Dapur

   Sistem ini digunakan oleh pekerja dapur untuk mengkonfirmasi jumlah pasokan yang sampai ke dapur. Setiap ketidaksesuaian jumlah yang ada dapat dilaporkan melalui sistem langsung menuju admin pusat, dan akan ditindak selanjutnya sesuai aturan dan teknis dari program. Sistem ini juga akan menyesuaikan setiap bahan pokok yang datang untuk berapa banyak porsi makanan yang bisa dibuat. Hal ini akan menjaga efisiensi penggunaan bahan makanan sehingga sesuai dengan kadar dan kualitas yang dijanjikan. Setiap makanan jadi juga didata melalui sistem ini sebelum kembali didistribusikan menuju sekolah-sekolah.

4. Penerima (Pihak Sekolah)

   Pihak sekolah, atau pihak penerima akhir dari distribusi pasokan dapat melakukan konfirmasi jumlah makanan jadi yang sampai di sekolahnya. Pendataan juga dilakukan untuk setiap pengambilan kembali wadah makanan. Setiap ketidaksesuaian dapat dilaporkan melalui sistem langsung kepada admin untuk ditindaklanjuti sesuai aturan.

2. ###  Location

   Sistem Tracking Supply Chain ini akan diterapkan di seluruh wilayah Indonesia, sesuai dengan target program yang akan mencakup seluruh sekolah-sekolah di Indonesia. Sebagai acuan, lokasi operasionalnya meliputi:

- Sekolah Negeri seluruh Indonesia sebagai titik distribusi makanan  
- Kantor pengawasan admin sistem MBG  
- Badan Pangan Nasional sebagai pengawas tingkat pusat serta pengelola utama program secara nasional

3. ###  Responsibilities

   Setiap pihak yang terlibat dalam sistem ini memiliki tanggung jawab yang jelas untuk memastikan kelancaran dan akuntabilitas proses distribusi.

1. Admin Pusat

   Admin Pusat bertanggung jawab mengelola seluruh data yang ada dalam sistem, mulai dari data pengguna, sekolah, hingga jadwal distribusi harian. Selain itu, admin pusat melakukan pengawasan terhadap alur distribusi, mulai dari gudang, dapur, hingga ke pihak sekolah sebagai penerima akhir. Admin pusat juga berperan sebagai pihak yang menerima dan menindaklanjuti laporan ketidaksesuaian yang dikirimkan oleh pekerja gudang, pekerja dapur, maupun pihak sekolah. 

2. Pekerja Gudang

   Pekerja Gudang memiliki tanggung jawab untuk memvalidasi jumlah pasokan bahan makanan yang akan diberangkatkan dari gudang ke setiap dapur di wilayah distribusi. Mereka harus memastikan bahwa jumlah pasokan yang dikirim telah sesuai dengan kebutuhan dan jadwal pengiriman yang telah ditentukan sebelumnya. Jika ditemukan adanya ketidaksesuaian jumlah atau kualitas pasokan, pekerja gudang wajib melaporkan kondisi tersebut melalui sistem agar dapat segera ditindaklanjuti oleh admin pusat. Tanggung jawab ini penting untuk memastikan bahwa seluruh bahan makanan yang keluar dari gudang dalam kondisi layak dan sesuai kebutuhan distribusi harian.

3. Pekerja Dapur

   Pekerja Dapur bertanggung jawab melakukan verifikasi atas setiap pasokan bahan makanan yang diterima dari gudang. Apabila terdapat perbedaan jumlah atau kualitas bahan makanan dari yang seharusnya, pekerja dapur berkewajiban melaporkannya langsung ke admin pusat melalui sistem. Selain itu, pekerja dapur juga harus mengelola penggunaan bahan makanan secara efisien, dengan menyesuaikan jumlah porsi makanan yang bisa dihasilkan dari pasokan yang diterima. Setelah makanan selesai diproses, mereka mendata jumlah makanan jadi yang siap untuk dikirimkan ke sekolah-sekolah, guna memastikan setiap pengiriman terdokumentasi dengan baik. Tanggung jawab pekerja dapur sangat penting dalam menjaga kualitas dan kuantitas makanan yang akan diterima oleh penerima manfaat program.

4. Pihak Sekolah

   Pihak Sekolah sebagai penerima akhir dalam proses distribusi bertanggung jawab untuk melakukan verifikasi atas jumlah makanan jadi yang mereka terima dari dapur. Setelah makanan diterima, pihak sekolah juga wajib mencatat dan memastikan distribusi makanan kepada siswa berjalan sesuai dengan ketentuan yang telah ditetapkan dalam program. Selain itu, mereka juga mendokumentasikan proses pengambilan kembali wadah makanan yang digunakan, dan jika ditemukan ketidaksesuaian dalam jumlah, kualitas, atau waktu pengiriman, pihak sekolah wajib melaporkannya melalui sistem kepada admin pusat untuk ditindaklanjuti.

4. ###  Need

    Sistem Tracking Supply Chain ini dibutuhkan untuk menjawab berbagai tantangan dalam proses distribusi makanan yang selama ini sering mengalami kendala, seperti keterlambatan pengiriman, ketidaksesuaian jumlah pasokan, serta kurangnya akuntabilitas dalam pelaporan. Dalam skema distribusi yang melibatkan berbagai pihak mulai dari gudang, dapur, hingga sekolah, seringkali terjadi miskomunikasi yang menyebabkan distribusi tidak efisien dan berpotensi menurunkan kualitas pelayanan kepada penerima manfaat. Oleh karena itu, sistem ini hadir untuk memastikan seluruh proses distribusi dapat dipantau, mulai dari persediaan bahan makanan di gudang, pengolahan di dapur, hingga penyaluran makanan jadi ke sekolah-sekolah. Selain itu, sistem ini juga memberikan ruang bagi setiap pihak untuk melaporkan kendala atau ketidaksesuaian secara langsung, sehingga penanganan dapat dilakukan lebih cepat dan akurat. Dengan adanya sistem ini, diharapkan seluruh alur distribusi makanan bergizi dapat berlangsung lebih otomatis, efisien, dan akuntabel, sekaligus menjamin bahwa makanan yang sampai ke penerima manfaat sesuai dengan standar kualitas yang telah ditetapkan dalam program.

6. ## Overview of Document

   Dokumen ini berisi penjelasan menyeluruh mengenai sistem Tracking Distribusi Program Makan Bergizi Gratis yang dikembangkan untuk mendukung otomasi, efisiensi, dan akuntabilitas dalam proses distribusi makanan kepada penerima manfaat. Bagian awal dokumen membahas latar belakang, tujuan, dan ruang lingkup sistem secara umum. Selanjutnya, dijelaskan secara detail mengenai pihak-pihak yang terlibat, lokasi pelaksanaan, tanggung jawab masing-masing pengguna sistem, serta kebutuhan yang melatarbelakangi pengembangan sistem ini.

   Dokumen ini juga mencakup uraian mengenai desain sistem, termasuk arsitektur, alur proses distribusi, dan fitur utama yang disediakan untuk menunjang kegiatan operasional harian program. Bagian berikutnya menjelaskan spesifikasi teknis dari sistem yang meliputi kebutuhan perangkat keras, perangkat lunak, serta integrasi dengan sistem lain apabila diperlukan. Selain itu, terdapat pula penjelasan mengenai mekanisme pelaporan, pengawasan, serta alur komunikasi antar pengguna sistem untuk menjamin kelancaran distribusi.

   Akhir dari dokumen ini menyajikan berbagai model perancangan sistem yang akan memberikan gambaran menyeluruh mengenai interaksi antar pengguna dengan sistem, proses bisnis utama, serta struktur data yang digunakan. Dengan ini, diharapkan dokumen ini dapat menjadi acuan lengkap bagi tim pengembang maupun pihak terkait lainnya dalam memahami, mengembangkan, dan mengimplementasikan sistem Tracking Distribusi Program Makan Bergizi Gratis secara efektif dan efisien.

   

# **Bab 3 \- Kebutuhan Sistem**

1. ## Tujuan Objektif

	Tujuan objektif adalah target-target yang ingin dicapai dalam sistem ini berdasarkan kebutuhan pengguna dan stakeholder. Tujuan ini mencakup pengembangan fitur-fitur yang akan mempermudah proses distribusi makanan bergizi gratis (MBG) serta meningkatkan akurasi dan efisiensi dalam manajemen inventaris. Tujuan objektif ini juga mencakup pengembangan sistem yang dapat diakses oleh semua pengguna dengan berbagai tingkat hak akses, sehingga setiap pengguna dapat melakukan tugasnya dengan mudah dan efisien.

1. ###  Prioritas Tinggi

* **Pengembangan Database Inventaris:** Mengembangkan database inventaris yang terpisah untuk masing-masing node (Gudang, Dapur, dan Sekolah), sehingga setiap admin node dapat mengakses dan mengelola data inventaris di node-nya.

* **Fitur Pemindaian QR pada Pengiriman Barang:** Mengimplementasikan fitur scan QR untuk paket barang yang dikirim oleh petugas node pengirim. Saat pemindaian dilakukan, sistem secara otomatis menghapus data barang dari database inventaris node pengirim.

* **Fitur Pemindaian QR pada Penerimaan Barang:** Mengimplementasikan fitur scan QR untuk paket barang yang diterima oleh petugas node penerima. Pemindaian ini akan memicu sistem untuk secara otomatis menambahkan data barang ke database inventaris node penerima.

* **Fitur Quick Menu untuk Pengolahan Bahan Baku:** Menyediakan opsi bagi petugas dapur untuk memilih bahan baku yang akan diolah menjadi makanan siap saji melalui quick menu. Pemilihan bahan baku ini secara otomatis akan mengurangi jumlah stok bahan baku yang diperlukan.

2. ###  Prioritas Sedang

* **Fitur Pembuatan Temporary Menu:** Mengembangkan fitur yang memungkinkan petugas dapur membuat temporary menu baru. Menu ini hanya dapat diakses oleh petugas dapur di node terkait.

* **Fitur Konfirmasi Menu oleh Node Admin:** Menyediakan mekanisme bagi node admin untuk mengkonfirmasi menu yang dibuat oleh petugas dapur. Setelah dikonfirmasi, menu tersebut akan dapat diakses oleh petugas dapur pada node lain.

* **Fitur Pelaporan Ketidaksesuaian:** Mengembangkan fitur bagi petugas node penerima untuk melaporkan ketidaksesuaian barang yang diterima. Laporan ini akan ditampilkan kepada admin serta mengindikasikan node asal pengiriman barang yang tidak sesuai.

3. ###  Prioritas Rendah

* **Informasi Detail Paket Melalui Pemindaian QR:** Mengembangkan fitur yang memungkinkan petugas node untuk mendapatkan informasi detail mengenai paket barang dengan memindai kode QR pada paket tersebut. Fitur ini akan menampilkan informasi seperti asal pengiriman, tujuan penerimaan, isi paket, cara penyimpanan yang baik, tanggal kadaluarsa, dan lain-lain.

* **Integrasi Sistem Logistik Alternatif:** Menyediakan opsi untuk membuat sistem logistik baru yang terpisah dan tidak terhubung dengan sistem logistik yang sudah ada. Hal ini memungkinkan fleksibilitas dalam pemilihan beberapa mitra logistik yang berbeda.

2. ## Tujuan Nonobjektif

	Tujuan nonobjektif adalah target-target yang ingin dicapai dalam sistem ini yang tidak terkait langsung dengan kebutuhan pengguna dan stakeholder, tetapi lebih kepada aspek teknis dan operasional dari sistem. Tujuan ini mencakup pengembangan sistem yang dapat diandalkan, aman, dan mudah digunakan oleh semua pengguna.

1. ### Reliability

* Sistem harus tersedia 24/7 setidaknya 99% dari waktu, kecuali saat maintenance.

* Setidaknya 95% Scan QR harus menghasilkan data yang benar, jika tidak maka sistem harus memberikan notifikasi error.

* Setiap perubahan data inventaris harus tercatat dan dapat diakses oleh admin.

* Tidak boleh ada data inventaris yang hilang atau terhapus tanpa sepengetahuan admin.

* Tidak boleh ada data inventaris yang terduplikasi.

* Setiap laporan ketidaksesuaian harus tercatat dan dapat diakses oleh admin.

2. ### Usability

* Role node admin harus mudah dipahami tanpa latar belakang IT dengan memberikan petunjuk penggunaan.

* Role petugas harus mudah dipahami tanpa pendidikan formal tanpa diberikan pelatihan.

* Setiap fitur harus memiliki dokumentasi yang jelas dan mudah dipahami.

* Setiap fitur harus memiliki panduan penggunaan yang mudah diakses.

* Setiap fitur harus memiliki notifikasi error yang jelas dan mudah dipahami.

* Setiap fitur harus memiliki notifikasi sukses yang jelas dan mudah dipahami.

* Setiap fitur harus dapat diakses dari halaman utama dengan maksimal 5 klik.

* User yang sudah mengetahui menu tidak perlu menggunakan lebih dari 10 detik untuk menggunakannya.

3. ### Performance

* Setiap halaman harus dapat dimuat dalam waktu kurang dari 5 detik dengan asumsi koneksi internet 384 kbps (3G).

* Sistem harus mampu menangani hingga 10 pengguna secara bersamaan.

* Setiap resource media jika tidak dapat dimuat harus memberikan alternatif teks.


4. ### Security

* Setiap data sensitif yang disimpan harus dienkripsi.

* Setiap data yang dikirimkan antar node harus dienkripsi.

* Autentikasi harus menggunakan metode yang aman.

* Setiap perubahan data inventaris harus di-log dan dapat diakses oleh admin.

* Setiap laporan ketidaksesuaian harus di-log dan dapat diakses oleh admin.

* Setiap perubahan data inventaris harus dapat di-rollback.

* Setiap laporan ketidaksesuaian harus dapat di-rollback.


5. ### Supportability

* Perubahan topology node harus dapat dilakukan dan tanpa downtime.

* Penambahan jenis barang harus dapat dilakukan dan segera dapat digunakan oleh semua node.

* Konfirmasi menu harus dapat dilakukan oleh node admin dan segera dapat digunakan oleh semua node.

* Sistem perlu dapat digunakan pada perangkat Android 12 ke atas.


6. ### Purchased Components

* Nama domain yang akan berfungsi sebagai alamat website.

* Cloud service provider untuk menyimpan data dan menjalankan aplikasi, jika diperlukan.

* Printer label untuk mencetak QR code.

* Kotak kardus untuk mengemas barang yang akan dikirim sebagai simulasi pada workshop.

* Bahan baku untuk membuat makanan siap saji sebagai simulasi pada workshop.

# **Bab 4 \- Rancangan Kerja Sistem**

1. ## Deskripsi Aplikasi

	Aplikasi ini adalah sistem berbasis web yang dirancang untuk mendukung pencatatan, pemantauan, serta pengelolaan inventaris dalam distribusi Makanan Bergizi Gratis (MBG). 

1. ### Fitur Utama

Terdapat lima fitur utama yang akan membantu pengguna dalam menjalankan tugasnya, antara lain:

* **Inventaris Setiap Node:** Setiap node (Gudang, Dapur, Sekolah) memiliki database inventaris yang terpisah. Admin node dapat mengelola data inventaris di node-nya masing-masing.

* **Pemindaian QR pada Pengiriman Barang:** Petugas node pengirim dapat melakukan pemindaian QR pada paket barang yang akan dikirim. Pemindaian ini akan menghapus data barang dari database inventaris node pengirim.

* **Pemindaian QR pada Penerimaan Barang:** Petugas node penerima dapat melakukan pemindaian QR pada paket barang yang diterima. Pemindaian ini akan menambahkan data barang ke database inventaris node penerima.

* **Pengolahan Bahan Baku:** Petugas dapur dapat memilih bahan baku yang akan diolah menjadi makanan siap saji melalui quick menu. Pemilihan ini akan mengurangi jumlah stok bahan baku yang diperlukan dan menambah jumlah stok makanan jadi yang dihasilkan.

* **Pelaporan Ketidaksesuaian:** Petugas node penerima dapat melaporkan ketidaksesuaian barang yang diterima. Laporan ini akan ditampilkan kepada admin dan mengindikasikan node asal pengiriman barang yang tidak sesuai.

2. ### Fitur Tambahan

Selain lima fitur utama tersebut, aplikasi ini juga dilengkapi dengan fitur pendukung lainnya, seperti:

* **Pembuatan Temporary Menu:** Petugas dapur dapat membuat temporary menu baru yang hanya dapat diakses oleh petugas dapur di node terkait. Temporary menu dapat dikonfirmasi oleh node admin agar dapat diakses oleh petugas dapur pada node lain.

* **Informasi Detail Paket:** Petugas node dapat mendapatkan informasi detail mengenai paket barang dengan memindai kode QR pada paket tersebut. Fitur ini akan menampilkan informasi seperti asal pengiriman, tujuan penerimaan, isi paket, cara penyimpanan yang baik, tanggal kadaluarsa, dan lain-lain.

* **Integrasi Sistem Logistik Alternatif:** Sistem ini menyediakan opsi untuk membuat sistem logistik baru yang terpisah dan tidak terhubung dengan sistem logistik yang sudah ada. Hal ini memungkinkan fleksibilitas dalam pemilihan beberapa mitra logistik yang berbeda.

3. ### Fitur Admin

Setelah itu, terdapat fitur tambahan khusus admin node dan admin pusat, antara lain:

* **Pengelolaan Data Pengguna:** Admin node dapat mengelola data pengguna di node-nya masing-masing, termasuk menambah, mengedit, dan menghapus akun pengguna. Admin pusat dapat mengelola data pengguna di seluruh node.

* **Pengelolaan Inventaris:** Admin node dapat mengelola data inventaris di node-nya masing-masing, termasuk menambah, mengedit, dan menghapus data inventaris. Admin pusat dapat mengelola data inventaris di seluruh node.

* **Pengelolaan Node:** Admin pusat dapat mengelola data node, termasuk menambah, mengedit, dan menghapus data node. Admin node tidak dapat mengelola data node.

* **Pengelolaan Laporan Ketidaksesuaian:** Admin pusat dapat mengelola laporan ketidaksesuaian yang diterima dari seluruh node. Admin node dapat mengelola dan menindaklanjuti laporan ketidaksesuaian yang diterima dari node-nya masing-masing.

* **Dashboard Monitoring:** Admin pusat dapat memantau seluruh alur distribusi, mulai dari gudang, dapur, hingga ke pihak sekolah sebagai penerima akhir. Admin node dapat memantau alur distribusi di node-nya masing-masing.

2. ## Penjelasan Node

Terdapat tiga node dalam sistem ini, yaitu Gudang, Dapur, dan Sekolah. Dalam sistem akan disebut sebagai Source Node, Assembly Node, dan Distribution Node agar dapat lebih generic dan dapat digunakan untuk sistem lain di luar MBG. Setiap node memiliki fungsi dan tanggung jawab yang berbeda dalam proses distribusi makanan bergizi gratis (MBG). Berikut adalah deskripsi masing-masing node:

1. ### Source Node

Source Node, atau gudang, adalah titik awal dalam proses distribusi makanan. Di sini, bahan baku makanan diterima dan disimpan sebelum didistribusikan ke dapur. Tanggung jawab dari source node adalah sebagai berikut:

* Menerima bahan baku dari supplier dan menyimpannya dalam inventaris.
* Membuat QR Code untuk setiap paket bahan baku yang akan dikirim ke dapur.
* Melakukan pemindaian QR Code pada paket bahan baku yang akan dikirim ke dapur.

2. ### Assembly Node

Assembly Node, atau dapur, adalah titik di mana bahan baku diolah menjadi makanan siap saji. Tanggung jawab dari assembly node adalah sebagai berikut:

* Memindan QR Code pada paket bahan baku yang diterima dari gudang dan menyimpannya dalam inventaris dapur.
* Memastikan bahwa bahan baku yang diterima dalam kondisi baik dan sesuai dengan yang tercatat dalam sistem, jika tidak sesuai maka pekerja dapur harus melaporkan ketidaksesuaian.
* Mengelola bahan baku yang diterima dan memastikan bahwa jumlah yang diterima sesuai dengan yang tercatat dalam sistem.
* Mengolah bahan baku menjadi makanan siap saji sesuai dengan menu yang telah ditentukan.
* Membuat menu baru jika makan siap saji yang ingin dibuat tidak ada dalam daftar menu yang sudah ada.
* Membuat QR Code untuk setiap paket makanan siap saji yang akan didistribusikan ke sekolah.
* Melakukan pemindaian QR Code pada paket makanan siap saji yang akan didistribusikan ke sekolah.

1. ### Distribution Node

Distribution Node, atau sekolah, adalah titik akhir dalam proses distribusi makanan. Di sini, makanan siap saji diterima dan didistribusikan kepada siswa. Tanggung jawab dari distribution node adalah sebagai berikut:

* Memindai QR Code pada paket makanan siap saji yang diterima dari dapur dan menyimpannya dalam inventaris sekolah.
* Memastikan bahwa makanan siap saji yang diterima dalam kondisi baik dan sesuai dengan yang tercatat dalam sistem, jika tidak sesuai maka pihak sekolah harus melaporkan ketidaksesuaian.

3. ## Penjelasan User Roles

Terdapat tiga user roles dalam sistem ini, yaitu Admin Pusat, Admin Node, dan Petugas. Setiap role memiliki hak akses dan tanggung jawab yang berbeda dalam sistem. Selain itu, setiap role yang sama pada jenis node yang berbeda memiliki sedikit perbedaan tergantung pada jenis nodenya. Berikut adalah deskripsi masing-masing user roles:

1. ### Admin Pusat

Admin Pusat adalah pengguna yang memiliki hak akses penuh terhadap seluruh sistem. Hak akses ini mencakup pengelolaan data petugas, sekolah, jadwal distribusi, serta pemantauan data seluruh laporan. Untuk lebih rincinya, hak admin pusat dapat dilihat pada 4.1.3

2. ### Admin Node

Admin Node adalah pengguna yang memiliki hak akses administrator terbatas pada node-nya masing-masing. Hak akses ini mencakup pengelolaan data petugas, sekolah, jadwal distribusi, serta pemantauan data seluruh laporan di node-nya. Untuk lebih rincinya, hak admin node dapat dilihat pada 4.1.3.

Seluruh admin node memiliki hak sebagai berikut:

* **Pengelolaan Data Petugas:** Admin node dapat mengelola data petugas di node-nya masing-masing, termasuk menambah, mengedit, dan menghapus akun petugas. Admin node juga dapat memberikan hak akses kepada petugas sesuai dengan peran dan tanggung jawabnya.
* **Pengelolaan Inventaris:** Admin node dapat mengelola data inventaris di node-nya masing-masing, termasuk menambah, mengedit, dan menghapus data inventaris.
* **Pengelolaan Laporan Ketidaksesuaian:** Admin node dapat mengelola laporan ketidaksesuaian yang diterima dari node-nya masing-masing. Admin node juga dapat menindaklanjuti laporan ketidaksesuaian yang diterima dari node-nya masing-masing.
* **Monitoring Alur Distribusi:** Admin node dapat memantau alur distribusi di node-nya masing-masing. Admin node juga dapat melihat laporan distribusi yang telah dilakukan oleh petugas di node-nya.

Selain itu, terdapat hak akses tambahan yang dimiliki oleh admin node sesuai dengan jenis node-nya:

* **Admin Gudang:** Admin gudang memiliki hak untuk membuat QR Code untuk setiap paket bahan baku yang akan dikirim ke dapur.
* **Admin Dapur:** Admin dapur memiliki hak untuk mengkonfirmasi menu yang dibuat oleh petugas dapur. Selain itu, admin dapur juga dapat membuat QR Code untuk setiap paket makanan siap saji yang akan didistribusikan ke sekolah.
* **Admin Sekolah:** Admin sekolah tidak memiliki hak akses tambahan selain hak akses yang sama dengan admin node lainnya. 

3. ### Petugas

Petugas adalah pengguna yang memiliki hak akses terbatas. Hak akses ini mencakup pemindaian QR Code pada paket barang yang diterima dan dikirim, serta pelaporan ketidaksesuaian barang.

