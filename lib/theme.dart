import 'package:flutter/material.dart';

Color _primaryColor = Colors.lightBlue[800]!;
Color _primaryColorLight = Colors.lightBlue[300]!;
Color _primaryColorDark = Colors.lightBlue[900]!;
Color _accentColor = Colors.lightBlueAccent[400]!;
Color _accentColorLight = Colors.lightBlueAccent;
Color _accentColorDark = Colors.lightBlueAccent[400]!;
Color _errorColor = Colors.red[900]!;
Color _white = Colors.white;
Color _black = Colors.black;

ThemeData theme(Brightness brightness) {
  return ThemeData(
    brightness: brightness,
    primaryColor: _primaryColor,
    hintColor: _accentColorLight,
    fontFamily: 'Georgia',
    textTheme: _textTheme,
    appBarTheme: _appBarTheme,
    dividerTheme: _dividerTheme,
    drawerTheme: _drawerTheme,
    inputDecorationTheme: _inputDecorationTheme,
    buttonTheme: _buttonTheme,
    textButtonTheme: _textButtonTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme _appBarTheme = AppBarTheme(
  backgroundColor: _primaryColor,
  foregroundColor: Colors.white,
  shadowColor: _primaryColorDark,
  elevation: 5,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(10),
    ),
  ),
);

const TextTheme _textTheme = TextTheme(
  displayLarge: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
  titleLarge: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
  bodyMedium: TextStyle(fontSize: 18.0, fontFamily: 'Hind'),
);

 InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(
  border: const OutlineInputBorder(),
  labelStyle: TextStyle(color: _primaryColorDark),
  hintStyle: TextStyle(color: _primaryColorDark),
  floatingLabelBehavior: FloatingLabelBehavior.always,
  contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  enabledBorder: OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: _primaryColorDark, width: 2),
  ),
  focusedBorder:  OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: _primaryColorDark, width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: _errorColor, width: 2),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: _errorColor, width: 2),
  ),
);

 ButtonThemeData _buttonTheme = ButtonThemeData(
  buttonColor: _primaryColorDark,
  shape:
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7.0),
    ),
  //textTheme: ButtonTextTheme.primary,
);

 TextButtonThemeData _textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    animationDuration: const Duration(milliseconds: 100),
    backgroundColor: MaterialStateProperty.all<Color>(_primaryColor),
    foregroundColor: MaterialStateProperty.all<Color>(_white),
    overlayColor: MaterialStateProperty.all<Color>(_accentColor),
    side: MaterialStateProperty.all<BorderSide>(
       BorderSide(
        color:  _primaryColorLight,
        width: 0.75,
      ),
    ),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.0),
      ),
    ),
  ),
);

 ElevatedButtonThemeData _elevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    animationDuration: const Duration(milliseconds: 100),
    backgroundColor: MaterialStateProperty.all<Color>(_primaryColor),
    foregroundColor: MaterialStateProperty.all<Color>(_white),
    overlayColor: MaterialStateProperty.all<Color>(_accentColor),
    side: MaterialStateProperty.all<BorderSide>(
       BorderSide(
        color:  _primaryColorLight,
        width: 0.75,
      ),
    ),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.0),
      ),
    ),
  ),
);

const DividerThemeData _dividerTheme = DividerThemeData(
  thickness: 1,
  space: 0,
  indent: 0,
  endIndent: 0,
);

 DrawerThemeData _drawerTheme = DrawerThemeData(
  elevation: 16.0,
  shadowColor: _primaryColor,
);
