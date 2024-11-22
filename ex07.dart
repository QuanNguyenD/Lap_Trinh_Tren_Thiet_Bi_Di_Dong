// Tong cac uoc cua mot so nguyen
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

  int sum = 0;

  for(int i =1;i<=x;i++){
    if(x%i ==0){
      sum +=i;
    }

  }
  print(sum);

}