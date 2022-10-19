import 'package:flutter/cupertino.dart';

import '../../../constants/title_string.dart';
import '../../../resources/font/font_text.dart';

class LoginTitleComponent extends StatelessWidget{
  const LoginTitleComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(TitleString.loginTitle,
              style: text28.copyWith(
                color: const Color.fromRGBO(0, 113, 240, 1),
                fontWeight: FontWeight.w700
              ),
              textAlign: TextAlign.center,
            ),
          ),
        Text(
          TitleString.loginDescription,
          style: text18.copyWith(
              color: const Color.fromRGBO(42, 52, 83, 1),
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}