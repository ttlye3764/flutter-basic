void main() {
  var sum1 = sum(10,20);

  print(sum2(a:10, b:20)); // 30
  print(sum2()); // 0
  print(sum2(a: 5)); // 5
  print(sum2(b: 5)); // 5

  print(calc( () => 10));
  print(calc2(10,20, callback: (a,b) => a * b));
}

int sum(int a, int b) {
  return a + b;
}

// named parameter
// 파라미터가 option이 됨.
int sum2({int a = 0 , int b = 0}) {
  return a + b;
}

// lambda
int sum3(int a, int b) => a + b;

// dart에서는 함수가 1급 클래스기 때문에, 다른 메소드의 매개변수로 줄 수 있음.
int calc(Function callback) {
  return callback();
}

int calc2(int a, int b, {required Function(int, int) callback}) {
  return callback(a, b);
}