import 'package:dkatalis_demo/Constants/Constants.dart';
import 'package:dkatalis_demo/views/CustomActionButton.dart';
import 'package:dkatalis_demo/views/ProgressIndicatorMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {

  bool _obscureText = true;
  String complexityText = "";
  Color complexityColor = null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create Account"),
        ),
        body: Container(
          color: Colors.blue[700],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ProgressIndicatorMenu(1),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Create Password",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Password will be used to login to account",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(5.0) //         <--- border radius here
                                  ),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            hintText: "Create Password",
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                            ),
                                          ),
                                          obscureText: _obscureText,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Icon(
                                          Icons.remove_red_eye,
                                        color: _obscureText ? Colors.grey : Colors.blue[500],
                                      ),
                                      onTap: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:16.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Complexity:",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                            Text(
                              complexityText
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "a",
                              style: Constants.passswordRulesTextStyle,
                            ),
                            Text(
                              "Lowercase",
                              style: Constants.textColorWhiteStyle,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                                "A",
                              style: Constants.passswordRulesTextStyle,
                            ),
                            Text(
                                "Uppercase",
                              style: Constants.textColorWhiteStyle,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                                "123",
                              style: Constants.passswordRulesTextStyle,
                            ),
                            Text(
                                "Number",
                              style: Constants.textColorWhiteStyle,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                                "9+",
                              style: Constants.passswordRulesTextStyle,
                            ),
                            Text(
                                "Characters",
                              style: Constants.textColorWhiteStyle,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: CustomActionButton("Next", goToNextPage),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void goToNextPage() {

//    if(hasError) {
//      setState(() {});
//    }
//    else {
//      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PasswordScreen()));
//    }
  }
}
