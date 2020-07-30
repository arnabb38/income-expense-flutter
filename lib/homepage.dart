import 'package:flutter/material.dart';
import 'package:inc_exp/login.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      appBar: AppBar(
//        backgroundColor: Colors.lightGreen.shade400,
        backgroundColor: Colors.teal.shade400,
        title: Text(
          'Income-Expense',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            padding:
                EdgeInsets.only(top: 5.0, left: 5.0, bottom: 5.0, right: 30.0),
            icon: Icon(
              Icons.assignment_ind,
              color: Colors.black,
              size: 40.0,
            ),
            onPressed: () {
              // Implement navigation to shopping cart page here...
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    'WELCOME',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60.0,
                      fontFamily: 'Kalam',
                      letterSpacing: 2.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Image.asset(
                  'assets/home.png',
                  height: 300.0,
                  width: 300.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
