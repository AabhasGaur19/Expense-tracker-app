import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:expensetracker/widgets/expenses.dart';
import 'package:flutter/services.dart';


var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.blueAccent.shade200);
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 1, 45, 119),
);
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((_){
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(colorScheme: kDarkColorScheme),
      themeMode: ThemeMode.system,
      home: Expenses(),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: EdgeInsets.all(13),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.normal,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 18,
              ),
            ),
      ),
    ),
  );

  // });
  await initializeDateFormatting('en_IN', null);

}
