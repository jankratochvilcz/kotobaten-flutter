extension DateTimeExtensions on DateTime {
  String getRelativeToNowString(DateTime currentDateTime) {
    final diff = currentDateTime.difference(this);

    if (diff.inDays > 14) {
      return '${diff.inDays ~/ 7} weeks ago';
    }

    if (diff.inDays > 1) {
      return '${diff.inDays} days ago';
    }

    return 'today';
  }
}
