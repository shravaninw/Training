import 'package:flutterapp/main.dart';
import 'package:flutterapp/models/todo.dart';

class Coderunner {
  void run() async {
    Apicalls c = Apicalls();
    Todo? todoget = await c.getUrl();
    if (todoget == null)
      print("Error");
    else
      print(
          '${todoget.id},${todoget.userId},${todoget.title},${todoget.completion}');
    Todo? todopost=await c.posttodo(1, 1, "post", true);
    Todo? toupdate=await c.update("update");
    if(toupdate==null)
      print("Error");
    else
      print('${toupdate.id},${toupdate.userId},${toupdate.title},${toupdate.completion}');
    }
}
