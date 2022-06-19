import 'package:formz/formz.dart';

enum UsernameError { empty, invalid }

class Username extends FormzInput<String, UsernameError> {
  const Username.pure([String value = '']) : super.pure(value);
  const Username.dirty([String value = '']) : super.dirty(value);

  static final RegExp _usernameRegExp = RegExp(
    r'^(?=.*[a-z])[A-Za-z ]{2,}$',
  );

  @override
  UsernameError? validator(String value) {
    if (value.isEmpty == true || value == "") {
      return UsernameError.empty;
    }
    return _usernameRegExp.hasMatch(value) && value.length < 15
        ? null
        : value.isEmpty
            ? null
            : UsernameError.invalid;
  }
}

extension Explanation on UsernameError {
  String? get name {
    switch (this) {
      case UsernameError.invalid:
        return "Please enter a valid Username!";
      default:
        return null;
    }
  }
}
