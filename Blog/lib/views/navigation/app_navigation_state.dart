import 'package:blog/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'app_navigation controller.dart';

part 'app_navigation_state.g.dart';

abstract class AppNavigationState
    implements Built<AppNavigationState, AppNavigationStateBuilder> {
  factory AppNavigationState(
          [void Function(AppNavigationStateBuilder)? updates]) =
      _$AppNavigationState;

  AppNavigationState._();

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(AppNavigationState.serializer, this)
        as Map<String, dynamic>?;
  }

  static AppNavigationState? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(AppNavigationState.serializer, json);
  }

  static Serializer<AppNavigationState> get serializer =>
      _$appNavigationStateSerializer;

  Authentication? get authentication;
  BlogRoute? get blogRoute;
}
