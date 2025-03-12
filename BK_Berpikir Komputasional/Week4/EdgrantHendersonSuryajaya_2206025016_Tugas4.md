Nama: Edgrant Henderson Suryajaya  
NPM: 2206025016

# Tekotek kotek

```pseudo
1. READ jumlah_ayam
2. IF jumlah_ayam == 1 then
3.        PRINT "Anak ayam turunlah 1, pergi 1 tinggalah induknya"
4. ELSE IF jumlah_ayam < 1 then
5.        PRINT "Input invalid"
6. ELSE
7.        WHILE JUMLAH AYAM > 1
6.            PRINT "Tek kotek kotek, anak ayam turun berkotek"    
7.            PRINT "Anak ayam turunlah", jumlah_ayam, 
8.            PRINT "pergi 1 tinggalah", jumlah_ayam-1    
9.            
10.         jumlah_ayam = jumlah_ayam - 1
11. 
12.             IF jumlah_ayam < 2 then
13.                 BREAK dari While Loop
14.             END IF
15.         
16.            PRINT "Anak ayam turunlah", jumlah_ayam, 
17.            PRINT "pergi 1 tinggalah", jumlah_ayam-1    
18.
19.         jumlah_ayam = jumlah_ayam - 1    
20.     END WHILE
21. END IF
22. 
23. PRINT "Anak ayam turunlah 1, pergi 1 tinggalah induknya"
```

# Sum of Grade

```pseudo
1. grades = [70, 75, 80, 85, 82, 90, 65]
2. 
3. SUM = 0
4. 
5. # Untuk kasus ini length adalah 6, jadi length + 1 adalah 7,
6. # Total akan berlooping sebanyak 7 kali (1,2,3,4,5,6,7)
7. FOR variabel i = 1 to length(grades) + 1
8.     SUM = SUM + grades[i]
9. END FOR
10.
11. AVERAGE = SUM / (length(grades) + 1)
12.
13. IF AVERAGE <= 85 then
14.     my_grade = "Grade A"
15. ELSE IF AVERAGE <= 75 then
16.     my_grade = "Grade B"
17. ELSE IF AVERAGE <= 55 then
18.     my_grade = "Grade C"
19. ELSE
20.     my_grade = "Grade D"
21. END IF
22.
23. PRINT "Total Grade: ", SUM
24. PRINT "Average Grade: ", AVERAGE
25. PRINT "My Grade: ", my_grade
```

