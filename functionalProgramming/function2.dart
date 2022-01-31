void main() {
  // // where에 들어가는 함수에 리턴값이 true면 남기고 false면 제거한다.
  // List<Map<String, String>> student = [
  //   {
  //     'name': 'mijeong',
  //     'age': '29',
  //   },
  //   {
  //     'name': 'hyeonkim',
  //     'age': '31',
  //   },
  //   {
  //     'name': 'kilee',
  //     'age': '32',
  //   },
  //   {
  //     'name': 'napark',
  //     'age': '29',
  //   }
  // ];
  // final twoNine = student.where((element) => element['age'] == '29').toList();
  // print(twoNine);

  // // reduce는 prev와 next를 받고 하나의 값으로 만들 때 쓴다. 예시를 보자
  // // reduce는 List의 멤버의 type과 같은 type을 리턴해야한다.
  // List<int> list = [1, 3, 5, 7, 9];
  // final reducedList = list.reduce((prev, next) => prev + next);
  // print(reducedList);

  // // fold는 reduce와 비슷하지만 초기값을 설정해줘야하고 리턴타입이 꼭 element의 타입과 같을 필요 없다.
  // final foldedList = list.fold<int>(0, (prev, next) => prev + next);
  // print(foldedList);

  // // Cascading Operator
  // // ...
  // List odd = [1, 3, 5, 7, 9];
  // List even = [2, 4, 6, 8, 10];

  // final result = [...odd, ...even];
  // result.sort((a, b) => a < b ? -1 : (a == b ? 0 : 1));
  // print(result);

  // List<Map>을 class화 시키기.
  List<Map<String, String>> data = [
    {
      'group': 'bts',
      'name': '뷔',
    },
    {
      'group': 'bts',
      'name': '위',
    },
    {
      'group': 'blackPink',
      'name': '제니',
    },
    {
      'group': 'blackPink',
      'name': '로제',
    },
    {
      'group': 'blackPink',
      'name': '리사',
    },
  ];
  List<Idol> parsedData =
      data.map((e) => Idol(e['name']!, e['group']!)).toList();
  print(parsedData.where((element) => element.group == 'bts').toList());
}

class Idol {
  String name;
  String group;

  Idol(this.name, this.group);

  // 출력할 때에 overriding을 해야 보기 좋게 나온다. javascript처럼 보기 좋게 나올거라는 기대는 버리자.
  // toString을 override해줘서 예쁘게 만들어 줘야 한다.
  @override
  String toString() {
    return 'Idol(name: $name, group: $group)';
  }
}
