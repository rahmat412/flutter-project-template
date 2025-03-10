import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_template/config/environment.dart';
import 'package:get/get.dart';

import '/app/bindings/initial_binding.dart';
import 'core/constants/app_colors.dart';
import '/app/routes/app_pages.dart';
import '../config/env_config.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Environment _envConfig = EnvConfig.flavor;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter Template ${_envConfig.name}",
      initialRoute: AppPages.INITIAL,
      initialBinding: InitialBinding(),
      getPages: AppPages.routes,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: _getSupportedLocal(),
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
        textTheme: const TextTheme(
          labelLarge: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  List<Locale> _getSupportedLocal() {
    return [
      const Locale('en', ''),
      const Locale('bn', ''),
    ];
  }
}
