import 'package:financial_app/utilities/index.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  accentColor: Color(0xff561CF5),
  fontFamily: 'Gilroy',
  appBarTheme: AppBarTheme(
    elevation: 0.0,
  ),
  backgroundColor: Color(0xffFFFFFF),
  scaffoldBackgroundColor: Color(0xffFFFFFF),
  primaryColor: Color(0xff150443),
  secondaryHeaderColor: Color(0xffECE5FF),
  cardColor: Color(0xffFFFFFF),
  cardTheme: CardTheme(
    shadowColor: Color(0xff150443),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  accentColor: Color(0xff561CF5),
  fontFamily: 'Gilroy',
  appBarTheme: AppBarTheme(
    elevation: 0.0,
  ),
  backgroundColor: Color(0xff160640),
  scaffoldBackgroundColor: Color(0xff160640),
  primaryColor: Color(0xffffffff),
  secondaryHeaderColor: Color(0xffECE5FF),
  cardColor: Color(0xff0D0228),
  cardTheme: CardTheme(
    shadowColor: Color(0xff150443),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
);
