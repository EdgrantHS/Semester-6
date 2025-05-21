# NK - Nirkabel

---

## Distridubted Coordination Function - DCF (Week b1)

- RTS/CTS dipakai di Wifi, tetapi mekanismenya dipakai di semua wireless network
- IEEE 802.11 (WiFi)
- DCF(Distributed Coordination Function): Koordinasi terdistribusi antara semua user
- NAV (Network Allocation Vector): User yang mendengar RTS, akan mengupdate NAV-nya, 
  - jadi tidak akan mengirimkan data selama NAV-nya aktif. 
  - Akan ada id user lain yang mengirim RTS
  - dan durasi NAV aktif
- Backoff: Jika channel busy (Antara ada yg kirim, atau NAV aktif), 
  - tunggu channel idle
  - counting down Backoff Interval waktu random (diatur cw), 
  - lalu transmit RTS
    - Jika channel dikirim RTS oleh user lain, aktivkan NAV
  - Jika NAV sudah selesai, lanjut ke *Sisa* counting down Backoff Interval
- Nilai cw tidak tetap, diautur oleh Binary Exponential
  - When node fails to receive CTS, cw is doubled
  - When data transfer completes, cw is reset to minimum value
- Disadvantage:
  - High power consumption
  - Hidden terminal problem
  - Exposed terminal problem
  - Quality of service (QoS) not supported

> Wifi juga mendukung PCF (Point Coordination Function): DCF berbasis rebuntan, PCF berbasis reservasi

