import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal/binding/my_binding.dart';
import 'package:med_sal/core/constants/app_routes.dart';
import 'package:med_sal/core/localizations/app_strings.dart';
import 'package:med_sal/core/localizations/locale_controller.dart';
import 'package:med_sal/core/localizations/locale.dart';
import 'package:med_sal/core/services/my_services.dart';
import 'package:med_sal/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        LocaleController localController = Get.put(LocaleController());
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appTitle,
          theme: localController.appTheme,
          getPages: pages,
          initialRoute: AppRoutes.spLayoutRoute,
          initialBinding: MyBinding(),
          locale: localController.language,
          translations: MyLocal(),
        );
      },
    );
  }
}
