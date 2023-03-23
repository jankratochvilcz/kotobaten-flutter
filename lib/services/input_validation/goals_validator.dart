String? validateGoal(String? value) {
  if (value == null || value.isEmpty || int.tryParse(value) == null) {
    return 'Enter a valid goal.';
  }

  return null;
}
