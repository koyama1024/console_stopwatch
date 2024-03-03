import 'dart:io';
import 'dart:async';

void main() {
  String? oder = stdin.readLineSync();
  int n = 0;
  bool flag = true;
  Timer timer;
  timer = Timer.periodic(Duration(seconds: 1), (timer) {
      n = n+1;
      });//ここがないとなぜかtimer.cancel();でエラーが起きる

  print("ストップウォッチを開始するならsを押してね");
  print('時間を知りたいときはtを押してね');

  if(oder == 's'){
    if(flag == true){
      timer = Timer.periodic(Duration(seconds: 1), (timer) {
      n = n+1;
      });
    flag = false;
    }
    else{
      timer.cancel();
      flag = true;
    }
  }else if(oder == 't'){
    print(n);
  }else if(oder == 'end'){
    print('end');
  }else{
    print('もう一度入力しなおしてください');
  }
  oder = stdin.readLineSync();
  // print('停止したいときはもう一度sを押してね');
  // print('リセットしたいときはrを押してね');
  // print("The entered name is ${inputstart}");
}