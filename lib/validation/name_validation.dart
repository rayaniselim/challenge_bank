class NameValidation {
  static bool nameValidate(String? name) {
    if (name == null || name.trim().isEmpty) {
      return false;
    }
    if (!RegExp(r'^([a-zA-Z]{3,})(\ [a-zA-Z]{3,})+$').hasMatch(name)) {
      return false;
    } else {
      return true;
    }
  }
}

// TODO: VOLTAR O NULL PARA OS MÉTODOS