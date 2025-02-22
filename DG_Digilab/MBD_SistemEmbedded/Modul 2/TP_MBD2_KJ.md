---
Tugas Pendahuluan 2
Name: [isi]
NPM: [isi]
Class: MBD [Pagi/Siang]
---

# Tugas Pendahuluan 2

```text
Nama: [isi]
NPM: [isi]
```

## 1. Sebutkan beberapa perbedaan dari assembly yang kalian pernah belajar pada mata kuliah OAK dengan assembly yang digunakan pada arduino (10 poin)

- Nama register berbeda x86 ada A-D dengan fungsi khusus masing masing, avr ada R0-R31
- x86 ada segment register, avr tidak
- Instruksi berbeda, x86 lebih kompleks
- x86 memiliki lebih banyak instruksi

## 2. Apa register-register utama yang mengatur pin yang akan digunakan pada praktikum, jelaskan fungsi dan kapan dipakai setiap register tersebut! (20 poin)

- DDRx (Data Direction Register) untuk mengatur pin sebagai input atau output
- PORTx untuk menulis data ke pin yang dikonfigurasi sebagai output atau untuk mengaktifkan/menonaktifkan internal pull-up resistor pada pin yang dikonfigurasi sebagai input
- PINx untuk membaca data dari pin yang dikonfigurasi sebagai input

## 3. Dari jawaban nomor 1, jelaskan lebih rinci pengaturan-pengaturan yang dapat diubah (bit apa yang diubah) untuk mengatur sebuah pin sebagai input atau output dan 2 jenis input yang dapat digunakan (20 poin)

- DDRx, bit 1 untuk output, 0 untuk input
- PORTx, bit 1 untuk high, 0 untuk low
- PINx, bit 1 untuk high, 0 untuk low
- 2 jenis input: pull-up dan pull-down
- Pull-up, bit 1, pull-down bit 0

## 4. Jelaskan salah satu cara untuk menerapkan delay tanpa library external, sertakan kode (10 poin)

- Menggunakan loop pada instruksi kosong

## 5. Buatlah sebuah proyek Arduino di https://wokwi.com/ yang dapat men-toggle (kalau sedang menyala maka akan dimatikan, dan sebaliknya) sebuah LED saat sebuah button ditekan! Proyek memiliki file .ino yang kosong dan menerapkan kode assembly di file .S. Cantumkan screenshot rangkaian yang telah kalian buat serta copas kode ke dalam TP yang memiliki Nama&NPM serta komentar pada setiap barisnya. (30 poin)

```avrasm
; Description: Toggle an LED on PB5 when a button on PB4 is pressed.

#define __SFR_OFFSET 0x00
#include "avr/io.h"

.global main

main:
    ; Output Setup - Pin 13 (PB5) as output
    SBI DDRB, 5   ; Set bit 5 of DDRB for output
    
    ; Input Setup - Pin 12 (PB4) as input with pull-up
    CBI DDRB, 4   ; Clear bit 4 of DDRB for input
    SBI PORTB, 4  ; Enable pull-up on PB4
    
    ; Toggle Setup
    CLR R16       ; Initialize toggle register to 0

MainLoop:
    SBIC PINB, 4  ; Skip next instruction if button (PB4) is pressed
    JMP MainLoop  ; Loop until button is pressed

    COM R16       ; Toggle the value of R16
    
    ; Check the state and jump accordingly
    BRNE LedOFF   ; If R16 != 0, jump to LedOFF
    ; Else, proceed to LedON

LedON:
    SBI PORTB, 5  ; Turn on LED (PB5)
    JMP Delay     ; Jump to delay routine

LedOFF:
    CBI PORTB, 5  ; Turn off LED (PB5)

Delay:
    LDI R20, 100      ; Load outer loop counter with 100
    
OuterLoop:
    LDI R30, lo8(10000)  ; Load inner loop low byte
    LDI R31, hi8(10000)  ; Load inner loop high byte (R31:R30 = 10000)
    
InnerLoop:
    SBIW R30, 1  ; Decrement inner counter by 1
    BRNE InnerLoop; Continue until inner counter reaches 0
    
    SUBI R20, 1   ; Decrement outer loop counter by 1
    BRNE OuterLoop; Continue until outer loop counter reaches 0

JMP MainLoop  ; Return to main loop
```