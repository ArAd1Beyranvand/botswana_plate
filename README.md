FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Botswana to view examples:

https://platexample.ir/#/discover/botswana

# botswana_plate

Botswana's licence plates for the `plate_core` library. Private, public service and government plates, with their themes, alphabet and advisory validators.

## Install

```yaml
dependencies:
  plate_core: ^0.12.0
  botswana_plate: ^0.1.0
```

## Use

```dart
import 'package:plate_core/plate_core.dart';
import 'package:botswana_plate/botswana_plate.dart';

PlateCanvas(
  spec: BotswanaPlates.civil,
  theme: BotswanaThemes.private,
  validator: const BotswanaValidator(),
  autoValidate: true,
  onChooseCharacter: noCharacterChooser,
);
```

## Contains

- `BotswanaCountry` — country panel: `botswana`.
- `BotswanaPlates` — 2 plate specs: `civil`, `government`.
- `BotswanaThemes` — 4 themes: `private`, `privateRear`, `publicService`, `government`.
- `BotswanaValidator` — advisory validator; flags the frame, never blocks a keystroke.
- `BotswanaGovernmentValidator` — advisory validator; flags the frame, never blocks a keystroke.

## Plates

A prefix, a number and, on civil plates, three letters.
Groups: `prefix`, `serial`, `suffix`. Colour comes from the theme
(`BotswanaThemes.private` or `BotswanaThemes.privateRear`, then
`BotswanaThemes.publicService`, `BotswanaThemes.government`).

Not implemented, for lack of a measured reference: the BDF defence plates,
the red-on-white BX front plate and the diplomatic plates.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

