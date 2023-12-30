import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ulisesuwu/components/already_have_an_acount.dart';
import 'package:ulisesuwu/components/rounded__input_field.dart';
import 'package:ulisesuwu/components/rounded_button.dart';

import 'package:ulisesuwu/components/rounded_password_field.dart';
import 'package:ulisesuwu/screens/Login/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "Login uwu :3 xd",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SvgPicture.asset(
          "assets/icons/login.svg",
          height: size.height * 0.35,
        ),
        RoundedInputField(
          hintText: "Your Email",
          onchanged: (value) {},
        ),
        RoundedPasswordField(onChanged: (value){},
        ),
        RoundedButton(
          text: "login",
          press: (){},
        ),
         AlreadyHavenAnAccountCheck(
            press: (){}
        ),
      ],
    ),
    );
  }
}
