import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'chat_screen.dart';
import 'constant.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  onChanged: (Value) {
                    email = Value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                    contentPadding: contentPadding,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder:kMessageTextFieldDecoration,
                    focusedBorder: kFocusedBorder,
                  ),
                ),
                SizedBox(height: 8.0),
                TextField(
                  onChanged: (Value) {
                    password = Value;
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter your password.',
                      contentPadding: contentPadding,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: kMessageTextFieldDecoration,
                      focusedBorder: kFocusedBorder,
                  ),
                ),
                SizedBox(height: 20.0),
                Material(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20.0),
                  child: MaterialButton(
                    onPressed: () async {
                      setState(() {
                        showSpinner = true;
                      });
                      try{
                        final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                        if(newUser != null){
                          Navigator.pushNamed(context, ChatScreen.id);
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      }
                      catch(e){
                        print(e);
                      }
                    },
                    child: Text('Lon in'),
                    minWidth: 300.0,
                    height: 42.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
