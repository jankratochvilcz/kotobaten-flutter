extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String ellipsis(int maxLength) {
    return length > maxLength ? substring(0, maxLength) + '...' : this;
  }
}

extension StringNullableExtension on String? {
  String? ellipsis(int maxLength) {
    if (this == null) {
      return null;
    }

    return this!.ellipsis(maxLength);
  }
}
