import 'dart:io';

void main() {
  print("=== Kalkulator BMI ===");

  // Input berat badan
  stdout.write("Masukkan berat badan (kg): ");
  double berat = double.parse(stdin.readLineSync()!);

  // Input tinggi badan
  stdout.write("Masukkan tinggi badan (cm): ");
  double tinggi = double.parse(stdin.readLineSync()!);

  // Konversi tinggi ke meter
  double tinggiMeter = tinggi / 100;

  // Hitung BMI
  double bmi = berat / (tinggiMeter * tinggiMeter);

  print("\nHasil Perhitungan BMI: ${bmi.toStringAsFixed(2)}");

  // Tentukan kategori BMI
  if (bmi < 18.5) {
    print("Kategori: Kurus");
  } else if (bmi >= 18.5 && bmi < 24.9) {
    print("Kategori: Normal");
  } else if (bmi >= 25 && bmi < 29.9) {
    print("Kategori: Gemuk");
  } else {
    print("Kategori: Obesitas");
  }
}