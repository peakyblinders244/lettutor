import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/title_string.dart';
import '../../../resources/font/font_text.dart';
import '../../../resources/gen/assets.gen.dart';

class SubLoginComponent extends StatelessWidget {
  final double sizeIcon = 40;

  const SubLoginComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            TitleString.orLoginContinueWith,
            style: text14.copyWith(
                color: const Color.fromRGBO(36, 38, 38, 1.0),
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.svg.facebookLogo.svg(width: sizeIcon, height: sizeIcon),
            const SizedBox(width: 40),
            Assets.svg.googleLogo.svg(width: sizeIcon, height: sizeIcon),
            const SizedBox(width: 40),
            Assets.svg.mobileLogo.svg(width: sizeIcon, height: sizeIcon),
          ],
        ),
        const SizedBox(height: 20),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  TitleString.noAccount,
                  style: text14.copyWith(
                      color: const Color.fromRGBO(36, 38, 38, 1.0),
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () => {},
                  child: Text(
                    style: text14.copyWith(
                        color: const Color.fromRGBO(54, 154, 232, 1.0),
                        fontWeight: FontWeight.w700),
                    TitleString.register,
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
