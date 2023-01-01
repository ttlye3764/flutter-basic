void main () {
  int i = 10;

  if (i > 5) {
    print('5보다 큼');
  }else if (i > 3) {
    print('3보다 큼');
  } else {
    //
  }

  if (1==0) print('aa');

  // 반복
  for (var i = 0; i < 5 ; i ++) {
    print(i);
    // break;
    // continue;
  }
  List<String> list = ['1','2'];
  for (String a in list) {
    print(a);
  }

  while(i < 3) {
    i++;
  }

  do {
    //
  } while (i < 3);
}