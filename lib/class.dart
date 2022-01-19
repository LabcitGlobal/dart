import 'dart:convert';

void main() {
  MovieTv movieTv = new MovieTv();
  print(movieTv);
  print(movieTv.name);

  movieTv.name = "Batman";
  movieTv.director = "Max";

  print(movieTv.name);
  print(movieTv.getData());

  final dataJson = '{"name": "Mad Max", "duration": 35.5}';
  Map<String, dynamic> parsedJson = json.decode(dataJson);

  final serie1 = new SerieTv.fromJson(parsedJson);
  print('Name: ${serie1.name}');
  print('Duration: ${serie1.duration}');

  Triangle triangle = new Triangle();
  triangle.base = 50.0;
  triangle.height = 80.0;
  print(triangle.area);
}

class MovieTv {
  String name;
  String director;
  MovieTv({this.name, this.director});

  String getData() => 'Name: ${this.name}, Director: ${this.director}';
}

class SerieTv {
  String name;
  double duration;

  SerieTv.fromJson(Map<String, dynamic> parsedJson) {
    name = parsedJson["name"];
    duration = parsedJson["duration"];
  }
}

class Triangle {
  double _base;
  double _height;

  set base(double value) {
    if (value <= 0) {
      throw ('Invalid Data');
    }
    _base = value;
  }

  set height(double value) {
    if (value <= 0) {
      throw ('Invalid Data');
    }
    _height = value;
  }

  double get area => (_base * _height) / 2;

  toString() => '$_base';
}
