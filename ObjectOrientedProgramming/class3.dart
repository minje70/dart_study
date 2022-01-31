void main() {
  // override 예시
  // TimesTwo tt = TimesTwo(2);
  // print(tt.calculate());
  // TimesFour tf = TimesFour(2);
  // print(tf.calculate());

  // // static 예시
  // Employee mijeong = Employee('mijeong');
  // Employee hyeonkim = Employee('hyeonkim');
  // Employee kilee = Employee('kilee');
  // // 스테틱 변수를 건드려면 class에서 건드려야 한다.
  // Employee.building = '클러스터';
  // mijeong.printNameAndBuilding();
  // hyeonkim.printNameAndBuilding();
  // kilee.printNameAndBuilding();
  // // 스테틱 함수를 실행 시키려면 class에서 실행시켜야한다.
  // Employee.printBuilding();

  // // interface 예시
  // Idol bts = Idol('방탄소년단', 20);
  // bts.sayNameAndAge();
  // print(bts is IdolInterface);
  // print(bts is Idol);

  // generic
  Lecture lecture1 = Lecture<String>('i123141', '렉쳐1');
  Lecture lecture2 = Lecture<int>(1234, '렉쳐2');
  lecture1.printIdType();
  lecture2.printIdType();
}

class TimesTwo {
  final int num;

  TimesTwo(this.num);

  int calculate() {
    return this.num * 2;
  }
}

// override
// 부모 클래스의 함수를 재 정의 한다.
class TimesFour extends TimesTwo {
  TimesFour(int num) : super(num);
  // @override를 써야 오버라이드가 된다.
  @override
  int calculate() {
    return super.calculate() * 2;
  }
}

// Static
class Employee {
  // static은 인스턴스에 귀속되지 않고 클래스에 귀속된다.
  static String? building;
  final String name;
  Employee(this.name);

  void printNameAndBuilding() {
    print('제 이름은 $name입니다. 저는 $building에서 일합니다.');
  }

  static void printBuilding() {
    print('저희가 일하는 건물은 $building입니다.');
  }
}

// interface는 따로 키워드가 없다.
// class로 구현한다.
// abstract 키워드를 앞에 붙여서 인스턴스로 못 만들게 할 수는 있다.
// abstract 키워드를 앞에 붙이면 함수 바디부분을 없앨 수 있다.
abstract class IdolInterface {
  final String name;
  final int age;
  IdolInterface(this.name, this.age);

  // 굳이 정의하지 않아도 된다. 인스턴스를 만들게 아니기 때문
  // abstract 키워드 때문에 함수의 body를 지웠다.
  void sayNameAndAge();
}

class Idol implements IdolInterface {
  final String name;
  final int age;
  Idol(this.name, this.age);
  @override
  sayNameAndAge() {
    print('새로 만든 함수입니다. 저는 $name이고 나이는 $age입니다.');
  }
}

// generic 타입을 외부에서 받을때 사용
class Lecture<T> {
  final T id;
  String name;
  Lecture(this.id, this.name);
  void printIdType() {
    print('Id는 $id입니다. 이름은 $name입니다.');
  }
}