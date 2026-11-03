FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Botswana to view examples:

https://platexample.ir/#/discover/botswana:python

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

### Install (Python)

Copy `python/plates/countries/botswana/` into `plate_core/python/plates/countries/`.

Then run the tests from `plate_core/python/`: `pytest`.

### Use

```python
from plates.countries.botswana.data import SPECS, THEMES

spec = SPECS["bw.civil"]
theme = THEMES["BotswanaThemes.private"]
print(spec.id)
```

## Specs

The specs are the same in every language (they come from shared data).

- `bw.civil`
- `bw.government`

## Themes

- `BotswanaThemes.private`
- `BotswanaThemes.privateRear`
- `BotswanaThemes.publicService`
- `BotswanaThemes.government`

## Change it

- Pick a spec: use another key of `SPECS`.
- Pick a theme: use another key of `THEMES`.
- Validators: `VALIDATORS` maps the names `BotswanaValidator`, `BotswanaGovernmentValidator` to classes.

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/botswana_plate/blob/main/LICENSE).
