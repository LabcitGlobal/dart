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
