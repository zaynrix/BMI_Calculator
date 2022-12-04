import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/repository/brain_app.dart';
import 'package:bmi_calculator/modules/introductions/bmi_info.dart';
import 'package:bmi_calculator/modules/introductions/introductions.dart';
import 'package:bmi_calculator/shared/components/components.dart';

class Results extends StatefulWidget {
  final String status;
  final String longsents;
  final String res;
  const Results({this.longsents, this.res, this.status, Key key})
      : super(key: key);

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {

  List<Result> resTable =[
  Result (
    keystring: "Category",
    valueString: "BMI range - kg/m2",
    heder: true,
  ),
    Result (
    keystring: "Moderate Thinness",
    valueString: "16 - 17"
  ),  Result (
    keystring: "Mild Thinness",
    valueString: "17 - 18.5"
  ),  Result (
    keystring: "Normal",
    valueString: "18.5 - 25"
  ),  Result (
    keystring: "Overweight",
    valueString: "25 - 30"
  ),  Result (
    keystring: "Obese Class I",
    valueString: "30 - 35"
  ),
   Result (
    keystring: "Obese Class II",
    valueString: "35 - 40"
  ),
   Result (
    keystring: "Obese Class III",
    valueString: "> 40"
  ),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your BMI".toUpperCase(),
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color:
                            Theme.of(context).backgroundColor.withOpacity(1),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(5)),
               
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "${widget.res}",
                      style: TextStyle(
                          fontSize: 55, color: Theme.of(context).accentColor),
                    ),
                    Container(
                      // width: 200,
                      child: Text(
                        widget.longsents,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Your BMI is: ',
                              style: TextStyle(
                                  color: Theme.of(context).hintColor)),
                          TextSpan(
                              text: '${widget.status}',
                              style: TextStyle(
                                  color: Theme.of(context).accentColor)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
               padding: EdgeInsets.all(20.0),
              child: ListView.builder(
              itemCount: resTable.length,
              itemBuilder: (context, index) => 
                        
                 Table(
              // defaultVerticalAlignment: TableCellVerticalAlignment.top,
                      border: TableBorder.all(), // Allows to add a border decoration around your table
              children: [
                
                TableRow(
                  
                  decoration: BoxDecoration(
                    // ignore: unrelated_type_equality_checks
                    color: resTable[index].heder == true ? Theme.of(context).accentColor.withOpacity(0.3) : widget.status != resTable[index].keystring ? Theme.of(context).scaffoldBackgroundColor : Theme.of(context).accentColor
                  ),
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(resTable[index].keystring,style: TextStyle(fontWeight: resTable[index].heder == true ? FontWeight.bold :FontWeight.normal ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(resTable[index].valueString,style:TextStyle(fontWeight: resTable[index].heder == true ? FontWeight.bold :FontWeight.normal )),
                  ),
                
                ]),
                 ])),
            ),
          )
          ,
           SizedBox(
                  height: 15,
                ),
          Text(
            'Do you want to know more about BMI!',
          ),
          SizedBox(
            height: 15,
          ),
          defaultButton(
              context: context,
              background: Theme.of(context).accentColor,
              width: 150,
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BMIinformation()),
                );
              },
              text: "Yes please!",
              textColors: Colors.white),
          SizedBox(
            height: 5,
          ),
          flatButton(
            function: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => InroductionsScreen()),
                (Route<dynamic> route) => false,
              );
            },
            text: "Back to home",
          ),
          ],
      ),
    );
  }
}
