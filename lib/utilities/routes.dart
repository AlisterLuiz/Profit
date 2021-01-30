import 'package:Profit/utilities/index.dart';

class Routes {
  Routes._();

  //static variables
  static const String homeView = '/homeView';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String forgotPassword = '/forgotPassword';
  static const String home = '/home';

  // Routes to each page
  static final routes = <String, WidgetBuilder>{
    homeView: (BuildContext context) => HomeView(),
    login: (BuildContext context) => LoginPage(),
    signUp: (BuildContext context) => SignUpPage(),
    forgotPassword: (BuildContext context) => ForgotPasswordPage(),
    home: (BuildContext context) => Transactions(),

  };
}
