import 'package:botswana_plate/botswana_plate.dart';
import 'package:plate_core/testing.dart';

void main() {
  plateGoldens('bw', BotswanaCountry.botswana, <String, PlateGoldenCase>{
    'private': (BotswanaPlates.civil, BotswanaThemes.private, 'B 962 ATH'),
    'private_rear': (
      BotswanaPlates.civil,
      BotswanaThemes.privateRear,
      'B 886 AJR',
    ),
    'public': (BotswanaPlates.civil, BotswanaThemes.publicService, 'B 853 BAG'),
    'government': (
      BotswanaPlates.government,
      BotswanaThemes.government,
      'BX 153042',
    ),
  });
}
