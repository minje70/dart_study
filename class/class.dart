void main() {
  Idol blackpink = Idol('블랙핑크', ['제니', '로제']);
  blackpink.sayHello();
  blackpink.introduce();

  Idol mijeongs = Idol.fromList([
    '미정이네',
    ['민재', '민수', '미정']
  ]);
  mijeongs.sayHello();
  mijeongs.introduce();
  print('getter test: ${mijeongs.firstMember}');
}

// class Idol
// 변수 name
// 변수 members
// sayHello() 인사
// introduce() 소개
class Idol {
  final String name;
  final List<String> members;
  // 값 초기화를 엄청 간결하게 할 수 있다.
  // 기본 constructor

  // const constructor
  // 기본 constructor 앞에 const 키워드를 넣으면 const constructor가 된다.
  // 멤버들은 final이어야 한다.
  // const로 작성하면 모든 멤버변수가 같을 경우 완전히 같은 인스턴스로 본다.
  const Idol(this.name, this.members);
  // named constructor
  // 새로운 생성자를 정의할 수 있다.
  Idol.fromList(List values)
      : this.name = values[0],
        this.members = values[1];
  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    members.forEach((element) {
      print('안녕하세요 저는 $element입니다');
    });
  }

  // getter
  // 사용할 때는 변수처럼 사용한다.
  String get firstMember {
    return this.members[0];
  }

  // setter
  // 사용할 때에 변수처럼 사용한다.
  set firstMember(String firstMember) {
    this.members[0] = firstMember;
  }
}
