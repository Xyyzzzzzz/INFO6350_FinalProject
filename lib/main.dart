import './screens/authenticate/welcomePage.dart';
import './services/auth.dart';
import './models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: WelcomePage(),
      ),
    );
  }
}
