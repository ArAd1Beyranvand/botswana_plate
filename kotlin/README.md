FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Botswana to view examples:

https://platexample.ir/#/discover/botswana:kotlin

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

### Install (Kotlin)

Copy `kotlin/src/commonMain/kotlin/plates/countries/botswana/` into `plate_core/kotlin/src/commonMain/kotlin/plates/countries/`.

Then run the tests from `plate_core/kotlin/`: `./gradlew jvmTest`.

### Use

```kotlin
import plates.countries.botswana.country

val spec = country.specs["bw.civil"]
println(country.pkg)
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

- Specs: `country.specs`, by id.
- Themes: `country.themes`.
- Validators: `country.validators` (`BotswanaValidator`, `BotswanaGovernmentValidator`).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/botswana_plate/blob/main/LICENSE).
