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
