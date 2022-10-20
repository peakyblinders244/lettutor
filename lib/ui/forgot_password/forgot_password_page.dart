import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../constants/title_string.dart';
import '../../resources/font/font_text.dart';
import '../../widgets/app_bar/app_bar_custom.dart';
import '../login/component/text_field_area_component.dart';
import 'forgot_password_controller.dart';

class ForgotPasswordPage extends GetWidget<ForgotPasswordController> {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body:Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget> [
            Text(
              TitleString.resetPassword,
              style: text28.copyWith(
                  color: const Color.fromRGBO(36, 38, 38, 1.0),
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            Text(
              TitleString.pleaseEnterYourEmailToSearchYourAccount,
              style: text14.copyWith(
                  color: const Color.fromRGBO(36, 38, 38, 1.0),
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextFieldAreaComponent(text:TitleString.loginFormEmail ,textHint: '',isPassword: false),
            Column(
              children: [
                OutlinedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: () => {},
                    child: Text(TitleString.confirm,
                        style: const TextStyle(color: Colors.white)))
              ],
            )

          ],
        ),
      )
    );
  }
}
