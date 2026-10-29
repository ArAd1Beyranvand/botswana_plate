import 'package:plate_core/plate_core.dart';

// TODO(py): [H9] Python re: \d/\w match Unicode; keep explicit [0-9]/[A-Z] classes (or re.ASCII).
// TODO(ts): [H9] same flavour as Dart; port as is, cover accept/reject in the vectors (D9).
// TODO(kt): [H9] Regex engine differs per target (JVM/JS/Native): keep to portable syntax.
final RegExp _register = RegExp(r'^[A-PR-Z]{3}$');

// TODO(py): [D4-code] hand-port; reason strings are the contract, keep them byte-identical.
// TODO(ts): [D4-code] hand-port; reason strings are the contract, keep them byte-identical.
// TODO(kt): [D4-code] hand-port; reason strings are the contract, keep them byte-identical.
/// Judges a private or public plate (`B 123 ABC`): the letter B, three digits
/// and three letters, none of them Q. Reports, never bars a keystroke.
class BotswanaValidator extends GatedPlateValidator {
  const BotswanaValidator();

  @override
  String get gateGroup => 'serial';

  static const String reasonPrefix = 'The prefix is B.';
  static const String reasonSerial = 'The number is three digits.';
  static const String reasonSuffix = 'The register is three letters, never Q.';

  @override
  PlateValidation judge(PlateEntry entry) {
    if (entry.group('prefix') != 'B') {
      return const PlateValidation.invalid(reasonPrefix);
    }
    if (!isDigitsOfLength(entry.group('serial'), 3)) {
      return const PlateValidation.invalid(reasonSerial);
    }
    if (!_register.hasMatch(entry.group('suffix'))) {
      return const PlateValidation.invalid(reasonSuffix);
    }
    return const PlateValidation.valid();
  }
}

/// Judges a government plate (`BX 123456`): the prefix BX and six digits.
class BotswanaGovernmentValidator extends GatedPlateValidator {
  const BotswanaGovernmentValidator();

  @override
  String get gateGroup => 'serial';

  static const String reasonPrefix = 'The prefix is BX.';
  static const String reasonSerial = 'The number is six digits.';

  @override
  PlateValidation judge(PlateEntry entry) {
    if (entry.group('prefix') != 'BX') {
      return const PlateValidation.invalid(reasonPrefix);
    }
    if (!isDigitsOfLength(entry.group('serial'), 6)) {
      return const PlateValidation.invalid(reasonSerial);
    }
    return const PlateValidation.valid();
  }
}
