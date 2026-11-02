import 'package:plate_core/plate_core.dart';

import 'botswana_colors.dart';

/// Botswana as a `PlateCountry`. The plates carry no country block, so every
/// spec sets `noPanel`.
abstract final class BotswanaCountry {
  static const PlateCountry botswana = PlateCountry(
    code: 'bw',
    captionLines: <String>[],
    panelColor: BotswanaColors.white,
    panelTextColor: BotswanaColors.whiteInk,
  );
}
