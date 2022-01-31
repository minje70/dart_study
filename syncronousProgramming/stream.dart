import 'dart:async';

// Stream을 많이 사용한다.
// 값은 한번만 받는 Future과는 달리 지속적으로 값을 받을 수 있다.
// 우리가 직접 Stream을 닫아줘야하고 Future에 비하여 조금 복잡할 수 있다.
void main() {
  // final controller = StreamController();
  // // stream은 하나의 listem만 받을 수 있는데 asBroadcastStream()을 붙이면 여러개의 listening이 가능해진다.
  // final stream = controller.stream.asBroadcastStream();

  // final streamListener1 = stream.where((event) => event % 2 == 0).listen((val) {
  //   print('Listener 1 : $val');
  // });
  // final streamListener2 = stream.where((event) => event % 2 == 1).listen((val) {
  //   print('Listener 2 : $val');
  // });

  // controller.sink.add(1);
  // controller.sink.add(2);
  // controller.sink.add(3);
  // controller.sink.add(4);
  // controller.sink.add(5);

  // ***************************************************************************

  // calculate(2).listen((val) {
  //   print('calculate(2) : $val');
  // });
  // calculate(4).listen((event) {
  //   print('calculate(4) : $event');
  // });
  playAllStream().listen((event) {
    print(event);
  });
}

Stream<int> playAllStream() async* {
  // yield*은 모든 값을 다 가져올때 까지 기다린다.
  yield* calculate(1);
  yield* calculate(1000);
}

// Stream을 반환하는 함수
// Future대신 Stream async 대신 async*을 넣어준다.
Stream<int> calculate(int number) async* {
  for (int i = 0; i < 5; ++i) {
    yield i * number;

    await Future.delayed(Duration(seconds: 1));
  }
}
