import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';

import 'botswana_colors.dart';

/// One ink on one field, the frame in the ink. Border (0.02) and corner (0.04)
/// ratios are estimates.
abstract final class BotswanaThemes {
  /// Private front plate: black on white.
  static final PlateTheme private = _ink(BotswanaColors.white, BotswanaColors.whiteInk);

  /// Private rear plate: black on yellow.
  static final PlateTheme privateRear = _ink(BotswanaColors.yellow, BotswanaColors.yellowInk);

  /// Public service, front and rear: white on blue.
  static final PlateTheme publicService = _ink(BotswanaColors.blue, BotswanaColors.blueInk);

  /// Government rear: white on red.
  static final PlateTheme government = _ink(BotswanaColors.red, BotswanaColors.redInk);
}

PlateTheme _ink(Color field, Color ink) => PlateTheme.monochrome(
  field: field,
  ink: ink,
  inactive: BotswanaColors.inactive,
  borderWidthRatio: 0.02,
  plateRadiusRatio: 0.04,
);
