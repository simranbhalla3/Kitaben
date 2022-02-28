import 'package:flutter/material.dart';
import 'package:book_my_app/home.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final title = Text(
      '     Kitaben',
      style: TextStyle(
        fontSize: 80,
        fontFamily: 'Tangerine',
        fontWeight: FontWeight.bold,
      ),
    );
    final logo = Hero(
      tag: Hero,
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 90,
        child: Image.asset('res/logo.png'),
      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      // initialValue: 'example@gmail.com',
      style: TextStyle(fontFamily: 'Andada', fontSize: 20),
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: 40),
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final password = TextFormField(
      // initialValue: 'some password',
      autocorrect: false,
      obscureText: true,
      style: TextStyle(fontFamily: 'Andada', fontSize: 20),
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(fontSize: 40),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        borderRadius: BorderRadius.circular(50),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5,
        child: MaterialButton(
          minWidth: 200,
          height: 52,
          onPressed: () {
            Navigator.of(context).pushNamed(Home.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Log in',
              style: TextStyle(
                  color: Colors.black, fontSize: 35, fontFamily: 'Andada')),
        ),
      ),
    );

    final forgotLabel = TextButton(
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.black54, fontSize: 20),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 600,
          height: 850,
          padding: EdgeInsets.fromLTRB(10, 100, 10, 100),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('res/bit.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24, right: 24),
            children: <Widget>[
              title,
              logo,
              SizedBox(height: 48),
              email,
              SizedBox(height: 8),
              password,
              SizedBox(height: 24),
              loginButton,
              forgotLabel,
            ],
          ),
        ),
      ),
    );
  }
}
