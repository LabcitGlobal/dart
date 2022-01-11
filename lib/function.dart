void main() {
  List<int> a = serie(increment: 5, limit: 10);
  print(a);

  print(hello('Jhon'));
}

List<int> serie({int limit, int increment}) {
  List<int> result = [];
  for (var i = 1; i <= limit; i++) {
    result.add(i * increment);
  }
  return result;
}

String hello(String name) => 'Hello, ${name}';
