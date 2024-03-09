import 'dart:io';

late DateTime startTime;
late DateTime stopTime;
bool timeState = false;

void start(){
  startTime = DateTime.now();
  timeState = true;
  print('カウント開始');
}

void stop(){
  stopTime = DateTime.now();
  timeState = false;
  print('カウント停止');
}

void passtime(){
  if(timeState){
    final nowtime = DateTime.now();
    final passtime = nowtime.difference(startTime);
    print('経過時間: ${passtime.inSeconds} 秒');
  }else if(!timeState){
    var passtime = stopTime.difference(startTime);
    print('経過時間: ${passtime.inSeconds} 秒');
  }
}

void reset(){
  startTime = DateTime.now();
  stopTime = DateTime.now();
  print('タイマーをリセットしました');
}

void main(){
  print("ストップウォッチはstartとstopで制御できるよ");
  print('経過時間を知りたいときはtを押してね');
  print('resetを押すとタイマーがリセットされるよ');
  print('終了するときはendを押してね');
  while(true){
    final order = stdin.readLineSync();
    if(order == 'start'){
      start();
    }else if(order == 'stop'){
      stop();
    }else if(order == 't'){
      passtime();
    }else if(order == 'reset'){
      reset();
    }else if(order == 'end'){
      print('終了');
      exit(0); 
    }else{
      print('もう一度入力しなおしてください');
    }
  }
}