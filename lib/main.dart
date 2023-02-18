import 'package:flutter/material.dart';
import 'package:rendoc_admin/pages/Log/log_info_1.dart';
import 'package:wakelock/wakelock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Wakelock.enable();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //appbar
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            shadowColor: Color.fromARGB(0, 0, 0, 0),
            iconTheme: IconThemeData(
              color: Color(0xff2F88FC),
              size: 36,
            ),
          ),
          //fonts
          fontFamily: 'Rubik',
          //bottons
          buttonTheme: const ButtonThemeData(),
          //colors
          canvasColor: Colors.white,
          primaryColor: const Color(0xff2F88FC),
          primaryColorLight: const Color(0xFFC5DCFA),
          primaryColorDark: const Color(0xFF0F56B3),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xFF31E3CB)),
          //texts
          textTheme: TextTheme(
            headline2: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 26,
              color: Theme.of(context).primaryColor,
            ),
            headline3: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Colors.white,
            ),
            headline4:
                const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            headline6: const TextStyle(
                fontWeight: FontWeight.w400, fontSize: 14, color: Colors.white),
            headline5: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData()),
      home: const LogInfo1(),
    );
  }
}
