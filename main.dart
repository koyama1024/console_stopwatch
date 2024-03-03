import 'dart:io';
import 'dart:async';

void main() {
  print("ストップウォッチを開始するならsを押してね");
  print('時間を知りたいときはtを押してね');
  String? oder;
  int n = 0;
  bool flag = true;
  // Timer timer;
  // timer = Timer.periodic(Duration(seconds: 1), (timer) {});//ここがないとなぜかtimer.cancel();でエラーが起きる
  while(oder != 'end'){
    oder = stdin.readLineSync();
    if(oder == 's'){
      if(flag == true){
        Timer.periodic(Duration(seconds: 1), (timer) {
        n = n+1;
        });
      flag = false;
      }
      // else{
      //   timer.cancel();
      //   flag = true;
      //   print(n);
      // }
    }else if(oder == 't'){
      print(n);
    }else{
      print('もう一度入力しなおしてください');
    }
  }
  print('終了');
  exit(0); 
}