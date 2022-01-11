import 'dart:convert';
import 'dart:io';

class Journal {
  String author;
  String title;
  DateTime published;

  Journal.fromJson(Map<String, dynamic> json) {
    this.author = json["author"];
    this.title = json["title"];
    this.published = DateTime.parse(json["publishedAt"]);
  }
}

class Author {
  String name;
  Author(this.name);
}

void main() {
  final file = File('../assets/json/journal.json');
  final text = file.readAsStringSync();
  final json = jsonDecode(text);
  List<Journal> journal = [];
  for (var journalJson in json['articles']) {
    journal.add(Journal.fromJson(journalJson));
  }
  print('Result:');
  journal.forEach((element) {
    print('Author: ${element.author}');
    print('Title: ${element.title}');
    print('Published: ${element.published}');
  });

  Author author = Author('Test');
  if (author.name is String) {
    print('Is Text');
  } else {
    print('Is Number');
  }
}
