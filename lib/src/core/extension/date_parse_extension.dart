part of 'extension.dart';

extension ParseString on DateTime {
  String get formatDate => DateFormat('dd.MM.yy').format(this);

  String timeZone() {
    var date = toIso8601String().split('.')[0];
    if (timeZoneOffset.isNegative) {
      date += '-';
    } else {
      date += '+';
    }
    final timeZoneSplit = timeZoneOffset.toString().split(':');

    final hour = int.parse(timeZoneSplit[0]);
    if (hour < 10) {
      date += '0${timeZoneSplit[0]}';
    }
    date += ':${timeZoneSplit[1]}';
    return date;
  }
}
