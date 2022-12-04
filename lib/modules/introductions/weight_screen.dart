import 'package:flutter/material.dart';
import 'package:bmi_calculator/repository/brain_app.dart';
import 'package:bmi_calculator/modules/introductions/height_screen.dart';
import 'package:bmi_calculator/shared/components/components.dart';
import 'package:weight_slider/weight_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'package:weight_slider/weight_slider.dart';
class WeightScreen extends StatefulWidget {
int getner;

   WeightScreen(this.getner ,{Key key}) : super(key: key);

  @override
  _WeightScreenState createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  int weight = 70;
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
            "What's your Weight",
            style:
                TextStyle(fontSize: 25, color: Theme.of(context).accentColor),
          ),
       widget.getner == 2 ? Image.asset(
                                        "assets/images/female.png",
                                        height: 150,
                                        fit: BoxFit.fill,
                                        width: weight.toDouble(),
                                      ) 
                                      : Image.asset(
                                        "assets/images/male.png",
                                        height: 150,
                                        width: weight.toDouble(),
                                        fit: BoxFit.fill,
                                      ) , 
                                      SizedBox(
                                        height: 5,
                                      ),
         
          Center(
            child: Container(
              // color: Theme.of(context).accentColor,
              // height: 200,
              child: WeightSlider(
                // width: 300,
                weight: weight,
                minWeight: 30,
                maxWeight: 120,
                onChange: (val) {
                  print(val);
                  setState(() => this.weight = val);
                },

                // unit: 'kg', // optional
              ),
            ),
          ),
          defaultButton(
              context: context,
              background: Theme.of(context).accentColor,
              function: () {
                setState(() {});
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HeightScreen(w: weight.toDouble())));
              },
              text: "Next",
              width: 120,
              textColors: Colors.white),
        ],
      ),
    );
  }
}
