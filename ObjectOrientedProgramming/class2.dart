void main() {
  BoyGroup bts = BoyGroup('BTS', 5);
  bts.sayName();
  bts.sayMemberCount();
  bts.sayMale();
}

class Idol {
  String name;
  int memberCount;
  Idol({required this.name, required this.memberCount});

  void sayName() {
    print('내 이름은 ${this.name}이다.');
  }

  void sayMemberCount() {
    print('${this.memberCount}명의 멤버가 있다.');
  }
}

// 상속
// type이 Idol, BoyGroup 둘 다 이다.
class BoyGroup extends Idol {
  BoyGroup(String name, int memberCount)
      : super(name: name, memberCount: memberCount);
  sayMale() {
    print('저는 남자 아이돌입니다.');
  }
}

class GirlGroup extends Idol {
  GirlGroup(String name, int memberCount)
      : super(name: name, memberCount: memberCount);
  sayFemale() {
    print('저는 여성 아이돌입니다.');
  }
}
