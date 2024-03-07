import 'dart:io';

String? order;
late DateTime starttime;
late DateTime stoptime;
bool timesate = false;

void start(){
  starttime = DateTime.now();
  timesate = true;
  print('カウント開始');
}

void stop(){
  stoptime = DateTime.now();
  timesate = false;
  print('カウント停止');
}

void passtime(){
  if(timesate){
    var nowtime = DateTime.now();
    var passtime = nowtime.difference(starttime);
    print('経過時間: ${passtime.inSeconds} 秒');
  }else if(!timesate){
    var passtime = stoptime.difference(starttime);
    print('経過時間: ${passtime.inSeconds} 秒');
  }
}

void reset(){
  starttime = DateTime.now();
  stoptime = DateTime.now();
  print('タイマーをリセットしました');
}

void main(){
  print("ストップウォッチはstartとstopで制御できるよ");
  print('経過時間を知りたいときはtを押してね');
  print('resetを押すとタイマーがリセットされるよ');
  print('終了するときはendを押してね');
  while(true){
    String? order = stdin.readLineSync();
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