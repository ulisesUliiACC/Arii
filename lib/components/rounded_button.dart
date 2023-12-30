import 'package:flutter/material.dart';
import '../constanst.dart';


class RoundedButton extends StatelessWidget {
  final String text;
  final Function? press; // Change the type to Function?
  final Color color, textColor;

  const RoundedButton({super.key, 
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20), /*espacio entre los dos botones login y register */
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),/*borde del boton */
        child: TextButton(
          onPressed: press as void Function()?,
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
