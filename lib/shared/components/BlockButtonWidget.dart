import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlockButtonWidget extends StatelessWidget {
  BlockButtonWidget(
      {Key key,
       this.ic,
       this.isgrad,
       this.color,
       this.icColor,
       this.text,
       this.onPressed,
      this.padd})
      : super(key: key);
  bool isgrad = true;
  Color color;
  Color icColor;
  IconData ic;
  final Text text;

  // Icon
  final VoidCallback onPressed;
  EdgeInsetsGeometry padd =
      EdgeInsets.symmetric(horizontal: 120, vertical: 16);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPressed,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: color,
          gradient: isgrad == true
              ? LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF2EB62C),
                    Color(
                      0xFFABE098,
                    )
                  ],
                )
              : null,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 2,
                offset: Offset(0, 3))
          ],
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        // ignore: deprecated_member_use
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          
SizedBox(width: 10,),
            this.text,
          ],
        ),
      ),
    );
  }
}



class CustomError extends StatelessWidget {
  final FlutterErrorDetails errorDetails;

  const CustomError({
    Key key,
     this.errorDetails,
  })  : assert(errorDetails != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Padding(
          child: Text(
            "يوجد خطأ ما الرجاء المحاولة لاحقاَ",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          padding: const EdgeInsets.all(8.0),
        ),
        color: Colors.red,
        margin: EdgeInsets.zero,
      ),
    );
  }
}