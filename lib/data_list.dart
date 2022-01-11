void main() {
  // Data List
  List<int> data = [1, 2, 3, 4, 5, 6];

  print('Number items: ${data.length}');

  data.forEach((e) => print(e));

  data.add(8);

  print(data);

  data[6] = 119;

  print(data);

  List<String> dataText = ['One', 'Two', 'Tree'];

  print('Number Items: ${dataText.length}, items: ${dataText}');

  List<int> growableList = List<int>.filled(500, 1, growable: true);

  growableList.add(8);

  print(growableList);

  print('Items: ${growableList.length}');

  List<List<int>> x = [
    [1, 2],
    [1, 2, 3],
    [0, 2, 0, 3]
  ];

  x.add([100, 101, 102, 105]);

  print(x);

  // Data Maps
}
