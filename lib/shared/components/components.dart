import 'package:flutter/material.dart';

Widget defaultButton({
  BuildContext context,
  @required Function function,
  double h = 35,
  Color textColors,
  Color background,
  double width = 160,
  String text,
  bool withDecoration = true,
}) {
  return Container(
      width: width,
      height: h,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(color: textColors),
        ),
      ),
      decoration: withDecoration
          ? BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).highlightColor,
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(50),
              color: background,
            )
          : null);
}

Widget flatButton({
  @required Function function,
  Color textColors,
  Color background = Colors.blue,
  @required String text,
  bool withDecoration = true,
}) {
  return FlatButton(
    onPressed: function,
    child: Text(
      text,
      style: TextStyle(color: textColors, fontSize: 14),
    ),
  );
}

void showInSnackBar(String value, GlobalKey<ScaffoldState> key) {
  key.currentState.showSnackBar(new SnackBar(content: new Text(value)));
}

Widget exbantionList({
  String title,
  String subtitle,
  String textbody,
  String img,
}) {
  return ExpansionTile(
    title: ListTile(
      leading: Container(height: 30, child: Image.asset(img)),
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.grey),
      ),
    ),
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            textbody,
            textAlign: TextAlign.start,
          ),
        ),
      ),
    ],
  );
}
