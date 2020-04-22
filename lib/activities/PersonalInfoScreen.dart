import 'package:dkatalis_demo/Constants/Constants.dart';
import 'package:dkatalis_demo/activities/ScheduleVideoCallScreen.dart';
import 'package:dkatalis_demo/widgets/CustomActionButton.dart';
import 'package:dkatalis_demo/widgets/ProgressIndicatorMenu.dart';
import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatefulWidget {
  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {

//  ------------------- Private Variables ---------------------

  String selectedIncome = null;
  Item selectedGoal = null;
  String selectedExpense = null;

  List<Item> items = <Item>[
    const Item('International Vacation',Icon(Icons.flight)),
    const Item('House',Icon(Icons.home)),
    const Item('Car',Icon(Icons.directions_car)),
    const Item('Mobile Phone',Icon(Icons.mobile_screen_share)),
    const Item('Gift',Icon(Icons.card_giftcard)),
  ];

//  ----------------------- Overide Methods ------------------
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
                Container(
                  height: 200,
                  child: Center(child: ProgressIndicatorMenu(2)),
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Personal Information",
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
                          Expanded(
                            child: Text(
                              "Please fill in the information below and your goal for digital saving.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),
                            ),
                          )

                        ],
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0) //         <--- border radius here
                            ),
                            color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0, right: 8.0, top: 8.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                      "Goal For Activation",
                                    style: TextStyle(
                                      color: Constants.grey
                                    ),
                                  )
                                ],
                              ),
                              DropdownButtonFormField(
                                value: selectedGoal,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(0),
                                  hintText:  "-Choose option-",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                  )
                                ),
                                icon: Icon(Icons.keyboard_arrow_down),
                                items: items.map((Item user) {
                                  return  DropdownMenuItem<Item>(
                                    value: user,
                                    child: Row(
                                      children: <Widget>[
                                        user.icon,
                                        SizedBox(width: 10,),
                                        Text(
                                          user.name,
                                          style:  TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value){
                                  setState(() {
                                    selectedGoal = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0) //         <--- border radius here
                            ),
                            color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0, right: 8.0, top: 8.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Monthly income",
                                    style: TextStyle(
                                        color: Constants.grey
                                    ),
                                  )
                                ],
                              ),
                              DropdownButtonFormField(
                                value: selectedIncome,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(0),
                                    hintText:  "-Choose option-",
                                    hintStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                    )
                                ),
                                icon: Icon(Icons.keyboard_arrow_down),
                                items: [
                                  DropdownMenuItem(
                                    value: "> 20,000",
                                    child: Text(
                                      "> 20,000",
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "> 50,000",
                                    child: Text(
                                      "> 50,000",
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "> 1,00,000",
                                    child: Text(
                                      "> 1,00,000",
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "> 5,00,000",
                                    child: Text(
                                      "> 5,00,000",
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "> 10,00,000",
                                    child: Text(
                                      "> 10,00,000",
                                    ),
                                  ),
                                ],
                                onChanged: (value){
                                  setState(() {
                                    selectedIncome = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0) //         <--- border radius here
                            ),
                            color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0, right: 8.0, top: 8.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Monthly Expense",
                                    style: TextStyle(
                                        color: Constants.grey
                                    ),
                                  )
                                ],
                              ),
                              DropdownButtonFormField(
                                value: selectedExpense,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(0),
                                    hintText:  "-Choose option-",
                                    hintStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                    )
                                ),
                                icon: Icon(Icons.keyboard_arrow_down),
                                items: [
                                  DropdownMenuItem(
                                    value: "> 10,000",
                                    child: Text(
                                      "> 10,000",
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "> 20,000",
                                    child: Text(
                                      "> 20,000",
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "> 30,000",
                                    child: Text(
                                      "> 30,000",
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "> 40,000",
                                    child: Text(
                                      "> 40,000",
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "> 50,000",
                                    child: Text(
                                      "> 50,000",
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "< 50,000",
                                    child: Text(
                                      "< 50,000",
                                    ),
                                  ),
                                ],
                                onChanged: (value){
                                  setState(() {
                                    selectedExpense = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: CustomActionButton("Next", goToNextPage),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

// ------------------------- Private Methods ---------------------------

  void goToNextPage() {
    if(null != selectedExpense && null != selectedIncome && null != selectedGoal) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScheduleVideoCallScreen()));
    }
  }
}

class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
}
