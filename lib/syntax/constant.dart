void main() {
  // final 런타임에 결정
  final String name = '재호';
  // name = '못바꿈'; 수정불가능

  // const : 컴파일 타임에 결정
  // final 보다 약간의 성능상 우위
  const String a = 'test';
  // a = '못바꿈';
}