import 'dart:io';

String? order;
late DateTime starttime;

void start(){
  print('カウント開始');
  starttime = DateTime.now();
}

void stop(){
      var stoptime = DateTime.now();
      var passtime = stoptime.difference(starttime);
      print('経過時間: ${passtime.inSeconds} 秒');
}

void main(){
  print("ストップウォッチを開始するならsを押してね");
  print('経過時間を知りたいときはtを押してね');
  print('終了するときはendを押してね');
  while(true){
    String? order = stdin.readLineSync();
    if(order == 's'){
      start();
    }else if(order == 't'){
      stop();
    }else if(order == 'end'){
      print('終了');
      exit(0); 
    }else{
      print('もう一度入力しなおしてください');
    }
  }
}