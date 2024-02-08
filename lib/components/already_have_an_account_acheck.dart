import 'package:flutter/material.dart';
import 'package:ulisesuwu/constanst.dart';


class AlreadyHavenAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHavenAnAccountCheck({
    super.key, 
    this.login= true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children:<Widget> [
       Text(
          login ? "Don't have an Account ? " : "Already have an count",
         style: const TextStyle(color:kPrimaryColor),
       ),
       GestureDetector(
         onTap: press ,
         child:  Text(
           login ?"Sin up": "Sing In",
           style: const TextStyle(
             color:kPrimaryColor,
             fontWeight:FontWeight.bold,
           ),
         ),
       ),
     ],
            );
  }
}
