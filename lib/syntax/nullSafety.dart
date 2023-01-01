void main () {
  // null을 넣으려면 ? 필요.
  // int age = null; 이렇게 null 선언 불가능.

  int? age = null;
  String? test = null;

  // null check
  if (age != null) {}

  // String test2 = test;  둘은 타입이 맞지 않기 때문에 불가능.
  String test2 = test!;  // 강제로 null unwrapped
}