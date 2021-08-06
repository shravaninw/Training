import 'package:flutterapp/models/todo.dart';
import 'package:flutterapp/runner.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  Coderunner c = new Coderunner();
  c.run();
}

class Apicalls {
  Future<Todo?> getUrl() async {
    final http.Response response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos/1'),
    );
    if (response.statusCode == 200) {
      Todo obj = Todo.fromJson(jsonDecode(response.body))!;
      obj = obj.rebuild((b) => b..completion = false);
      return obj;
    } else {
      return null;
    }
  }

  Future posttodo(int id, int userid,
      String title, bool completed) async {
    final http.Response response = await http.post(
      Uri.parse("https://jsonplaceholder.typicode.com/todos/"),
      body: jsonEncode({
        'id': id,
        'userId': userid,
        'title': title,
        'completed': completed,
      }),
    );

    if (response.statusCode == 201) {
      print("Success");
    } else {
      print("Failure");
    }
  }

  Future<Todo?> update(String title) async {
    final http.Response response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos/1'),
    );
    if (response.statusCode == 200) {
      Todo obj = Todo.fromJson(jsonDecode(response.body))!;
      obj = obj.rebuild((b) => b..title = title);
      obj = obj.rebuild((b) => b..completion = false);
      final http.Response response1 = await http.put(
        Uri.parse("https://jsonplaceholder.typicode.com/todos/1"),
        body: jsonEncode({
          'id':obj.id,
          'userId':obj.userId,
          'title': obj.title,
          'completion':obj.completion,
        }),
      );
      if (response1.statusCode == 200) {
        print(response1.body);

        return Todo.fromJson(obj.toJson());
      } else {
        print ("Failure");
      }
    }
    else
      print("Failure");
  }
}
