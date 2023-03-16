import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Brief {
  int id;
  String title;
  String content;
  String image;
  DateTime launchDate;
  DateTime deadline;
  Brief({
    required this.id,
    required this.title,
    required this.content,
    required this.image,
    required this.launchDate,
    required this.deadline,
  });

  factory Brief.fromJson(Map<String, dynamic> json) {
    return Brief(
        id: json['id'],
        title: json['title'],
        content: json['content'],
        image: json['image'],
        launchDate: DateTime.parse(json['launch_date']),
        deadline: DateTime.parse(json['deadline']));
  }

  static Future<List<Brief>> briefs = (() async {
    final response = await http.get(Uri.http('192.168.8.88:8084', '/briefs'));
    if (response.statusCode == 200) {
      List<dynamic> brs = convert.jsonDecode(response.body);
      var tmp = brs.map<Brief>((json) => Brief.fromJson(json)).toList();
      for (var e in tmp) {
        print("id: ${e.id}");
      }
      return tmp;
    } else {
      throw Exception('Failed to load briefs');
    }
  })();
}
