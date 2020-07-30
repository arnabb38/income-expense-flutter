import 'package:flutter/material.dart';
import 'package:inc_exp/Constants.dart';
import 'package:inc_exp/user.dart';

const String user = 'arnab';
const String id = 'arnab';
String invalidCredential = '';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String userValue, passValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400,
        title: Text(
          'Income-Expense',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/home.png',
                  height: 100.0,
                  width: 100.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  invalidCredential,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    //letterSpacing: 1.5,
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 10.0,
                    left: 40.0,
                    bottom: 10.0,
                    right: 40.0,
                  ),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: kIdDecorationTextStyle,
                    onChanged: (value) {
                      print(value);
                      userValue = value;
                    },
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 10.0,
                    left: 40.0,
                    bottom: 10.0,
                    right: 40.0,
                  ),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: kPassDecorationTextStyle,
                    onChanged: (value) {
                      //print(value);
                      passValue = value;
                    },
                    obscureText: true,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          if (userValue != null && passValue != null) {
                            if (userValue == 'arnab' && passValue == 'arnab') {
                              print(userValue);
                              print(passValue);
                              invalidCredential = 'Login Successful';
                              print(invalidCredential);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return UserPage(
                                      userID: userValue,
                                    );
                                  },
                                ),
                              );
                            } else {
                              invalidCredential =
                                  'Invalid User ID or Password!';
                              print(invalidCredential);
                            }
                          } else {
                            invalidCredential = 'Invalid User ID or Password!';
                            print(invalidCredential);
                          }
                        });
                        //Navigator.pop(context, cityname);
                      },
                      child: Text(
                        'Login',
                        style: kButtonTextStyle,
                      ),
                    ),
                    RaisedButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                        invalidCredential = '';
                      },
                      child: Text(
                        'Cancel',
                        style: kButtonTextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
