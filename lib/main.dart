import 'package:flutter/material.dart';
import 'package:rider_app/AllScreens/LoginScreen.dart';
import 'package:rider_app/AllScreens/RegisterScreen.dart';
import 'package:get/get.dart';

import 'AllScreens/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Brand-Bold",
        primaryColor: Colors.green,
        colorScheme: .fromSeed(seedColor: Colors.green),
        scaffoldBackgroundColor: Colors.grey,
      ),
      initialRoute: "/register",
      //home: RegisterScreen(),
      getPages: [
        GetPage(name: "/", page: ()=> MainScreen()),
        GetPage(name: "/login", page: () => LoginScreen()),
        GetPage(name: "/register", page: () => RegisterScreen()),
      ],
    );
  }
}

