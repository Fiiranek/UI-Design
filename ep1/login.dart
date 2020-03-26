import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  InputDecoration decor = InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Colors.green, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Colors.green[700], width: 1),
      ));

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/ficus.png'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Plant App',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(60)),
                    gradient: LinearGradient(colors: [
                      Color(0xff19803d),
                      Color(0xff34ff7c),
                    ])),
              ),
              Container(
                width: width * 0.8,
                child: Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                          decoration: decor.copyWith(
                              hintText: 'Email',
                              prefixIcon: Icon(Icons.email))),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: decor.copyWith(
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.lock))),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Don't have an account? Click here!"),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                          width: width*0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(colors: [
                            Color(0xff19803d),
                            Color(0xff34ff7c),
                          ])),
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
