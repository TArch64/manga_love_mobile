import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

abstract class FieldValidator {
  static FormFieldValidator<String> email() => (value) {
    return EmailValidator.validate(value ?? '') ? null : 'Please enter a valid email';
  };

  static FormFieldValidator<String> required() => (value) {
    return (value ?? '').isNotEmpty ? null : 'Please fill out this field';
  };
}
