void main() {
  Duck duck = new Duck();
  duck.walk();
  duck.swim();
  duck.fly();
}

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

abstract class Walk {
  void walk() => print('I can Walk');
}

abstract class Swim {
  void swim() => print('I can Swim');
}

abstract class Fly {
  void fly() => print('I can Fly');
}

class Dolphin extends Fish with Swim {}

class Cat extends Mammal with Walk {}

class Duck extends Bird with Walk, Swim, Fly {}
