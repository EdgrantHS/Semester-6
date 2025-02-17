# CC - Cloud Computing

---

## Kuliah Perdana (Week 1)

### Nilai

- Tugas Individu : 10%
- Tugas Praktek : 25%
- UTS : 25%
- UAS/Projek : 35%
- Quiz : 5%

### Akses Komputasi Awan

- Public Cloud: AWS, Azure, GCP
- Private Cloud: OpenStack, VMware
- Hybrid Cloud: Combination of Public and Private Cloud
- Community Cloud: Shared infrastructure for specific community

### Services

- IaaS: Infrastructure as a Service
- PaaS: Platform as a Service
- SaaS: Software as a Service

> Kekurangan pertama: Perlu koneksi internet

## Introduction to Cloud Computing (Week 2)

Node dalam server cloud peer-to-peer, tidak ada server pusat. Jika ada request dari client luar, ada sebuah exposed port yg bertindak sebagai server. Di dalam jaringan cloud p2p, komunkasi dengan client model client-server (hanya 1 interface, tetapi dalamnya sebenarnya banyak node).

### Shared Storage

- SAN (Storage Area Network) : Storage yang terhubung ke jaringan
- iSCSI (Internet Small Computer System Interface) : Protokol untuk mengakses storage melalui jaringan

### Mengapa Data Center pakai UDP dibanding TCP

- TCP conection oriented, oleh karena itu jika sedang ada koneksi, tidak bisa ada koneksi lain. UDP connectionless, tidak ada koneksi, langsung kirim data. Bisa banyak koneksi sekaligus.

### Data Center Paradigms

- Scalable (Modular)
- Performence
- Flexible
- Resiliency
- Maintainability

### Enterprise IT

- Availability: Jika ada node yang down, yg lain cover

### Web Services

- TCP/IP
- RPC: Remote Procedure Call, memanggil fungsi di remote server 
- SOAP(Service Oriented Architecture Protocol): Protokol untuk mengirim pesan di web service menggunakan XML
- UDDI (Universal Description, Discovery, and Integration): Direktori untuk mencari web service yang dibutuhkan 
- WSDL (Web Service Description Language): Deskripsi web service dalam XML (Berjalan di atas SOAP)
- REST API
- DCB (Data Center Bridging): Protokol untuk mengatur traffic di data center agar lebih efisien, memaksialkan NIC (Memungkinakan traffic dari luar dilayani oleh VM yang berbeda)
    - VEB (Virtual Ethernet Bridge): switch internally using software
    - VEPA (Virtual Ethernet Port Aggregator): switch internally using hardware (external switch)

### Security

- Saas: Software as a Service (Security tangung jawab penyedia)
- PaaS: Platform as a Service (Security tangung jawab gabungan)
- IaaS: Infrastructure as a Service (Security tangung jawab penyewa)