abstract class StringValidator {
  bool isValid(String value);
}

class NonEmptyStringValidator implements StringValidator {
  @override
  bool isValid(String value) {
    return value.isNotEmpty;
  }
}

class EmailAndPasswordValidators {
  final StringValidator emailValidator = NonEmptyStringValidator();
  final StringValidator passwordlValidator = NonEmptyStringValidator();
  final String invalidEmailErrorTest = 'Email can\'t be empty';
  final String invalidPasswordErrorTest = 'Password can\'t be empty';
}
