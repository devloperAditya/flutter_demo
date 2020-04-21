import 'package:dkatalis_demo/Constants/Constants.dart';
import 'package:dkatalis_demo/views/CustomActionButton.dart';
import 'package:dkatalis_demo/views/ProgressIndicatorMenu.dart';
import 'package:flutter/material.dart';

import '../utilities/Validator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController emailController = TextEditingController();
  bool validateEmail = false;
  String invalidEmailMessage = "";
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey[100],
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: Image.asset("drawables/screen1image.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:16.0,right:16.0, top:48.0),
                    child: ProgressIndicatorMenu(0),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left:16.0, right: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Welcome to",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 36
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "GIN",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 36
                              ),
                            ),
                            Text(
                              " Finans",
                              style: TextStyle(
                                  color: Colors.blue[500],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 36
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:32.0, bottom: 32.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Welcome to  The Bank of The Future." + "\n" + "Manage and track your accounts on" + "\n" + "the go.",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(5.0) //         <--- border radius here
                              ),
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(5.0) //         <--- border radius here
                                  ),
                                color: Colors.grey[100]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left:4.0, bottom:4.0),
                                child: TextFormField(
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.done,
                                  onFieldSubmitted: (term){
                                    goToNextPage();
                                  },
                                  decoration: InputDecoration(
                                    errorText: validateEmail ? invalidEmailMessage : null,
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.red
                                      ),
                                    ),
                                    prefixIcon: Icon(Icons.mail_outline,
                                    color: Colors.grey,),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: Colors.grey
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
//                      Expanded(
//                        child: Container(
//                          color: Colors.blue[500],
////                          child: Padding(
////                            padding: const EdgeInsets.symmetric(horizontal:16.0),
////                            child: Container(
////                              height: 50,
////                              color: Colors.blue[500],
////                              child: Center(
////                                child: Text(
////                                  "Next"
////                                ),
////                              ),
////                            ),
////                          ),
//                        ),
//                      )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: CustomActionButton("Next", goToNextPage),
              )
            ],
          ),
        ),
      ),
    );
  }

  void goToNextPage() {
    validateEmail = false;
    hasError = false;
    invalidEmailMessage = "";
    if(emailController.text.length == 0 || emailController.text.isEmpty) {
      validateEmail = true;
      invalidEmailMessage = "Email Cannot be empty";
      hasError = true;
    }
    if(!Validator.ValidateEmail(emailController.text, true)){
      validateEmail = true;
      invalidEmailMessage = "Invalid Email Id";
      hasError = true;
    }

    if(hasError) {
      setState(() {});
    }
    else {

    }
  }
}

