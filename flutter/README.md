FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Botswana to view examples:

https://platexample.ir/#/discover/botswana:flutter

# botswana_plate

Botswana's licence plates for the plate_core library: private, public service and government plates.

## Languages

| Language | Folder | Example |
| --- | --- | --- |
| Flutter / Dart | [`flutter/`](https://github.com/ArAd1Beyranvand/botswana_plate/tree/main/flutter) | [platexample](https://platexample.ir/#/discover/botswana:flutter) |
| Kotlin | [`kotlin/`](https://github.com/ArAd1Beyranvand/botswana_plate/tree/main/kotlin) | [platexample](https://platexample.ir/#/discover/botswana:kotlin) |
| Python | [`python/`](https://github.com/ArAd1Beyranvand/botswana_plate/tree/main/python) | [platexample](https://platexample.ir/#/discover/botswana:python) |
| TypeScript | [`typescript/`](https://github.com/ArAd1Beyranvand/botswana_plate/tree/main/typescript) | [platexample](https://platexample.ir/#/discover/botswana:typescript) |

## Quick start

### Install

```yaml
dependencies:
  plate_core: ^0.12.0
  botswana_plate: ^0.1.0
```

### Use

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

## Specs

Each spec is one plate layout.

- `BotswanaPlates.civil`
- `BotswanaPlates.government`

## Themes

- `BotswanaThemes.private`
- `BotswanaThemes.privateRear`
- `BotswanaThemes.publicService`
- `BotswanaThemes.government`

## Change it

`PlateCanvas` takes `spec:` (an entry of `BotswanaPlates`) and `theme:` (an entry of `BotswanaThemes`). Set `validator:` to `BotswanaValidator()` and `autoValidate: true` to show validation hints.

## Also included

- `BotswanaCountry` — the country panel.
- `BotswanaValidator` — the plate validator.

## Plates

A prefix, a number and, on civil plates, three letters.
Groups: `prefix`, `serial`, `suffix`. Colour comes from the theme
(`BotswanaThemes.private` or `BotswanaThemes.privateRear`, then
`BotswanaThemes.publicService`, `BotswanaThemes.government`).

Not implemented, for lack of a measured reference: the BDF defence plates,
the red-on-white BX front plate and the diplomatic plates.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/botswana_plate/blob/main/LICENSE).
