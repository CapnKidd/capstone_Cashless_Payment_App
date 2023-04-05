import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rapaid/routes/app_routes.dart';
import 'auth_service.dart';

class SplashPage extends StatefulWidget {

   const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () { 
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) => AuthService().handleAuthState(), //Later we will have this redirect to the home page first
          ));
    });
  }

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
