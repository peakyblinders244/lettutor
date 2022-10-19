import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:letutor/ui/register/register_page_controller.dart';

import '../../constants/title_string.dart';
import '../../resources/gen/assets.gen.dart';
import '../../widgets/appBar/app_bar_custom.dart';
import '../login/component/login_title_component.dart';

class RegisterPage extends GetWidget<RegisterPageController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: ListView(
        children: <Widget>[
          Assets.images.login.image(),
          LoginTitleComponent(title: TitleString.register),

        ],
      ),
    );
  }
}
