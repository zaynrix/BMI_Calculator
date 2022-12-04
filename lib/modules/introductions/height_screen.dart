import 'package:flutter/material.dart';
import 'package:bmi_calculator/modules/introductions/result_screen.dart';
import 'package:bmi_calculator/repository/brain_app.dart';
import 'package:bmi_calculator/shared/components/components.dart';
import 'package:height_slider/height_slider.dart';

class HeightScreen extends StatefulWidget {
  final double w;
  const HeightScreen({Key key, this.w}) : super(key: key);

  @override
  _HeightScreenState createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  int height = 170;

  initState() {
    super.initState();
    print(widget.w);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "What's your Height",
            style:
                TextStyle(fontSize: 25, color: Theme.of(context).accentColor),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                height: 350,
                child: HeightSlider(
                  // width: 300,

                  height: height,
                  onChange: (val) {
                    print(val);
                    setState(() => height = val);
                  },
                  // unit: 'cm', // optional
                ),
              ),
            ),
          ),
          defaultButton(
              context: context,
              background: Theme.of(context).accentColor,
              function: () {
                setState(() {});
                print(height);
                print(widget.w.toInt());
                CalculatorBrain cal =
                    CalculatorBrain(height: height, weight: widget.w.toInt());
                print(cal.height);
                print(cal.weight);
                String bminum = cal.calculateBMI();
                String longsen = cal.getInterpretation();
                String status = cal.getResult2();
                print(bminum);
                print(longsen);
                print(status);

                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Results(
                      longsents: longsen,
                      status: status,
                      res: bminum,
                    ),
                  ),
                  (Route<dynamic> route) => false,
                );
              },
              text: "Les's Calculate",
              width: 150,
              textColors: Colors.white),
        ],
      ),
    );
  }
}
