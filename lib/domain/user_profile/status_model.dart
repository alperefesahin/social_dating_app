import 'package:formz/formz.dart';

enum StatusError { empty, invalid }

class Status extends FormzInput<String, StatusError> {
  const Status.pure([String value = '']) : super.pure(value);
  const Status.dirty([String value = '']) : super.dirty(value);

  static final RegExp _statusRegExp = RegExp(
    r'^(?=.*[a-z])[A-Za-z ]{2,}$',
  );

  @override
  StatusError? validator(String value) {
    if (value.isEmpty == true || value == "") {
      return StatusError.empty;
    }
    return _statusRegExp.hasMatch(value) && value.length < 15
        ? null
        : value.isEmpty
            ? null
            : StatusError.invalid;
  }
}

extension Explanation on StatusError {
  String? get name {
    switch (this) {
      case StatusError.invalid:
        return "Please enter a valid status!";
      default:
        return null;
    }
  }
}
