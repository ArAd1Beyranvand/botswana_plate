/// Botswana's licence plates for the `plate_core` library.
///
/// Private, public service and government plates, with their themes, alphabet
/// and advisory validators.
library;

// TODO(py): [D5] one module `plates.countries.botswana`; assets via importlib.resources.
// TODO(ts): [D5] one subpath export `./countries/botswana`; tree-shakable.
// TODO(kt): [D5] package `countries.botswana` in the countries module.
export 'src/botswana_colors.dart';
export 'src/botswana_country.dart';
export 'src/botswana_plates.dart';
export 'src/botswana_themes.dart';
export 'src/botswana_validators.dart';
export 'package:plate_alphabet/plate_alphabet.dart' show BotswanaAlphabets;
