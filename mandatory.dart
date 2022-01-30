int main() {
  int number = 10;
  double number2 = 2.5;
  String str = 'hello World!!';
  bool isMale = true;
  // 중간에 변수의 변형이 필요할 경우 dynamic으로 선언한다.
  dynamic trans = 10;

  trans = 'hello';
  print('number : ${number}');

  // 변수 하나만 사용하는 경우 $number2 이런식으로 사용가능하다. 왠만하면 그냥 {} 넣어버리자.
  print('number2 : $number2');

  print(str);

  print(isMale);

  print(trans);

  // nullable
  // non_nullable
  // 변수 뒤에 ?를 붙이면 null일 수 있다.
  // nullable 값에 !를 붙이면 null이 아니다라는 뜻.
  String? name = 'mijeong';
  name = null;
  print(name);

  // const: build time에 값을 알고 있어야 한다. DateTime.now()같은 함수를 못쓴다.
  // now() 함수는 running time에 값을 알 수 있기 때문
  // final: running time에 값을 알고 있으면 된다.

  print('number : ${++number}');

  // ??= 은 왼쪽의 값이 null일 경우 =으로 동작한다.
  // name ??= 'this is null!!';
  // !는 not을 의미한다. 변수에서는 앞에 붙이지만 is에서는 뒤에 붙인다.
  print(name);

  // is로 타입확인 가능
  if (number is int) {
    print('number은 int type이다.');
  } else if (number is String) {
    print('number은 String type이다.');
  }
  // nullable이 null이면 is int, is String 뭐든 다 true가 된다.
  if (name is String) {
    print('name은 String type이다.');
  }
  if (name is int?) {
    print('name은 null이 가능한 int이다.');
  }
  if (name is String?) {
    print('name은 null이 가능한 String이다.');
  }
  bool isTrue = true;
  print(isTrue);
  // if (!isTrue) {
  //   print(isTrue);
  // }

  // 리스트 List
  List users = [1, 2, 3, 4, 5, 6];
  printNumber(10, 2);
  return 0;
}

int sumNumber(int x, int y) {
  return x + y;
}

// optional parameter : []를 넣어준다.
// 초기화를 해주거나 옵셔널을 넣어줘서 null일 수 있는 상태로 처리해준다.
void printNumber(int x, [int? y, int z = 10]) {
  if (y != null) {
    print('y가 들어왔구나!!! y : $y');
  }
  print('입력된 숫자는 $x입니다.');
}

// named parameter : 순서가 중요하지 않은 파라미터
// Javascript에서 사용하는 함수 느낌이 난다.
// required가 없으면 optional임
void printNamedParameter({
  required int x,
  required int y,
  int z = 10,
}) {
  print('x : $x, y : $y, z : $z');
}

// arrow function이 있네!!!
// 한 줄일 때만 쓸 수 있구나..
mijeong shootArrow() => 100;

// typedef는 c에서 사용하던거 그대로
// js에서 함수를 변수처럼 인자로 받거나 할 때 많이 사용하는 거 같다.
typedef mijeong = int;
