// Doi thap phan sang nhi phan
import 'dart:io';
void main(){
  int x = 0;
  do{
    stdout.write('Nhap he so x (x>=1) ');
    String? input = stdin.readLineSync();

    if (input != null) {
      x = int.tryParse(input) ?? 0;
    }
    if (x < 1) {
      print('Vui long nhap lai ');
    }


  }while(x < 1);

  String bin ='';
  int temp = x;
  while(temp >0){
    bin = (temp%2).toString() + bin;
    temp = temp ~/2;

  }
  print(bin);

}