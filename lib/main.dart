import 'package:financial_app/utilities/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeModel>(
          create: (BuildContext context) => ThemeModel(),
        ),
        ChangeNotifierProvider<CurrentIndexProvider>(
          create: (BuildContext context) => CurrentIndexProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'financial_app',
      theme: Provider.of<ThemeModel>(context).currentTheme,
      initialRoute: Routes.login,
      routes: Routes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
