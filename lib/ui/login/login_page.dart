import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:letutor/ui/login/login_page_controller.dart';

import '../../constants/title_string.dart';
import '../../resources/gen/assets.gen.dart';
import '../../widgets/appBar/app_bar_custom.dart';
import 'component/login_component.dart';
import 'component/login_title_component.dart';
import 'component/sub_login_component.dart';

class LoginPage extends GetWidget<LoginPageController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: ListView(
        children: <Widget>[
          Assets.images.login.image(),
          LoginTitleComponent(title: TitleString.loginTitle.tr),
          const LoginComponent(),
          const SubLoginComponent(),
        ],
      ),
    );
  }
}
