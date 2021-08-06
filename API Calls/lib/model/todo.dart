import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutterapp/models/serializers.dart';

part 'todo.g.dart';

abstract class Todo implements Built<Todo, TodoBuilder> {
  // Todo(this.id, this.userId, this.title, this.completion);
  //Todo({this.id,this.userId,this.title,this.completion});
  Todo._();

  factory Todo([void Function(TodoBuilder) updates]) = _$Todo;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Todo.serializer, this)as Map<String,dynamic>;
  }

  static Todo? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Todo.serializer, json);
  }

  static Serializer<Todo> get serializer => _$todoSerializer;

  int? get id;

  int? get userId;

  String? get title;

  bool? get completion;

}
