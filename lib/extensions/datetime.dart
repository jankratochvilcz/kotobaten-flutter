extension DateTimeExtensions on DateTime {
  String getRelativeToNowString(DateTime currentDateTime) {
    final diff = DateTime(
            currentDateTime.year, currentDateTime.month, currentDateTime.day)
        .difference(DateTime(year, month, day));

    if (diff.inDays > 14) {
      return '${diff.inDays ~/ 7} weeks ago';
    }

    if (diff.inDays > 1) {
      return '${diff.inDays} days ago';
    }

    if (diff.inDays > 0) {
      return 'yesterday';
    }

    return 'today';
  }
}
