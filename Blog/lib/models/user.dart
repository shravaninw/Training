import 'package:blog/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  User._();
  factory User([void Function(UserBuilder) updates]) = _$User;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(User.serializer, this)
        as Map<String, dynamic>;
  }

  static User? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(User.serializer, json);
  }

  String? get email;
  String? get password;
  String? get username;

  static Serializer<User> get serializer => _$userSerializer;
}
