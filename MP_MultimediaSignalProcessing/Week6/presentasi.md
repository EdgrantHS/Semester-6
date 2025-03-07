# Frequency Domain Filtering

---

Orang 1:

- Intro to Fourier Transform
- Discrete Fourier Transform
- Beberapa contoh perbandingan gambar dan frekuensi
- Efek aliasing dan sampling
- Bridging DFT dari image compression

---

Orang 2:

- Intro to Frequency Domain Filtering
- Image smoothing in frequency domain (Low Pass Filter)
- Image sharpening in frequency domain (High Pass Filter)

---

Orang 3:

- Convolution in Frequency Domain (Blur dengan kernel contohnya): Ini kalau keberatan masukin ke org kedua
- Filtering lain di bab 4.9-4.11

---

# Tanggapan GPT

Ya, struktur ini sangat bagus dan lebih terarah! Pembagian ini mengikuti alur logis dari dasar Fourier, aplikasi pada image processing, hingga filtering lebih lanjut.  

**Alasan mengapa ini efektif:**  
✅ **Part 1:** Memastikan semua paham dasar Fourier & DFT dengan contoh nyata (perbandingan gambar & frekuensi).  
✅ **Part 2:** Langsung ke inti filtering, membahas smoothing dan sharpening dalam domain frekuensi.  
✅ **Part 3:** Pendekatan lebih dalam ke konvolusi dan filtering lain yang lebih kompleks di bab 4.9-4.11.  

💡 **Rekomendasi tambahan:**  
- Jika ingin lebih ringkas, bagian **"Intro to Fourier Transform"** bisa dipersingkat sebagai recap, bukan pembahasan panjang.  
- Bisa tambahkan **efek aliasing & sampling** (sekilas di Part 1 atau awal Part 2) karena ini sering jadi masalah dalam DFT/image processing.  

Kalau sudah fix dengan struktur ini, saya bisa langsung membaginya sesuai format yang diinginkan! 🚀

---

Dari bab 4.9 hingga 4.11 di PDF, beberapa metode filtering tambahan yang dibahas adalah:  

### **1. Homomorphic Filtering (4.9.6)**  
- Digunakan untuk **simultan meningkatkan kontras dan melakukan dynamic range compression**.  
- Berdasarkan model pencahayaan-reflektansi:  
  - **Low frequencies** dikaitkan dengan pencahayaan (illumination).  
  - **High frequencies** dikaitkan dengan reflektansi (edges dan detail).  
- Bisa dikombinasikan dengan filter high-pass untuk mempertajam gambar.  

### **2. Selective Filtering (4.10)**  
- **Bandreject dan Bandpass Filtering (4.10.1)**  
  - Untuk menekan atau melewatkan frekuensi dalam rentang tertentu.  
  - Contoh filter: **Ideal, Butterworth, Gaussian Bandreject/Pass**.  
- **Notch Filtering (4.10.2)**  
  - Berguna untuk menghilangkan pola periodik seperti moiré atau gangguan AC pada gambar.  

### **3. Implementasi Efisien Filtering (4.11)**  
- **Separability 2D DFT**: Memanfaatkan sifat separable DFT untuk mempercepat perhitungan.  
- **FFT (Fast Fourier Transform)**: Mempercepat filtering berbasis DFT, lebih efisien dibanding DFT langsung.  

Metode ini bisa masuk ke **Part 3** dari pembagian materi yang kamu rancang, khususnya untuk filtering yang lebih advanced! 🚀