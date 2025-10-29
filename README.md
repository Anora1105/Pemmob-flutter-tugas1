## Nama = Ariza Nola Rufiana
## NIM = H1D023005
### Penjelasan
🧮 Kalkulator BMI - Dart
Program sederhana menggunakan bahasa Dart untuk menghitung *BMI (Body Mass Index)* seseorang berdasarkan berat badan dan tinggi badan.  
BMI adalah salah satu indikator yang digunakan untuk mengetahui apakah berat badan seseorang termasuk *kurus, normal, gemuk, atau obesitas*.
Deskripsi
Program ini meminta pengguna untuk memasukkan:
1. *Berat badan (dalam kilogram)*
2. *Tinggi badan (dalam sentimeter)*

Setelah itu, program akan:
- Mengubah tinggi badan ke meter.
- Menghitung BMI menggunakan rumus
- Menentukan kategori berat badan berdasarkan hasil BMI.

Penjelasan Program (main.dart)

```dart
import 'dart:io';
Mengimpor pustaka dart:io agar program dapat menerima input dari pengguna melalui terminal.

stdout.write("Masukkan berat badan (kg): ");
double berat = double.parse(stdin.readLineSync()!);
Baris ini meminta input berat badan dari pengguna dan mengubahnya menjadi tipe data double untuk perhitungan.

stdout.write("Masukkan tinggi badan (cm): ");
double tinggi = double.parse(stdin.readLineSync()!);
Meminta input tinggi badan dan menyimpannya sebagai angka desimal.

double tinggiMeter = tinggi / 100;
Mengubah satuan tinggi badan dari sentimeter ke meter, karena rumus BMI menggunakan meter.

double bmi = berat / (tinggiMeter * tinggiMeter);
Rumus utama BMI: berat badan dibagi kuadrat dari tinggi badan (dalam meter).


if (bmi < 18.5) {
  print("Kategori: Kurus");
} else if (bmi >= 18.5 && bmi < 24.9) {
  print("Kategori: Normal");
} else if (bmi >= 25 && bmi < 29.9) {
  print("Kategori: Gemuk");
} else {
  print("Kategori: Obesitas");
}
Bagian ini menentukan kategori berat badan berdasarkan rentang nilai BMI sesuai standar WHO:

< 18.5 → Kurus

18.5–24.9 → Normal

25–29.9 → Gemuk

≥ 30 → Obesitas
print("\nHasil Perhitungan BMI: ${bmi.toStringAsFixed(2)}");
Menampilkan hasil BMI dengan dua angka di belakang koma agar lebih rapi.
