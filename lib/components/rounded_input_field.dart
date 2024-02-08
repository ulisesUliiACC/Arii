import 'package:ulisesuwu/components/text_field_container.dart';
import 'package:ulisesuwu/constanst.dart';
import 'package:flutter/material.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onchanged;
  const RoundedInputField({
    super.key,
    required this.hintText, 
    this.icon =Icons.person,
    required this.onchanged, required Null Function(dynamic value) onChanged, required EdgeInsets margin
  });

  @override
  Widget build(BuildContext context) {
    return  TextFielContainer(
      child: TextField(
        onChanged: onchanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}