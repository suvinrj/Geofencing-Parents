import 'package:day12_login/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import './pages/menu.dart';
import './pages/demo.dart';
import './pages/home_page.dart';
import './pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

//To run with Firebase

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MainPage(),
//     );
//   }
// }

  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MainPage(),
      title: "Homepage",
      routes: <String, WidgetBuilder>{
        './pages/login.dart': (BuildContext context) => new LoginPage(),
        './pages/menu.dart': (BuildContext context) => new Menu(),
        './pages/demo.dart': (BuildContext context) => new Demo(),
        './pages/main_page.dart': (BuildContext context) => new MainPage(),
        './pages/home_page.dart': (BuildContext context) => new HomePage(),
      }));
}
