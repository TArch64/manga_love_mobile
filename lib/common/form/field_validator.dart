import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

abstract class FieldValidator {
  static FormFieldValidator get email => (value) {
    return EmailValidator.validate(value ?? '') ? null : 'Please enter a valid email';
  };
}
