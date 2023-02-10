import 'package:capstone_2023_mo/pages/login/presentation/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'firebase_options.dart';
import 'core/route/app_router.dart';
import 'core/theme/app_theme.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   // options: DefaultFirebaseOptions.currentPlatform
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("MyApp main--------------------------");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "VinFlat",
      theme: AppTheme.light,
      themeMode: ThemeMode.light,
      initialRoute: LoginScreen.route,
      onGenerateRoute: AppRoute.generate,
    );
  }
  }

