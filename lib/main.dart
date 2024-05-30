import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shyp_ai_app/Screens/Dashboard%20Screen/dashboard_screen.dart';
import 'package:shyp_ai_app/Screens/Login%20Screen/login_screen.dart';
import 'package:shyp_ai_app/Screens/Splash%20Screen/splash_screen.dart';

import 'package:shyp_ai_app/Utilis/Routes/routes.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      getPages: routes,
    );
  }
}
