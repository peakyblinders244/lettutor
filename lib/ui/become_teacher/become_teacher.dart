import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../widgets/app_bar/app_bar_custom.dart';
import 'become_teacher_controller.dart';

class BecomeTeacher extends GetWidget<BecomeTeacherController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(isHaveDrawer: controller.isHaveDrawer),
      body: Center(
        child: Container(
          child: Text('Become Teacher'),
        ),
      ),
    );
  }
}
