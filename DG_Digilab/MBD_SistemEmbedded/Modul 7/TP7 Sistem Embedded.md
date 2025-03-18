

# Tugas Pendahuluan 7

```text
Nama: Wakaba Mutsumi
NPM: 22222222222
Class: MBD Pagi/Siang
```

## 1. Mendalami dan memahami apa itu interrupt pada mikrokontroler! <span style="color:red;">(0 Poin)</span>

\-

## 2. Secara singkat, jelaskan mengapa perlu interrupt dan tidak semua program dalam 1 loop saja! <span style="color:red;">(10 Poin)</span>

Jawaban anda

**Referensi:**
- 

## 3. Analisis kode berikut dengan menjelaskan fungsi umum, rincian setiap baris, dan perubahan yang akan Anda lakukan jika Anda menulisnya. <span style="color:red;">(30 Poin)</span>

```avrasm
#define __SFR_OFFSET 0x00
#include "avr/io.h"

.cseg ; program memory segment
.org 0x0002	 ; external interrupt 0 vector
    rjmp toggle_led

.global main
main:
    ldi r16, (1<<ISC01)
    out MCUCR, r16
    ldi r16, (1<<INT0)
    out GICR, r16
    sei

toggle_led:
    in r16, PORTB
    eor r16, (1<<PB5)
    out PORTB, r16
    reti
```

Jawaban anda

**Referensi:**
- 

## 4. Buat program nomor 3 dengan interupt handlernya ditulis pada bahasa C! <span style="color:red;">(10 Poin)</span>

Jawaban anda

**Referensi:**
- 

## 5. Bandingkan perbedaan cara penulisan interrupt timer dan external interrupt pada avr aseembly! <span style="color:red;">(10 Poin)</span>

Jawaban anda

**Referensi:**
-

## 6. Buatlah program dalam AVR Assembly sesuai dengan spesifikasi berikut! <span style="color:red;">(40 Poin)</span>

- Setiap 7 detik mencetak "Hello World!" pada serial monitor tanpa menggunakan timer interrupt.
- Setiap 5 detik meyalakan LED pertama menggunakan timer interrupt.
- Terdapat button yang jika ditahan, akan menyalakan LED kedua dan jika dilepas, akan mematikan LED kedua. Menggunakan external interrupt.
- Intterupt handler boleh ditulis dalam bahasa C. 
- Wokwi tidak mendukung interrupt.

---

Jawaban anda

[video berhasil menjalankan program (Proteus/Rangkaian Asli)](https://www.youtube.com/watch?v=)

```avrasm
; kode
```

```c
// kode
```

**Referensi:**
- Tetap perlu referensi