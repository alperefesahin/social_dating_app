import 'package:formz/formz.dart';

enum AboutError { empty, invalid }

class About extends FormzInput<String, AboutError> {
  const About.pure([String value = '']) : super.pure(value);
  const About.dirty([String value = '']) : super.dirty(value);

  static final RegExp aboutRegExp = RegExp(
    r'^(?=.*[a-z])[A-Za-z ]{2,}$',
  );

  @override
  AboutError? validator(String value) {
    if (value.isEmpty == true || value == "") {
      return AboutError.empty;
    }
    return aboutRegExp.hasMatch(value) && value.length < 100
        ? null
        : value.isEmpty
            ? null
            : AboutError.invalid;
  }
}

extension Explanation on AboutError {
  String? get name {
    switch (this) {
      case AboutError.invalid:
        return "Please enter a valid about text!";
      default:
        return null;
    }
  }
}
