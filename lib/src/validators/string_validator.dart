import 'package:flunt_dart/src/validations/contracts/validatable.dart';

class SpaceValidator implements IValidate<String> {
  SpaceValidator();

  @override
  bool validate(String value) {
    return _hasOnySpaces(value);
  }

  bool _hasOnySpaces(String value) {
    var result = true;

    value.codeUnits.forEach((value) {
      if (value != " ".codeUnitAt(0)) {
        result = false;
      }
    });

    return result;
  }
}

class EmptyValidator implements IValidate<String> {
  EmptyValidator();

  @override
  bool validate(String value) {
    return (value.isEmpty);
  }
}

class NotEmptyValidator implements IValidate<String> {
  NotEmptyValidator();

  @override
  bool validate(String value) {
    return (value.isNotEmpty);
  }
}

class HasMinLenValidator implements IValidate<String> {
  final int min;
  HasMinLenValidator(this.min);

  @override
  bool validate(String value) {
    return (value.length >= min);
  }
}

class HasMaxLenValidator implements IValidate<String> {
  final int max;
  HasMaxLenValidator(this.max);

  @override
  bool validate(String value) {
    return !(value.length > max);
  }
}

class HasExactLengthValidator implements IValidate<String> {
  final int length;
  HasExactLengthValidator(this.length);

  @override
  bool validate(String value) {
    return (value.length == length);
  }
}

class ContainsValidator implements IValidate<String> {
  final String other;
  ContainsValidator(this.other);

  @override
  bool validate(String value) {
    return (value.contains(other));
  }
}
