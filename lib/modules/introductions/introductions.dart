import 'package:bmi_calculator/shared/components/BlockButtonWidget.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/repository/theme.dart';
import 'package:bmi_calculator/modules/introductions/bmi_info.dart';
import 'package:bmi_calculator/repository/setting_repositort.dart';
import 'package:bmi_calculator/shared/components/components.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/svg.dart';

import 'gender_screen.dart';

class InroductionsScreen extends StatefulWidget {
  const InroductionsScreen({Key key}) : super(key: key);

  @override
  _InroductionsScreenState createState() => _InroductionsScreenState();
}

class _InroductionsScreenState extends State<InroductionsScreen> {
    final String assetName = 'assets/images/logo.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              color: Colors.black,
              icon: Theme.of(context).brightness == Brightness.dark
                  ? Icon(
                      Icons.brightness_3,
                      color: Colors.grey,
                    )
                  : Icon(
                      Icons.brightness_2,
                      color: Colors.black,
                    ),
              onPressed: () {
                if (Theme.of(context).brightness == Brightness.dark) {
                  setBrightness(Brightness.light);
                  DynamicTheme.of(context).setBrightness(Brightness.light);
                } else {
                  setBrightness(Brightness.dark);
                  DynamicTheme.of(context).setBrightness(Brightness.dark);
                }
              }),
        ],
      ),
      body: Stack(
        children: [
          new Positioned(
            top: MediaQuery.of(context).size.width / 19.22, //230.0,
            bottom: MediaQuery.of(context).size.width / 0.7,
//sdasdasdas
            child: new Container(
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.height / 5,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).accentColor,
              ),
                child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ),
            ),
          ),
          new Positioned(
            left: MediaQuery.of(context).size.width / 1.10, //230.0,
            bottom: MediaQuery.of(context).size.width / 1,

            child: new Container(
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.height / 5,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          new Positioned(
            left: MediaQuery.of(context).size.width / 1.1, //230.0,
            top: MediaQuery.of(context).size.width / 0.8, //40.0,
            child: new Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.height / 4,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          new Positioned(
            right: MediaQuery.of(context).size.width / 1.05, //230.0,
            bottom: MediaQuery.of(context).size.width / 0.9, //40.0,
            child: new Container(
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.height / 8,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).accentColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
            ),
          ),
          new Positioned(
            left: MediaQuery.of(context).size.width / 1.2, //230.0,
            bottom: MediaQuery.of(context).size.width / 2.9, //40.0,
            child: new Container(
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.height / 20,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).accentColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).backgroundColor,
                  ),
                ),
              ),
            ),
          ),
          // here
          new Positioned(
            left: MediaQuery.of(context).size.width / 8.9, //230.0,
            bottom: MediaQuery.of(context).size.width / 6.9, //40.0,
            child: new Container(
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.height / 8,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).accentColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ),
            ),
          ),
          new Positioned(
            left: MediaQuery.of(context).size.width / 8.9, //230.0,
            bottom: MediaQuery.of(context).size.width / 2.9, //40.0,
            child: new Container(
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.height / 20,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).accentColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
            ),
          ),
          new Positioned(
            left: MediaQuery.of(context).size.width / 1.3, //230.0,
            bottom: MediaQuery.of(context).size.width / 10.9, //40.0,
            child: new Container(
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.height / 20,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          // // ),
          new Positioned(
            right: MediaQuery.of(context).size.width / 1.16, //230.0,
            top: MediaQuery.of(context).size.width / 1.5, //40.0,
            child: new Container(
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.height / 20,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).indicatorColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        // width: 250,
                        // height: 220,
                        child: SvgPicture.asset(assetName ,cacheColorFilter:true,color: Colors.red,            matchTextDirection: true,
),)
                  ],
                ),
                Column(
                  children: [
                  Row(
                children: [
                  Expanded(
                    child: BlockButtonWidget(
                      padd: EdgeInsets.symmetric(horizontal: 5),


                      icColor: Colors.green,
                      text: Text(
                        "Let's Strat !",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      color: Theme.of(context).accentColor,
                      isgrad: false,
                      onPressed: () {
                        print("print");
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GenderScreen()),
                          );
                      },
                    ),
                  ),
                 
                ],
              ),
                  SizedBox(
                      height: 30,
                    ),   Row(
                children: [
                  Expanded(
                    child: BlockButtonWidget(
                      padd: EdgeInsets.symmetric(horizontal: 5),


                      text: Text(
                        "Instructions",
                        style: TextStyle(
                            fontSize: 20,
                            color:  Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      color:  Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(1),
                      isgrad: false,
                      onPressed: () {
                        print("print");
                   Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BMIinformation()),
                        );
                      },
                    ),
                  ),
                ],
              ),




                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
