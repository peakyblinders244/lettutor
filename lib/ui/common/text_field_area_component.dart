import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Column TextFieldAreaComponent({
  required String text,
  required String textHint,
  bool isPassword = false,
  Widget? icon,
  TextEditingController? controller,
}) {
  EdgeInsets padding =
      const EdgeInsets.only(left: 20, bottom: 5, top: 5, right: 20);

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: padding,
        child: Text(text),
      ),
      Padding(
        padding: padding,
        child: Column(
          children: [
            TextFormField(
              controller: controller,
              obscureText: isPassword,
              decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  suffixIcon: icon,
                  hintText: textHint),
            ),
          ],
        ),
      ),
    ],
  );
}
