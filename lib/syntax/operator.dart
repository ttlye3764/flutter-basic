import 'dart:ui';

void main () {
  String? str;

  str = 'Hello';
  // str이 null이면 Hello를 대입.
  str =  str ?? 'Hello';
  // 위의 코드를 간략화
  str ??= 'Hello';

  // cascade 연산 전
  var paint = Paint();
  // paint.color = Color(1);
  // paint.blendMode = ..

  // cascade 연산 후
  // var paint = Paint()
  // ..color(Color(1))
  // ..blendMode
  // ..colorFilter

  // type casting
  num i = 10;
  int ii= i as int;

  num d = 10.5;
  double dd = d as double;

  
}