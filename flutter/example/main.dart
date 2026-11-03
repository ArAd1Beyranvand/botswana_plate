import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';
import 'package:botswana_plate/botswana_plate.dart';

void main() => runApp(
  PlateExampleApp(spec: BotswanaPlates.civil, theme: BotswanaThemes.private),
);
