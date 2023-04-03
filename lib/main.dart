import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rapaid/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'rapaid_landing',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.landingScreen,
      routes: AppRoutes.routes,
    );
  }
}
