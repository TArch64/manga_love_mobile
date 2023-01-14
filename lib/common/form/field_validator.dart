import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

abstract class FieldValidator {
  static FormFieldValidator<T> compose<T>(List<FormFieldValidator<T>> validators) => (value) {
    for (final validate in validators) {
      var result = validate(value);
      if (result != null) return result;
    }
    return null;
  };

  static FormFieldValidator<String> email() => (value) {
    return EmailValidator.validate(value ?? '') ? null : 'Please enter a valid email';
  };

  static FormFieldValidator<String> required() => (value) {
    return (value ?? '').isNotEmpty ? null : 'Please fill out this field';
  };

  static FormFieldValidator<String> minLength(int length) => (value) {
    return (value ?? '').length >= length ? null : 'Please enter more then $length symbols';
  };

  static FormFieldValidator<String> maxLength(int length) => (value) {
    return (value ?? '').length <= length ? null : 'Please enter less then $length symbols';
  };
}
