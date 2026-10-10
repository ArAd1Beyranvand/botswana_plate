import 'package:flutter/widgets.dart';

/// The colours of Botswana's plates, each the median of one flattened,
/// white-balanced photo (`sheet_flat.png`). One photo per colour, so none
/// can say how far it sits from the paint.
abstract final class BotswanaColors {
  /// Front plate field. `Botswana_plate_01`: `EEEFEE`.
  static const Color white = Color(0xFFEEEFEE);

  /// Its ink, same photo: `332F2C`.
  static const Color whiteInk = Color(0xFF332F2C);

  /// Rear plate field. `Botswana-rear-plate`: `F4C507`.
  static const Color yellow = Color(0xFFF4C507);

  /// Its ink, same photo: `2F3746`.
  static const Color yellowInk = Color(0xFF2F3746);

  /// Public service field. `Botswana_public_plate`: `1D51D5`.
  static const Color blue = Color(0xFF1D51D5);

  /// Its ink, same photo: `F6F6FF`.
  static const Color blueInk = Color(0xFFF6F6FF);

  /// Government rear field. `Botswana_temporary_plate`: `F12D31`.
  static const Color red = Color(0xFFF12D31);

  /// Its ink, same photo: `FBEDFE`.
  static const Color redInk = Color(0xFFFBEDFE);

  static const Color inactive = Color(0xFFB0B0B0);
}
