import 'package:book_my_app/data.dart';
import 'package:book_my_app/detail.dart';
import 'package:flutter/material.dart';
import 'package:book_my_app/home.dart';
import 'login_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    Home.tag: (context) => Home(),
  };
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.cyan,
        platform: TargetPlatform.iOS,
      ),
      home: LoginPage(),
      routes: routes,
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }

  ///Generate parameterized route --> e.g: detail/some book title
  generateRoute(RouteSettings settings) {
    final path = settings.name!.split('/');
    final title = path[1];

    Book book = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book),
    );
  }
}
