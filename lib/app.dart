import 'package:sayeer/screens/login/login.dart';
import 'package:sayeer/utils/constants/text_strings.dart';
import 'package:sayeer/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      // darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      locale: const Locale('ar'),
    );
  }
}
