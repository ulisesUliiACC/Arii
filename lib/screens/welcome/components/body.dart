import 'package:flutter/material.dart';
import 'package:ulisesuwu/constanst.dart';
import 'package:ulisesuwu/screens/Login/login_sreen.dart';
import 'package:ulisesuwu/screens/welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        /*  depende de cambio ->SingleChildScrollView*/
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Welcome to edu ulii uwu",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.55,
          ),
          SizedBox(height: size.height * 0.04),
          RoundedButton(
            text: "Login",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
          RoundedButton(
            text: "Register ",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {},
          ),
        ],
      ),
    );
  }
}
