class CleanTimeBrain {
  CleanTimeBrain({this.dateInput});

  final DateTime dateInput;

  String getYearsSober() {
    final now = DateTime.now();
    var years = now.difference(dateInput).inDays / 365;

    if (years < 0) years = 0;

    return years.floor().toString();
  }

  String getMonthsSober() {
    final now = DateTime.now();
    var months = now.difference(dateInput).inHours / 730;

    if (months < 0) months = 0;

    return months.floor().toString();
  }

  String getWeeksSober() {
    final now = DateTime.now();
    var weeks = now.difference(dateInput).inDays / 7;

    if (weeks < 0) weeks = 0;

    return weeks.floor().toString();
  }

  String getDaysSober() {
    final now = DateTime.now();
    var days = now.difference(dateInput).inDays;

    if (days < 0) days = 0;

    return days.toString();
  }

  String getHoursSober() {
    final now = DateTime.now();
    var hours = now.difference(dateInput).inHours;

    if (hours < 0) hours = 0;

    return hours.toString();
  }

  String getMinutesSober() {
    final now = DateTime.now();
    var minutes = now.difference(dateInput).inHours * 60;

    if (minutes < 0) minutes = 0;

    return minutes.toString();
  }

  String getSecondsSober() {
    final now = DateTime.now();
    var seconds = now.difference(dateInput).inSeconds;

    if (seconds < 0) seconds = 0;

    return seconds.toString();
  }
}
