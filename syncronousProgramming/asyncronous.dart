void main() async {
  // Future : javascript에서 promise에 대응되는 키워드
  await addNumbers(5, 2);
  await addNumbers(1, 1);
}

// 동기적으로 코드가 실행되면 delayed를 기다리느라 다른 코드가 실행되지 못해 함수 완료는 계산 완료 후에 나올 텐데
// 비동기적으로 코드가 실행되기 때문에 시간이 많이 걸리는 코드는 나중에 실행함으로써 코드에 중단이 없다.
Future<void> addNumbers(int a, int b) async {
  print('delay 시작 $a, $b');
  await Future.delayed(Duration(seconds: 3), () {
    print('계산 완료${a + b}');
  });
  print('함수 완료. $a + $b');
}
