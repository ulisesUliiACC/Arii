import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ulisesuwu/components/already_have_an_account_acheck.dart';
import 'package:ulisesuwu/components/rounded_input_field.dart';
import 'package:ulisesuwu/components/rounded_button.dart';
import 'package:ulisesuwu/components/rounded_password_field.dart';

import 'package:ulisesuwu/screens/Login/components/background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Background(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const Text(
                        "Login uwu :3 xd",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      SvgPicture.asset(
                        "assets/icons/login.svg",
                        height: constraints.maxHeight * 0.35, // Ajusta el tamaño de la imagen
                      ),
                      const SizedBox(height: 15),
                      RoundedInputField(
                        hintText: "Your Email",
                        onChanged: (value) {},
                        margin: const EdgeInsets.symmetric(), onchanged: (String value) {  },
                      ),
                      RoundedPasswordField(onChanged: (value) {}),
                      RoundedButton(
                        text: "login",
                        press: () {},
                      ),
                      const SizedBox(height: 20),
                      AlreadyHavenAnAccountCheck(press: () {}),
                    ],
                  ),
                ),
              ),
            ),
          );
                },
      ),
    );
  }
}