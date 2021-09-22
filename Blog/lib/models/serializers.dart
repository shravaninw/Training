import 'package:blog/models/blog.dart';
import 'package:blog/models/blog_app.dart';
import 'package:blog/models/datetime.dart';
import 'package:blog/models/reply.dart';
import 'package:blog/models/user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'comment.dart';

part 'serializers.g.dart';

@SerializersFor([Blog, User, BlogState, Comment, Reply])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();
