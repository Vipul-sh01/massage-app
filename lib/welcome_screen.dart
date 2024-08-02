import 'package:flutter/material.dart';
import 'package:massagea/register_screen.dart';

import 'login_screen.dart';


class WelcomePage extends StatelessWidget {

 static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Material(
              elevation: 20.0,
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20.0),
              child: MaterialButton(
                onPressed: (){
                  Navigator.pushNamed(context, LoginPage.id);
                },
                minWidth: 350.0,
                height: 42.0,
                child: Text('Log In'),
              ),
            ),
            SizedBox(height: 20.0,),
            Material(
              elevation: 20.0,
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20.0),
              child: MaterialButton(
                onPressed: (){
                  Navigator.pushNamed(context, RegisterPage.id);
                },
                minWidth: 350.0,
                height: 42.0,
                child: Text('Register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
