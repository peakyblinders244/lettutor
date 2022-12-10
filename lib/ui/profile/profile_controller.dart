import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import '../../constants/constants.dart';
import '../../models/user_model.dart';
import '../../utils/date_time.dart';
import '../base/base_controller.dart';
import '../controllers/app_controller.dart';

class ProfileController extends BaseController{
  final _appController = Get.find<AppController>();
  final Map<String, TextEditingController> controllers = Map.fromEntries(
    [
      nameField,
      emailField,
      countryField,
      phoneField,
      birthdayField,
      levelField,
      //wantToLearnField
      studyScheduleField,
    ].map(
          (value) => MapEntry(
        value,
        TextEditingController(),
      ),
    ),
  );
  UserModel? get user => _appController.userModel.value;

  @override
  void onInit() {
    super.onInit();
    setUpDataProfile();
  }

  @override
  void onReloadData() {}

  void setUpDataProfile() {
    final _user = user ?? UserModel(birthday: DateTime(1990));

    controllers[nameField]?.text = _user.name;
    controllers[emailField]?.text = _user.email;
    controllers[countryField]?.text = _user.country;
    controllers[phoneField]?.text = _user.phone;
    controllers[birthdayField]?.text =  DateFormat(time1).format(_user.birthday);
    controllers[levelField]?.text = _user.level;
    controllers[studyScheduleField]?.text = _user.studySchedule;
  }
}