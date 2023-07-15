import 'package:dirbbird/provider/drawer_provider.dart';
import 'package:dirbbird/screens/change_password_screen.dart';
import 'package:dirbbird/screens/profile_screen.dart';
import 'package:dirbbird/screens/settings_screen.dart';
import 'package:dirbbird/screens/storage_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:dirbbird/screens/login_screen.dart';
import 'package:dirbbird/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DrawerProvider()),
        ],
        child: const MainApp(),
      ),
    );
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/storage': (context) => StorageScreen(),
        '/settings': (context) => SettingsScreen(),
        '/settings/change-password': (context) => ChangePasswordScreen(),
      },
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
