# Jawaban UTS - Cloud Computing

## 1. Argumen berapa lama data monitoring cloud disimpan

Berapa lama data monitoring, atau sering disebut retention period tergantung dengan jenis data yang disimpan. Menurut sumber dari Google Cloud, yang menggunakan protocol OpenTelemetry, retention period data monitoring adalah sebagai berikut:

- Data metrics disimpan selamat 24 bulan. Data ini mencakup data yang dihasilkan oleh aplikasi, sistem, dan layanan yang diukur oleh monitoring.
- Data logs dari metrics disimpan selama 6 minggu, ini termasuk data yang dihasilkan oleh aplikasi, sistem, dan layanan yang diukur oleh monitoring.
- Data yang berhubungan dengan kesehatan dari proses disimpan selama 24 jam. Contohnya adalah data yang dihasilkan oleh salah satu aplikasi yang sedang berjalan.

Tujuan dari menyimpan data monitoring terdapat banyak, beberapa antaranya adalah:

- Analisis Kinerja Sistem: Mengetahui applikasi/service apa yang paling banyak digunakan, kapan waktu yang paling banyak digunakan, dan lain sebagainya.
- Prediksi Kebutuhan: Dengan data monitoring yang disimpan, kita bisa memprediksi kebutuhan infrastruktur yang akan digunakan di masa depan.
- Deteksi Anomaly: Dengan data monitoring yang disimpan, anomali/kecurangan bisa dideteksi dengan lebih cepat.
- Cost Optimization: Dengan data monitoring yang disimpan, kita bisa mengurangi infrastruktur yang tidak terpakai.

Tergantung dengan jenis data yang disimpan, tujuannya bisa berbeda-beda. Dengan tujuan yang berbeda, kebutuhan lama penyimpanan data monitoring juga berbeda. Contohnya jika terdeteksi error pada sebuah aplikasi, data monitoring aplikasi/proses tersebut akan segera dilihat dan ditemukan error tersebut. Oleh karena itu, data monitoring tersebut tidak perlu disimpan lama.

Namun, data penggunaan aplikasi yang disimpan bisa digunakan untuk analisis kinerja sistem, prediksi kebutuhan, dan lain sebagainya. Analisis seperti itu perlu range watu yang lebih panjang (bulan/tahun) untuk mendapatkan hasil yang akurat. Oleh karena itu, data monitoring jenis ini disimpan lebih lama.

Referensi
- https://cloud.google.com/monitoring/quotas#data_retention_policy
- https://cloud.google.com/monitoring/api/v3/latency-n-retention

## 2. Manfaat karakterisasi beban kerja

Karakterisasi beban kerja, atau sering disebut Workload Characterization, mengkategorikan setiap penggunaan aplikasi pada server cloud berdasarkan beban kerjanya. Terdapat banyak cara untuk mengkategorikan workload, salah satu di antaranya dijelaskan Xie dan Loh yang membagi workload sebagai berikut:

Turtle: Tidak menggunakan terlalu banyak sumber daya
Sheep: Tidak diganggu aplikasi lain
Rabbit: Performa akan menurun jika ada aplikasi lain yang menggunakan sumber daya yang sama
Devil: Mengurangi performa aplikasi lain yang menggunakan sumber daya yang sama

Setiap jenis pembagian karakterisasi memiliki manfaat dan tujuan dibuat yang berbeda. Manfaat jenis karakterisasi beban kerja yang dijelaskan di atas adalah untuk mengetahui dampak setiap aplikasi pada performa aplikasi lain yang menggunakan sumber daya yang sama. Terdapat juga kategorasi lain yang fokus lebih rinci pada jenis sumber daya yang digunakkan, seperti:

- Persistent storage
- Compute power
- Network bandwidth
- Broadcast transmission receiver
- Server Data Bus

Dengan mengetahui aplikasi menggunakan sumber daya jenis apa, provider cloud server dapat menyesuaikan dan mengalokasikan sumber daya yang digunakan oleh aplikasi tersebut dan aplikasi lain yang menggunakan sumber daya yang sama.

## 3. Meminimalkan efek perrformance variability

Pada sisi cloud provider, performance variability terjadi karena ketidakpastian dalam penggunaan sumber daya oleh aplikasi setiap pengguna. Jika aplikasi memerlukan sumber daya yang lebih besar, lebih banyak infrastruktur cloud yang diberikan. Sebaliknya, jika aplikasi memerlukan sumber daya yang lebih kecil, infrastruktur cloud yang diberikan akan lebih sedikit.

Namun, jika terdapat banyak aplikasi yang secara tiba-tiba memerlukan sumber daya yang besar, mungkin terjadi infrastruktur cloud tidak cukup untuk menampung semua aplikasi tersebut. Hal ini akan menyebabkan performance variability pada aplikasi-aplikasi tersebut.

Cara meminimalkan efek performance variability adalah dengan melakukan prediksi kebutuhan sumber daya aplikasi di masa depan. Dengan melakukan prediksi, cloud provider dapat menyesuaikan infrastruktur cloud yang diberikan kepada aplikasi tersebut. Jika diperkirakan pada waktu tertentu terdapat banyak aplikasi yang memerlukan sumber daya yang besar, cloud provider dapat menambah infrastruktur cloud yang diberikan.

Prediksi dapat dilakukan dengan banyak cara. Mungkin dapat membuat AI model prediksi berdasarkan data monitoring metrics yang disimpan. Metode lain, yang dijelaskan pada referensi [2] yang berjudul "Performance Prediction of Cloud-Based Big Data Applications" adalah menggunakan simulator dagSim yang menggunakan data-data jumlah sumber daya dan jumlah pengguna untuk memprediksi kebutuhan sumber daya aplikasi di masa depan.

## 4. Peran virtualisasi pada public dan private cloud

Virtualisasi adalah teknologi yang memungkinkan satu server fisik menjalankan beberapa sistem operasi virtual. Dalam kata lain, dibuatkan banyak Virtual Maching (VM) yang masing-masing menjalankan aplikasi dan memiliki pengguna yang berbeda. 

Pada public cloud, wajib menggunakan virtualisasi karena banyak pengguna yang menggunakan infrastruktur yang sama. Dengan virtualisasi, setiap pengguna memiliki VM yang berbeda, sehingga data dan aplikasi yang digunakan oleh pengguna lain tidak akan tercampur. Dengan virtualisasi, security dan privacy data pengguna lebih terjamin.

Selain itu, virtualisasi juga dapat mengutilisasi sumber daya hardware secara lebih efisien. Jika terdapat VM yang tidak digunakan, sumber daya hardware yang digunakan dikurangi/dimatikan. Sebaliknya, jika terdapat VM yang memerlukan sumber daya yang lebih besar, sumber daya hardware yang digunakan ditambahkan atau menambah VM baru. Hal ini yang menjadi kelebihan dari virtualisasi pada public dan private cloud.

Kesimpulannya, virtualisasi akan menjaga security dan privacy data pengguna pada public cloud, dan meningkatkan efisiensi penggunaan sumber daya hardware pada public dan private cloud.

## 5. Model jaringan dan jenis protocol pada data center

Biasanya data center menggunakan abstraksi dengan 1 atau beberapa exposed port yang bertindak sebagai server, port ini yang akan berkomunikasi dengan client luar (penyewa data center). Di dalam jaringan cloud biasayna menggunakan model peer-to-peer, dimana tidak ada server pusat dan komunikasi langsung antara client dan node dalam jaringan cloud. 

Salah satu contoh model yang lebih spesifik adalah model jaringan yang menggunakan Virtual Ethernet Bridge (VEB) dan Virtual Ethernet Port Aggregator (VEPA). VEB adalah switch yang berjalan di atas software, sedangkan VEPA adalah switch yang berjalan di atas hardware (external switch).

Jenis protocol yang digunakan pada data center biasanya menggunakan TCP/IP, RPC, SOAP, UDDI, WSDL, REST API, dan DCB. Secara singkat protocol tersebut digunakan untuk:

- TCP/IP: Komunikasi IP based yang digunakan untuk mengirim data antar client dan server pada internet
- RPC: Remote Procedure Call, digunakan untuk memanggil fungsi di remote server
- HTTP: Protocol yang menjadi standard untuk mengirim data di web (Berjalan di atas TCP/IP)
- SOAP: Protocol yang digunakan untuk mengirim pesan di web service menggunakan XML
- UDDI: Direktori untuk mencari web service yang dibutuhkan
- WSDL: Deskripsi web service dalam XML (Berjalan di atas SOAP)
- DCB: Protocol untuk mengatur traffic di data center agar lebih efisien, memaksialkan NIC (Memungkinakan traffic dari luar dilayani oleh VM yang berbeda)
