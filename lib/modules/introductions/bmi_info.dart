import 'package:flutter/material.dart';
import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:bmi_calculator/shared/components/components.dart';

class BMIinformation extends StatefulWidget {
  const BMIinformation({Key key}) : super(key: key);

  @override
  _BMIinformationState createState() => _BMIinformationState();
}

class _BMIinformationState extends State<BMIinformation> {
  List<BMI> data = [
    BMI(
        title: "Body Mass index (BMI)",
        subtitle: "Mesure of body weight based on your weight and height",
        textBody:
            "BMI is an inexpensive and easy screening method for weight category—underweight, healthy weight, overweight, and obesity.",
        img: "assets/images/body_mass.png"),
    BMI(
        title: "How is BMI used",
        subtitle: "BMI can be a screening tool",
        textBody:
            "To determine if BMI is a health risk, a healthcare provider performs further assessments.",
        img: "assets/images/body_mass.png"),
    BMI(
        title: "Why is BMI used to measure overweight?",
        subtitle: "BMI calculation requires only height and weight",
        textBody:
            "BMI is an inexpensive and easy tool. To see the formula based on either kilograms and meters or pounds and inches.",
        img: "assets/images/body_mass.png"),
    BMI(
        title: "Ways to assess excess body fatness besides BMI",
        subtitle: "Other methods to measure body fatness",
        textBody:
            "skinfold thickness measurements (with calipers), underwater weighing, bioelectrical impedance, dual-energy x-ray absorptiometry (DXA), and isotope dilution",
        img: "assets/images/body_mass.png"),
    BMI(
        title: "How is BMI interpreted for adults?",
        subtitle: "For adults 20 years old and older",
        textBody:
            "BMI is interpreted using standard weight status categories. These categories are the same for men and women of all body types and ages",
        img: "assets/images/body_mass.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => exbantionList(
              title: data[index].title,
              subtitle: data[index].subtitle,
              textbody: data[index].textBody,
              img: data[index].img),
        ));
  }
}
