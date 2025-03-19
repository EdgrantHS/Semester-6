# NK - Nirkabel

---

## Kuliah Perdana (Week 1)

- 3GPP (3rd Generation Partnership Project) adalah organisasi yang mengembangkan standar teknologi telekomunikasi seluler. Memberikan spesifikasi teknis untuk jaringan seluler, termasuk 5G.
- Provider seluler akan mengimplementasikan standar 3GPP seperti ericsson, huawei untuk membuat hardware
- Lalu operator seluler akan membeli perangkat keras dari vendor tersebut dan menyediakan layanan telekomunikasi kepada pelanggan

## Week 3

### Limitation

- Quality
- Capacity
- Coverage

Trade off antara ketiga hal tersebut

### Spectrum

- Spectrum terbatas jadi kalau udah dipakai tidak bisa dipakai untuk keperluan lain
- Jadi, awalnya 1g, walaupun udah outdated, range segitu tidak bisa dipakai yg lebih baru seperti 5g

> 1G masih belum ada standard, jadi contohnya di jepang pake standard sendiri, hp jepang gak work di luar jepang, mulai akhir 3g baru ada standard global (3gpp)

#### 2 Sumbu

- Mobility: Low (nomadic), Medium (Vehicular), High (350 km/h)
  - Contoh wifi itu low mobility
- Peak Data Rate: 100 Mbps (low), 1 Gbps (medium), 10 Gbps (high)

[Grafik Halaman 16](./res/materi1.pdf)

> 5G mencakup mobility dan peak data rate yang berbeda beda (refer to catatan jartel)

### Radio Spectrum

- TX: Transmit
- filter for TX: menyesuaikan agar karakteristik antena dan medium
- Medium (air)
- filter for RX
- RX: Receive

> Antena paling baik pada 1/4, 1/2, 1 panjang gelombang, apa yg terjadi pada telescoping antenna (yang di mobil bisa diatur panjangnya): [https://chatgpt.com/share/67b535b4-2ddc-8001-9f10-16070e58bb89](https://chatgpt.com/share/67b535b4-2ddc-8001-9f10-16070e58bb89), frek FM hampir setiap panjang gelombang bisa ditangkap secara baik, gak segitu sensitif

> Gelombang yang frekuensi rendah, lebih tahan terhadap regangan, jadi submarine paki low frekuensi (30kHz), atau contoh lain petir kalau jauh yg kita dengar hanya frekuensi rendahnya

### Multi Acess Technology

Banyak orang perlu komunikasi secara wireless, kalau semua komunikasi sekaligus, akan interferensi.

Perlu Multiple Acess

- SDMA (Space)
- FDMA: dipake di 1G
- TDMA: dipake di 2G
- CDMA (Gabungan time dan frekuensi): dipake di 2G dan 3G
- PDMA (Power) / NoMA (Non orthogonal Multiple Access)

[Halaman 23](./res/materi1.pdf)

> SIC: Successive interference cancellation, "multiplexing" utk iot biasanya, mengetahui bit ke-x kebalik, di reciever tinggal dibalik

> CDMA sulit di jamming karena setiap user punya slot frekuensi dan time yg beda yang hanya diketahui user dan bts

#### Multiple Access vs Multiplexing vs Duplexing

- Multiple Access:
- Multiplexing: Mengabungkan lebih dari 1 source mengunakan 1 device
- Duplexing: Pengaturan pengiriman 2 arah (Full duplex jika digunakan 2 arah dalam waktu yang sama)

#### Fruekuensi band

BTS prioritas lebih tinggi dibanding client, jadi client harus menyesuaikan frekuensi. Selain handle client, BTS juga harus handle meta/management data. Paket control tersebut privelege lebih tinggi

BTS:

- Recieve frek tinggi:
- Transit frek rendah: Saat BTS kirim data control, frek rendah lebih tahan terhadap interferensi dan regangan

## (Week 4)

### TDD (Time Division Duplex)

- Uplink dan downlink menggunakan frekuensi yang sama, namun diatur dengan waktu yang berbeda

### TDMA (Time Division Multiplexing Access)

Advance TDMA, kalau ada paket yg collision, handle packet akan dibagi ke slot selanjutnya

---

Distance berpengaruh di TDD/TDMA karena propagasi delay berbeda beda, jadi harus diatur dengan baik agar tidak terjadi collision.

## Fading (Week 7)

- Path loss: Reduksi sinyal saat melewati medium
- Shadowing: Reduksi sinyal karena ada objek diantara transmitter dan receiver
- Multipath fading: Reduksi sinyal karena ada banyak path yang berbeda
- Doppler shift: Perubahan frekuensi sinyal karena pergerakan transmitter/receiver
  - Slow fading: Perubahan sinyal yang lambat
  - Fast fading: Perubahan sinyal yang cepat (HSR, Starlink)
- Co-channel interference: Interferensi dari sinyal yang menggunakan frekuensi yang sama
- Adjacent channel interference: Interferensi dari sinyal yang menggunakan frekuensi yang berdekatan

> Mengapa multipath fading, grafik pada page 41, sinyal yg pertama diterima bukan yang paling kencang? Tidak ada Line of Sight, jadi sinyal yang pertama diterima adalah sinyal yang terpantul dari objek lain.

### Security

- Layer 1 (Physical) akan melewati medium yang gak dicontrol, jadi mudah diintercept
  - Perlu enkripsi, coding (CDMA), dll
- Authentication, kalau cabled user harus punya kabel, tapi kalau wireless, siapa aja bisa nyambung

### Standard

> Keluarga Celluler dan LAN, ada di video di emas

## Modern TX RX (Week 7)

### Transmitter (TX)

- Channel coding
- Modulation: Mengubah data digital ke analog
- MIMO: Multiple Input Multiple Output
  - Beamforming: Mengarahkan sinyal ke arah tertentu dengan menggunakan multiple antena
  - Spatial multiplexing: Mengirimkan data ke multiple user dengan menggunakan multiple antena

Di RX, sama tetapi kebalik

- Channel Estimation
- MIMO Receiver Equalization
- Demodulation
- Channel Decoding

### Code Division Multiplexing (CDMA)

Contoh: ada code 8 bit

- setiap user punya code sendiri yang orthogonal (tidak saling interferensi)
  - Mobile A: 1011 1001
  - Mobile B: 0110 1110
  - Mobile C: 1100 1101
- Pada waktu yang sama, user A kirim 1, B kirim 0, C kirim 1
- Signal Code: 1 kirim N, 0 kirim -N
- 3 Signal terkirim: 1 -1 1
  - A kirim 1 (1011 1001) \* 1 = +-++ +--+
  - B kirim 0 (0110 1110) \* -1 = +--+ ---+
  - C kirim 1 (1100 1101) \* 1 = ++-- ++-+
- yang sampaikan ke BTS: resultan dari 3 signal,
  - +3, -1, -1, +1, +1, -1, -3, +3
- Do magic stuff

## Medium Access Control (Week 8)

- Carrier Sense Multiple Access termasuk dalam kategori Medium Access Control Protocol (MAC)

### Deterministic

Reservation based:

- central polling: ada central yang mengatur siapa yang boleh pakai, reserving
  - Wifi
  - 802.11 PCF
  - 802.11e PCF
- decentral polling (token ring): deprecated, token dikirimkan ke user, user yang punya token boleh pakai
- beaconing

### Random (Contention Based)

#### Without Carrier Sense

Tidak mendengar dulu frekuensi apakah sedang dipakai, langsung kirim data. Sangat jarang digunakan karena akan sering terjadi collision terutama pada jaringan yang padat.

- ALOHA: Jika collision, kedua user tidak bisa menggunakan sistem. Terutama karena tidak ada pengaturan waktu
- Slotted ALOHA: lebih modern, pakai slot waktu. Karena ada time-slot, collision lebih jarang karena pengiriman hanya pada slot waktu tertent u

#### Carrier Sense

> CSMA: Carrier Sense Multiple Access

##### Slotted CSMA: Mendengar dulu frekuensi apakah sedang dipakai, jika tidak, kirim data pada slot waktu yang kosong

##### CSMA: Mendengar dulu frekuensi apakah sedang dipakai, jika tidak, kirim data

- CSMA/CD: Collision Detection, jika mendeteksi collision, kirim sinyal collision (jamming signal), dipakai di LAN (Ethernet) biasanya karena pada wireless tidak bisa mendeteksi collision karena saat transmisi, tidak bisa receive
  - Hidden Terminal Problem: A tidak bisa mendengar B, B tidak bisa mendengar A, tapi keduanya bisa mendengar C. Jadi jika A dan B kirim data ke C, akan terjadi collision di C, A dan B tidak bisa mendeteksi collision (false negative)
  - Exposed Terminal Problem: A mau transmit ke B, C mau transmit ke D. A dan C dalam satu area, jika mereka transmit bersamaan, tidak akan terjadi collision, tapi karena C mendengar A, C tidak transmit, padahal tidak akan terjadi collision

- non-persistent CSMA: Jika mendeteksi frekuensi sedang dipakai, tunggu waktu yang random

- 1-persistent: Jika mendeteksi frekuensi sedang dipakai, kirim data setelah frekuensi kosong, jika collision, stop pengiriman

- p-persistent CSMA: Jika mendeteksi frekuensi sedang dipakai, kirim data dengan probabilitas p, jika collision, stop pengiriman

- CSMA/CA: Collision Avoidance, jika mendeteksi frekuensi sedang dipakai, kirim data setelah waktu tertentu dengan sistemnya reservasi. DCF (Distributed Coordination Function) dan EDCA (Enhanced Distributed Coordination Access)
  - WIFI, setiap device yang ingin mengirim data, mengirimkan RTS (Request to Send) ke AP, AP mengirimkan CTS (Clear to Send) ke device, device mengirimkan data, AP mengirimkan ACK (Acknowledgement) ke device yang mengirimkan data
  - RTS dan CTS digunakan untuk menghindari hidden terminal problem, jika RTS bercollision, masih acceptable karena ukuran RTS kecil
  - Device lain yang menerimia RTS yang bukan AP, akan defer (menunda) pengiriman data walau tidak mendengar CTS
  - setelah CTS dan transmisi data, device yang menerima data akan mengirimkan ACK (layer 2, walaupun UDP masih ada karena UDP layer 4), jika tidak menerima ACK, device yang mengirimkan data akan mengirimkan data lagi

> Pada wireless, saat transmisi, receiver tidak bisa mendengar frekuensi yang sedang dipakai, berbeda dengan wired, jadi harus ada sistem yang mengatur pengiriman data agar tidak terjadi collision

---

### Wifi (DCF)

Distribution Coordination Function

- Menggunakan RTS/CTS untuk avoid hidden terminal problem untuk data
