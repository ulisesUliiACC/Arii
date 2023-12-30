import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
   required this.child,

    
  });


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
        Positioned(
          top:0,
          left:0,
          child: Image.asset(
            "assets/images/main_top.png",
            width: size.width * 0.50, /*tamaño de las imagenes */
          ),
        ),
        Positioned(
          bottom:0,
          right: 0,
          child: Image.asset(
            "assets/images/login_bottom.png",
            width: size.width * 0.65,
          ),
        ),
        child,
      ]),
    );
  }
}