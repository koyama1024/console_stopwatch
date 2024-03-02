import 'dart:io';

void main() {
  print("ストップウォッチを開始するならsを押してね");
  String? inputstart  = stdin.readLineSync();
  print("The entered name is ${inputstart}");
}