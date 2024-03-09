//非同期処理で作ろうとしたタイマー
//後で完成させる

import 'dart:io';
import 'dart:async';

String? order;
int n = 0;
bool flag = true;

Future<String?> userwait() async {
  stdin.listen((data) {order = String.fromCharCodes(data).trim();});
  return order; 
}

void main() async{
  print("ストップウォッチを開始するならsを押してね");
  print('時間を知りたいときはtを押してね');
  //stdin.listen((data) {order = String.fromCharCodes(data).trim();});
  while(order != 'end'){
    order = stdin.readLineSync();
    if(order == 's'){
      while(flag == true){
        n = n+1;
        print(n);
        order = await userwait()
            .timeout(Duration(seconds: 1),onTimeout: () {
              return Future.value(null);
            });
        if(order == 'null'){
          continue;
        }else if(order == 's'){
          flag = false;
          print('タイマーストップ');
          break;
        };
      }
      if(flag = false){
        flag = true;
        print('再スタート');
      }
    }
    if(order == 't'){
      print(n);
    }else if(order =='r'){
      n = 0;
      print('リセットしました');
    }else{
      print('もう一度入力しなおしてください');
    }
  }
  print('終了');
  exit(0); 
}