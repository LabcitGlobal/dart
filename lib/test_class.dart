void main() {
  Partner partner =
      new Partner(name: 'Juan', lastName: 'Carvajal', numero: [1, 2, 3, 4]);
  partner.numero.add(99);
  partner.street['direction'] = 'Los Andes';
  partner.street['number'] = 37;
  print(partner.Hello());
  print(partner.SumTotal());
  print(partner.getStreet());

  User user = new User();
  user.name = 'Jhon';
  user.password = '123456';
  print(user.getData());
}

abstract class Person {
  String name;
  String lastName;

  String Hello();
}

class Partner implements Person {
  String name;
  String lastName;
  List<int> numero = [];

  Partner({this.name, this.lastName, this.numero});

  Map<String, dynamic> street = {'direction': '', 'number': 0, 'zip': 0};

  String Hello() => 'Hola ${name} ${lastName} => ${street}';

  int SumTotal() {
    int sum = 0;
    numero.forEach((element) {
      sum += element;
    });
    return sum;
  }

  String getStreet() =>
      '${street['direction']} ${street['number']} ${street['zip']}';
}

class User extends Partner {
  String password;

  String getData() => '${this.name} ${this.password}';
}
