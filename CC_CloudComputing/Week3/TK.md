# Menjelaskan Web Service Dalam Cloud

# **TCP/IP**

TCP/IP adalah model sebagai basis fundemental untuk berkomunikasi antar alat dalam internet. Model ini memiliki 4 layer, yaitu: Network Access, Internet, Transport, dan Application. Alternative dari TCP/IP adalah OSI (Open System Interconnection) yang memiliki 7 layer. Fungsi dari setiap layer TCP/IP adalah sebagai berikut

- Network Access: Mengatur bagaimana data dikirimkan melalui jaringan fisik  
- Internet: Mengatur bagaimana data dikirimkan melalui jaringan logis  
- Transport: Mengatur bagaimana data dikirimkan dari satu alamat ke alamat lain  
- Application: Mengatur bagaimana data diakses oleh aplikasi

Dalam konteks *Cloud Computing*, TCP/IP digunakan untuk mengatur komunikasi antar server dan client, serta server dengan server. TCP/IP juga digunakan untuk mengatur komunikasi antar *node* dalam *cloud peer-to-peer*. Jika ada request dari client luar, komunikasi menggunakan internet, dan ada exposed port yang bertindak sebagai sebuah interface server, komunikasi interface ini dengan client menggunakan model TCP/IP.

# **RPC**

RPC (Remote Procedur Call) adalah sebuah mekanisme yang memungkinkan fungsi atau prosedur di satu komputer dapat dipanggil oleh proses lain di komputer berbeda melalui jaringan, seolah-olah fungsi tersebut dipanggil secara lokal. Konsep dasarnya adalah mengabstraksi komunikasi jaringan sehingga pengembang tidak perlu menangani detail protokol komunikasi secara langsung, sehingga cukup memanggil fungsi seperti biasanya.

**Cara Kerja RPC:**

* Client memanggil fungsi (prosedur) yang berada di server (jarak jauh).  
* Panggilan fungsi ini dikemas ke dalam sebuah request yang dikirim melalui protokol jaringan tertentu (Misalnya TCP/IP).  
* Server yang menerima panggilan akan mengeksekusi fungsi tersebut di lingkungannya, lalu hasil eksekusi dikembalikan client dalam bentuk response.  
* Response yang diterima client kemudian diproses seolah-olah itu adalah hasil dari pemanggilan fungsi lokal.

	**Keunggulan RPC:**

* Transparasi: Developer seolah memanggil fungsi secara lokal, padahal fungsinya dieksekusi di komputer lain.  
* Peningkatan produktivitas: Menyederhanakan pembuatan aplikasi terdistribusi karena tidak perlu menuliskan low level code untuk pengiriman data.  
  **Kapan Digunakan:**

* Arsitektur terdistribusi yang memerlukan pemanggilan fungsi jarak jauh (misalnya microservices, sistem enterprise besar yang terpisah menjadi beberapa layanan).  
* Aplikasi legacy yang diintegrasikan lewat pemanggilan fungsi jarak jauh (misalnya, sistem lama di C yang harus berkomunikasi dengan sistem baru di Java).  
* Saat kita membutuhkan performance yang relatif cepat dengan overhead protokol yang masih bisa dikontrol, karena RPC umumnya lebih ringan daripada protokol web berbasis teks (tergantung implementasi).

	**Contoh Implementasi:**

* gRPC (dari Google) yang memakai protokol HTTP/2 dan Protobuf, memberikan performa yang cukup tinggi dibanding pemanggilan API berbasis REST.

	**Penggunaannya dalam Cloud Computing:**

* Microservices di Cloud: Arsitektur microservices yang berjalan di Kubernetes atau layanan manajemen kontainer (EKS, GKE, AKS) sering menggunakan RPC (misalnya gRPC) untuk komunikasi antar layanan, sehingga setiap layanan bisa saling memanggil fungsi satu sama lain.  
* Fungsi Serverless: Walau biasanya berbasiskan HTTP/REST, beberapa implementasi serverless (misalnya AWS Lambda yang dipicu oleh event internal di AWS) secara konseptual juga bisa dipandang sebagai bentuk RPC: memicu eksekusi fungsi di lokasi lain tanpa perlu penanganan server manual.  
* High-Performance Computing (HPC) di Cloud: Dalam skenario komputasi intensive (misalnya perhitungan ilmiah), RPC dapat dimanfaatkan agar node-node di dalam cluster komputasi dapat berkomputasi dan berbagi hasil di lingkungan cloud.

# **HTTP**

HTTP (Hypertext Transfer Protocol) adalah protokol di lapisan aplikasi yang menjadi backbone komunikasi data di World Wide Web (WWW). HTTP didefinisikan di atas protokol TCP/IP. Secara umum, HTTP menggunakan metode request dan response yang berbasis teks.

**Cara Kerja:**

* Client (Browser, atau program lain seperti HTTP Client) membuat request ke server dengan menyertakan: method (GET, POST, PUT, DELETE, dsb.), header, dan body request.  
* Server merespons dengan mengirimkan kode status (misalnya 200 OK, 404 Not Found), header, dan content yang diminta.  
* Setelah menerima respons, client dapat menampilkan data, menyimpannya, atau memprosesnya lebih lanjut.  
  **Keunggulan HTTP:**

* Sederhana dan luas digunakan: Menjadi standar untuk komunikasi web.  
* Stateless: Setiap permintaan ke server diproses sebagai transaksi terpisah.  
* Mudah di-debug dan diimplementasikan: Format teksnya (plain text) memudahkan developer membaca request dan response.  
  **Kapan Digunakan:**

* Saat mengembangkan website atau web services yang diakses melalui web browser.  
* Saat menggunakan REST API, yang secara umum mengandalkan protokol HTTP untuk komunikasi.  
* Ketika memerlukan protokol standar, port umum (80 atau 443\) yang relatif mudah menembus firewall di berbagai jaringan.  
  **Contoh Implementasi:**

* RESTful API untuk layanan daring: misalnya API di media sosial, dsb.  
* Website statis ataupun dinamis.

	**Penggunaannya dalam Cloud Computing:**

* RESTful API pada Cloud Services: Hampir semua penyedia cloud menyediakan API berbasis HTTP untuk mengelola sumber daya (misalnya membuat VM, mengkonfigurasi jaringan, mengatur database). Contoh: AWS punya API untuk S3, EC2, dsb. GCP punya API untuk Compute Engine, Cloud Storage. Azure juga punya API untuk VM, Blob Storage, dsb.  
* Load Balancer dan API Gateway: Layanan seperti AWS Elastic Load Balancer atau API Gateway memanfaatkan HTTP untuk menyalurkan traffic ke berbagai instansi aplikasi.  
* Webhook/Callback di Cloud: Banyak layanan cloud yang memberi notifikasi (misalnya status job, perubahan data) dengan mengirimkan HTTP request ke endpoint milik pengguna.

# **HTML**

HTML (Hypertext Markup Language) adalah bahasa markup yang memberikan struktur pada konten web, misalnya teks, gambar, link, form, tabel, dsb. HTML diinterpretasikan oleh web browser untuk menampilkan halaman web.

**Cara Kerja:**

* Server mengirimkan dokumen HTML ke client (browser) melalui HTTP.  
* Browser membaca HTML dan merendernya menjadi tampilan yang dapat berinteraksi dengan pengguna.  
* HTML dapat menyertakan link ke sumber daya lain (misalnya CSS, gambar, video, dsb.).  
  **Struktur Dasar:**

* Tag: Misalnya \html\, \head\, \body\, \p\, \a\, dan seterusnya.  
* Attribute: Digunakan untuk memberikan informasi tambahan pada tag, misal \a href=”bla”\.

	**Kapan Digunakan:**

* Saat membuat front-end untuk aplikasi web, blog, dsb.  
* Ketika membutuhkan struktur dokumen yang dapat diakses dan divisualisasikan di browser.  
  **Contoh Implementasi:**

* Website statis personal (seperti portofolio).  
* Front-end aplikasi web yang di-render oleh browser (digabungkan dengan CSS dan JS).

	**Penggunaannya dalam Cloud Computing:**

* Web App Hosting di Cloud: Developer bisa men-deploy aplikasi web yang menampilkan HTML (beserta CSS dan JS) di layanan hosting seperti AWS Amplify, Azure Static Web Apps, atau Netlify.  
* Portal Manajemen Cloud: Banyak portal cloud (seperti AWS Management Console, Azure Portal, GCP Console) sendiri menggunakan HTML (beserta JS) untuk memberikan interface grafis ke pengguna.  
* Front-end untuk Microservices: Skenario umum di cloud adalah memecah aplikasi menjadi dua yaitu front-end (HTML/CSS/JS) dan back-end (API). File HTML sering diberikan dari object storage (seperti Amazon S3 atau Azure Blob) yang berfungsi sebagai CDN atau hosting statis.

# **XML**

XML (Extensible Markup Language) adalah bahasa markup generik yang sifatnya dapat diperluas (extensible). Tidak seperti HTML yang sudah punya tag tetap, di XML pengguna bisa membuat tag sendiri sesuai kebutuhan data. XML fokus pada representasi data, bukan tampilan.

**Cara Kerja:**

* Data didefinisikan melalui tag yang dapat ditentukan sendiri oleh developer, misalnya \Customer\, \Invoice\, dsb.  
* Setiap elemen berpasangan \Tag\ dan \/Tag\ untuk mengawali dan mengakhiri data.  
* Dapat digunakan sebagai format pertukaran data lintas platform dan lintas bahasa.  
  **Keunggulan XML:**

* Struktur data yang jelas dan self-describing: Setiap data dibungkus dengan tag yang memberi konteks.  
* Extensible: Tag dan skema dapat disesuaikan sesuai domain atau kebutuhan industri tertentu.  
  **Kapan Digunakan:**

* Dalam layanan web berbasis SOAP, dimana pesan dikirim dalam format XML.  
* Pertukaran data antar-aplikasi yang membutuhkan skema kompleks dan validasi formal (misalnya XSD).  
* Sistem yang memerlukan keseragaman format dan kebebasan definisi struktur data. (misalnya e-banking).  
  **Contoh Implementasi:**

* RSS feed untuk mendistribusikan konten blog.  
* Konfigurasi di banyak sistem (misalnya AndroidManifest.xml di android).  
* SOAP message: \soap:Envelope\ bla \/soap:Envelope\ di dalamnya ada struktur XML yang mendeskripsikan data request/response. 

	**Penggunaannya dalam Cloud Computing:**

* Konfigurasi Layanan Cloud: Beberapa alat atau format konfigurasi (terutama versi lama) menggunakan XML. Misal, deployment descriptor di Java EE (di-deploy pada server cloud) atau file pom.xml (Maven) saat membangun aplikasi yang diarahkan ke cloud.  
* SOAP-based Web Services: Meskipun banyak yang beralih ke REST/JSON, masih ada layanan SOAP di cloud (khususnya integrasi enterprise) yang menggunakan XML untuk pesan request/response.  
* Data Interchange di Aplikasi Legacy: Banyak aplikasi korporal besar yang berjalan di cloud hybrid (campuran on-premise dan cloud) masih menggunakan XML untuk pertukaran data lalu lintas modul atau lintas organisasi.

    **SOAP**

SOAP (Simple Object Access Protocol) adalah protokol pertukaran pesan yang digunakan dalam layanan web (web services). SOAP menggunakan XML sebagai format pesan untuk pertukaran data antar aplikasi.

Contoh SOAP Message:

```xml
POST /StockQuote HTTP/1.1
Host: www.stockquoteserver.com
Content-Type: text/xml;
charset="utf-8"
Content-Length: nnnn
SOAPAction: "Some-URI"
?xml version="1.0"?
SOAP-ENV:Envelope
  xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"
  SOAP-ENV:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"
  SOAP-ENV:Body
    m:GetLastTradePrice xmlns:m="Some-URI"
      symbolDIS/symbol
    /m:GetLastTradePrice
  /SOAP-ENV:Body
/SOAP-ENV:Envelope
```

4 Line pertama adalah header HTTP, kemudian diikuti dengan pesan SOAP yang berisi envelope, body, dan elemen-elemen yang diperlukan untuk memanggil fungsi atau layanan di server.

# REST

REST (Representational State Transfer) adalah standard penggunaan HTTP yang menetapkan fungsi dari _method_ HTTP (GET, POST, PUT, DELETE) untuk berinteraksi dengan _resource_ (data) di web. URL digunakan untuk mengidentifikasi endpoint, dan data biasa dikirimkan dalam format JSON. j

## Cara Kerja:

- REST menggunakan metode HTTP (GET, POST, PUT, DELETE) untuk berinteraksi dengan _resource_.
- Setiap _resource_ diidentifikasi dengan URL.
- `GET` digunakan untuk membaca data, `POST` untuk menambah data, `PUT` untuk mengubah data, dan `DELETE` untuk menghapus data.

Contoh:

```http
POST /api/v1/users
Host: www.example.com
Content-Type: application/json
{
    "nama kelas": "Cloud Computing"
}
```

Pada contoh di atas, request POST digunakan untuk menambah data ke _resource_ `/api/v1/users` dengan data berupa JSON. Request ini akan menambahkan data "nama kelas" dengan nilai "Cloud Computing" ke _resource_ tersebut.

## Penggunaannya dalam Cloud Computing:

- REST API: Banyak layanan cloud menyediakan REST API untuk mengelola sumber daya di cloud. Contoh: AWS, Azure, GCP.
- Microservices: Arsitektur microservices yang populer di cloud menggunakan REST API untuk komunikasi antar layanan.


# JSON 

JSON (JavaScript Object Notation) merupakan salah satu format yang paling sering digunakan untuk pertukaran data di web. JSON bersifat simple, tidak menggunakan banyak character, dan mudah dibaca oleh manusia. JSON juga mudah dipahami oleh berbagai bahasa pemrograman. Alternatif lain dari JSON adalah XML yang dibahas di atas, kelebihan dan kekurangan keduanya akan dibahas pada poin selanjutnya.

## Cara Kerja:

- JSON menggunakan struktur key-value pairs, key adalah nama dari data dan value adalah data itu sendiri.
- JSON dapat berupa object, array, number, string, boolean, atau null.

Contoh:

```json
{
    "Nama Kelas": "Cloud Computing",
    "Peserta": [
        {
            "Nama": "Andi",
            "NPM": 12345
        },
        {
            "Nama": "Budi",
            "NPM": 67890
        }
    ],
    "Materi" : [
        "Hari 1": {
            "judul": "Pengenalan Cloud Computing",
            "topik": {
                "CPMK": {
                    "Nomor CP": 1,
                    "Nama CP": "Apa itu Cloud Computing"
                }
            }
        }
    ]
}
```

Pada contoh di atas, JSON berisi informasi tentang kelas Cloud Computing. Terdapat data yang bertipe object, array, string, number, dan nested object. Pada array materi, dapat dilihat nesting yang cukup dalam, hal tersebut memungkinkan JSON sulit dibaca oleh manusia dibanding XML yang memiliki label tag.


## Perbandingan JSON dan XML:

- JSON lebih ringkas dan mudah dibaca oleh manusia.
- JSON lebih cepat dibaca dan ditulis oleh mesin.
- XML memiliki skema yang lebih kuat dan validasi yang lebih ketat.
- XML lebih baik untuk pertukaran data yang kompleks dan terstruktur.
- Pada data yang complex, XML lebih mudah di-debug karena strukturnya yang jelas. JSON lebih baik untuk data yang sederhana dan tidak terlalu banyak _nesting_.

## Penggunaannya dalam Cloud Computing:

Pada Cloud Computing, JSON sering digunakan untuk pertukaran data antar layanan (API) yang berjalan di cloud. REST API yang dijelaskan pada bagian atas menggunakan JSON, begitu juga dengan beberapa layanan cloud yang menyediakan API untuk mengelola sumber daya. 



[buat](https://youtu.be/POx9YqbF_PA?si=PobYbGT5gnfewUT7) [esai](https://youtu.be/Fmy8k7f1iLs?si=XP3WHAnhHky8nFGY) [tentang](https://www.youtube.com/watch?v=YZWKVIjClTE) [11](https://youtu.be/NJ1tne9u8YM?si=aMWvjJ9FLqHcAje-) [web](https://music.youtube.com/watch?v=V6gq-6dAbHA&si=ogA3EsyqR9SLuIgZ) [service](https://music.youtube.com/watch?v=bqDL0mTUiLs&si=rbJkbV_aTw-sDpjd) [di](https://music.youtube.com/watch?v=5_ZWx7Q26Tw&si=zT1Of_xet5ksbRD1) [link](https://music.youtube.com/watch?v=5_ZWx7Q26Tw&si=Vb5iES15te2Zt6x7) [ini](https://emas2.ui.ac.id/pluginfile.php/4984823/mod_resource/content/1/02%20-%20Foundations%20of%20Cloud%20Computing%20and%20Information%20Security.pdf)