import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscureText = true;
  String updatedValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xC00093E9),
                              const Color(0xF580D0C7)
                            ], // whitish to gray
                          ),
                        ),
                        child: Center(
                          child: Container(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Icon(
                                Icons.school,
                                color: Colors.blue,
                                size: 80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.4,
                    left: MediaQuery.of(context).size.width * 0.05,
                    child: Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              TextField(
                                decoration: InputDecoration(
                                    labelText: 'USN',
                                    suffixIcon: Icon(Icons.person)),
                              ),
                              TextField(
                                obscureText: obscureText,
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    suffixIcon: IconButton(
                                      icon: Icon(Icons.remove_red_eye),
                                      onPressed: () {
                                        setState(() {
                                          if (obscureText)
                                            obscureText = false;
                                          else
                                            obscureText = true;
                                        });
                                      },
                                    )),
                              ),
                              DropdownButton<String>(
                                isExpanded: true,
                                hint: Text(
                                  'Section',
                                  style: TextStyle(fontSize: 18),
                                ),
                                value: updatedValue,
                                icon: Icon(Icons.keyboard_arrow_down),
                                onChanged: (String newValue) {
                                  setState(() {
                                    updatedValue = newValue;
                                  });
                                },
                                items: [
                                  'A',
                                  'B',
                                  'C'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                              RaisedButton(
                                padding: EdgeInsets.symmetric(
                                    vertical: 18, horizontal: 90),
                                color: Colors.blue,
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/home');
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
