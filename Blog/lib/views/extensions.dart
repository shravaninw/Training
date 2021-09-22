import 'package:timeago/timeago.dart' as timeago;

extension DateTimeUtils on DateTime? {
  String toMoment() {
    if (this == null) {
      return '';
    }
    return timeago.format(this!);
  }
}
