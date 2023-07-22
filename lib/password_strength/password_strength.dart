/*
 * Author : Julien Scholz
 * https://github.com/Pikaju/PasswordStrength
 */

part of '../password_strength_indicator.dart';

/// Estimates the strength of a password.
/// Returns a [double] between `0.0` and `1.0`, inclusive.
/// A value of `0.0` means the given [password] is extremely weak,
/// while a value of `1.0` means it is especially strong.
double estimatePasswordStrength(String password) {
  return estimateBruteforceStrength(password) *
      estimateCommonDictionaryStrength(password);
}
