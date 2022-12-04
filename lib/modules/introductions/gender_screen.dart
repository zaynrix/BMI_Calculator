import 'package:flutter/material.dart';
import 'package:bmi_calculator/modules/introductions/weight_screen.dart';
import 'package:bmi_calculator/shared/components/components.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({Key key}) : super(key: key);

  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  int gender = 0;
  bool isgender = true;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Select your Gender !",
              style:
                  TextStyle(fontSize: 25, color: Theme.of(context).accentColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            gender = 1;
                            isgender = false;

                            gender == 1 ? print("male") : "";
                            print(gender);
                          },
                        );
                      },
                      child: Container(
                        width: 140,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2.0,
                              color: gender == 1
                                  ? Theme.of(context).accentColor
                                  : Colors.transparent),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: gender == 1
                              ? Theme.of(context).accentColor.withOpacity(0.3)
                              : Theme.of(context)
                                  .scaffoldBackgroundColor
                                  .withOpacity(1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/male.png",
                                  height: 130,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: gender == 1
                                          ? FontWeight.w600
                                          : FontWeight.normal),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ], //059-7879965
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = 2;
                          print(gender);
                          isgender = false;
                          // ignore: unnecessary_statements
                          gender == 2 ? print("Female") : null;
                        });
                      },
                      child: Stack(
                        children: [
                          Container(
                              width: 140,
                              height: 200,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2.0,
                                      color: gender == 2
                                          ? Theme.of(context).accentColor
                                          : Colors.transparent),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  color: gender == 2
                                      ? Theme.of(context)
                                          .accentColor
                                          .withOpacity(0.3)
                                      : Theme.of(context)
                                          .scaffoldBackgroundColor
                                          .withOpacity(1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        "assets/images/female.png",
                                        height: 130,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Female",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: gender == 2
                                                ? FontWeight.w600
                                                : FontWeight.normal),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            defaultButton(
                context: context,
                background: gender == 0
                    ? Theme.of(context).scaffoldBackgroundColor
                    : Theme.of(context).accentColor,
                function: () {
                  setState(() {});
                  if (isgender == true) {
                    print("can't do it");
                    showInSnackBar("Please, Select gender!", _scaffoldKey);
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeightScreen(gender)));
                  }
                },
                text: "Next",
                width: 120,
                textColors: gender == 0 ? Colors.black : Colors.white),
          ],
        ),
      ),
    );
  }
}
