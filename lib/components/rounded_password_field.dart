import 'package:flutter/material.dart';
import 'package:ulisesuwu/components/text_field_container.dart';
import 'package:ulisesuwu/constanst.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    super.key, 
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return  TextFielContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
      
        decoration: const InputDecoration(
          hintText: "Password",
          
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none,
        ),
      ),
      );
  }
}
