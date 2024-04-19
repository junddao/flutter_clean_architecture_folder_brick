import 'package:json_annotation/json_annotation.dart';

enum AuthenticateState {
  unauthenticated,
  authenticated,
  initial,
}

@JsonEnum(valueField: 'serverName')
enum TodoPriorityType {
  low('LOW', '낮음'),
  medium('MEDIUM', '중간'),
  high('HIGH', '높음');

  final String serverName;
  final String displayName;
  const TodoPriorityType(this.serverName, this.displayName);
}
