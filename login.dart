import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        hintStyle: TextStyle(
          color: Colors.green[200],
        ),
        fillColor: Color(0xff388e3c),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        filled: false,
      ),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          hintStyle: TextStyle(
            color: Colors.green[200],
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      //color: Color(0xffDE5D83),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        splashColor: Colors.green,
        //disabledColor: Color(0xfffffeee),
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pushNamed(context, '/signup');
        },
        child: Text("LOGIN",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.green[700], fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      //backgroundColor: Color(0xF0FFF0F5),
      body: ListView(
        shrinkWrap: false,
        children: <Widget>[
          Center(
            child: Container(
              //color: Color(0xF0FFF0F5),
              child: Padding(
                padding: EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                      child: Card(
                        elevation: 15.0,
                        child: Center(
                          child: Text(
                            'SPOTIFY',
                            style: TextStyle(
                              letterSpacing: 5.0,
                              fontSize: 36.0,
                              color: Color(0xff388e3c),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 45.0),
                    emailField,
                    SizedBox(height: 25.0),
                    passwordField,
                    SizedBox(
                      height: 35.0,
                    ),
                    loginButon,
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
