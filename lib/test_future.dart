void main() async {
  print('Begin');
  String resp = await httpGet('url');
  print(resp);
  print('End');
}

Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 5), () => 'Hello World');
}
