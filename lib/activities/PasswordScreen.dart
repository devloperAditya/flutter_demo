import 'package:dkatalis_demo/Constants/Constants.dart';
import 'package:dkatalis_demo/activities/PersonalInfoScreen.dart';
import 'package:dkatalis_demo/models/PasswordValidationModel.dart';
import 'package:dkatalis_demo/utilities/Validator.dart';
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
  bool hasUpper = false;
  bool hasLower = false;
  bool hasNumber = false;
  bool hasSpecial = false;
  TextEditingController passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController = TextEditingController();
  }

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create Account"),
          backgroundColor: Constants.primaryBlueColor,
        ),
        body: Container(
          color: Constants.primaryBlueColor,
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
                                          controller: passwordController,
                                          textInputAction: TextInputAction.done,
                                          onFieldSubmitted: (term){
                                            goToNextPage();
                                          },
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
                                          onChanged: _onChanged,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Icon(
                                          Icons.remove_red_eye,
                                        color: _obscureText ? Constants.grey : Constants.primaryBlueColor,
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
                              complexityText,
                              style: TextStyle(
                                color: complexityColor,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              hasLower ?
                              Image.asset(
                                "drawables/tick.png",
                                height: 32,
                              ):
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
                              hasUpper ?
                              Image.asset(
                                  "drawables/tick.png",
                                height: 32,
                              ):
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
                              hasNumber ?
                              Image.asset(
                                  "drawables/tick.png",
                                height: 32,
                              ):
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
                              hasSpecial ?
                              Image.asset(
                                  "drawables/tick.png",
                                height: 32,
                              ):
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
    if(hasSpecial && hasNumber && hasUpper && hasLower) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PersonalInfoScreen()));
    }
  }

  void _onChanged(String password) {
    PasswordValidationModel passwordValidationModel = Validator.ValidatePassword(password);

    if(password.length <= 3) {
      complexityText = " Very Weak";
      complexityColor = Colors.red;
    }
    else if(password.length <=5) {
      complexityText = " Weak";
      complexityColor = Colors.yellowAccent;
    }
    else if(password.length <= 8) {
      complexityText = " Medium";
      complexityColor = Colors.orange;
    }
    else {
      complexityText = " Strong";
      complexityColor = Colors.green;
    }

    if(password.length == 0) {
    complexityText = " Very Weak";
    complexityColor = Colors.red;
    }
    else if(!passwordValidationModel.hasUppercase && !passwordValidationModel.hasLowercase && !passwordValidationModel.hasNumber && !passwordValidationModel.hasSpecialCharacter) {
      complexityText = " Weak";
      complexityColor = Colors.yellowAccent;
    }

    setState(() {
      hasUpper = passwordValidationModel.hasUppercase;
      hasLower = passwordValidationModel.hasLowercase;
      hasNumber = passwordValidationModel.hasNumber;
      hasSpecial = passwordValidationModel.hasSpecialCharacter;
    });
  }
}
