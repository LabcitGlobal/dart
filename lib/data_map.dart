void main() {
  Map<String, dynamic> user = {
    'name': 'Jhon',
    'age': 40,
    'state': true,
    'movil': ['02151125', '0554845'],
    'direction': {'city': 'La Paz', 'street': 'Av. Barrientos, #125'}
  };
  print('Number: ${user.length}');
  print('Name: ${user['name']}');
  print('Phone 1: ${user['movil'][0]}');
  print('Street: ${user['direction']['street']}');
  user.addAll({'mail': 'user@email.com'});
  user['age'] = 50;

  print(user);
}
