import 'package:get/get.dart';
import 'package:med_sal/core/localizations/ar.dart';
import 'package:med_sal/core/localizations/en.dart';

class MyLocal implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}
