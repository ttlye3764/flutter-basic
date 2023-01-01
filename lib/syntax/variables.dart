void main() {
  int num1 = 10;
  double num2 = 3.0;
  String str= 'hello';
  bool isTrue = true;
  num num3 = 10;
  num num4 = 10.0;

  print(num1 is int); // true
  print(num2 is int); // false

  print(num1.runtimeType); // int

}