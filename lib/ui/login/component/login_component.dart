import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letutor/ui/login/component/text_field_area_component.dart';

import '../../../constants/title_string.dart';

class LoginComponent extends StatelessWidget {
  const LoginComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldAreaComponent(
            text: TitleString.loginFormEmail,
            textHint: TitleString.loginFormHintEmail),
        const SizedBox(height: 20),
        TextFieldAreaComponent(
            text: TitleString.loginFormPassword,
            textHint: TitleString.loginFormHintPassword,
            isPassword: true),
        InkWell(
          onTap: () => {},
          child: Text(
            TitleString.loginForgotPassword,
            textAlign: TextAlign.left,
          ),
        ),
        OutlinedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)))),
            onPressed: () => {},
            child: Text(TitleString.loginButton,
                style: const TextStyle(color: Colors.white)))
      ],
    );
  }
}
