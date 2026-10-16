import 'dart:math';

import 'package:plate_alphabet/plate_alphabet.dart';
import 'package:plate_core/plate_core.dart';

import 'botswana_country.dart';

/// Where the ink sits, in plate units.
///
/// Four photographs flattened to 520×130 (aspect 4, the photos measure
/// 3.68–4.02; no size is given in the article) and projected onto each axis.
/// Ink y: rear 21.2–116.2, front 17.2–118, public 16.8–121.5, so the centre is
/// 67.6–69 and [cy] is 68. Ink x runs from 20.8–30 to 499 on every plate; the
/// register is spread evenly over [left]..[right].
///
/// The government photo's rows (9.8–130) are polluted by the cables strung
/// across it, so it takes the other three's geometry.
///
/// The reference ink is 95–105 tall on a 130 plate; at 0.55 ink per box that
/// would need a ~180-unit box, so the box is capped at the canvas and the ink
/// lands near 70% of the photos'.
abstract final class _Layout {
  static const double width = 520, height = 130;
  static const double left = 24, right = 499;
  static const double cy = 68, box = 124;
}

/// A prefix, a number and, on private and public plates, three letters.
/// Groups: `prefix`, `serial`, `suffix`. Colour comes from the theme
/// ([BotswanaThemes.private] or [BotswanaThemes.privateRear], then
/// [BotswanaThemes.publicService], [BotswanaThemes.government]).
///
/// Not implemented, for lack of a measured reference: the BDF defence plates,
/// the red-on-white BX front plate and the diplomatic plates.
abstract final class BotswanaPlates {
  /// `B 123 ABC`.
  static final PlateSpec private = _spec('bw.private', 1, 3, 3);

  /// `B 123 ABC`.
  static final PlateSpec publicService = _spec('bw.public', 1, 3, 3);

  /// `BX 123456`.
  static final PlateSpec government = _spec('bw.government', 2, 6, 0);

  static List<PlateSpec> get all => <PlateSpec>[
    private,
    publicService,
    government,
  ];

  static PlateSpec _spec(String id, int prefix, int digits, int suffix) {
    final int count = prefix + digits + suffix;
    final double pitch = (_Layout.right - _Layout.left) / count;
    List<PlateSlot> run(PlateAlphabet alphabet, int n, int from) => n == 0
        ? const <PlateSlot>[]
        : <PlateSlot>[
            PlateSlot(
              alphabet: alphabet,
              box: PlateBox(
                _Layout.left + from * pitch,
                _Layout.cy - _Layout.box / 2,
                n * pitch,
                _Layout.box,
              ),
              length: n,
              spacing: max(0, pitch - 0.6 * 0.72 * _Layout.box),
            ),
          ];
    return PlateSpec(
      id: id,
      country: BotswanaCountry.botswana,
      canvasWidth: _Layout.width,
      canvasHeight: _Layout.height,
      panel: const PlatePanel(box: PlateBox(0, 0, 0, 0)),
      noPanel: true,
      slots: <PlateSlot>[
        ...run(BotswanaAlphabets.letters, prefix, 0),
        ...run(BotswanaAlphabets.digits, digits, prefix),
        ...run(BotswanaAlphabets.letters, suffix, prefix + digits),
      ],
      textGroups: <PlateTextGroup>[
        PlateTextGroup(const <int>[0], key: 'prefix'),
        PlateTextGroup(const <int>[1], key: 'serial'),
        if (suffix > 0) PlateTextGroup(const <int>[2], key: 'suffix'),
      ],
    );
  }
}
