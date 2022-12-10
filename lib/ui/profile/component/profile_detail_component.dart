import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:letutor/config/app_pages.dart';
import 'package:letutor/ui/profile/component/want_to_learn_list_component.dart';
import 'package:letutor/ui/profile/profile_controller.dart';

import '../../../constants/constants.dart';
import '../../../constants/title_string.dart';
import '../../common/button_custom_component.dart';
import '../../common/text_form_field_custom_component.dart';
import 'field_infor_person.dart';

class ProfileDetailComponent extends StatelessWidget {
  ProfileDetailComponent({super.key, required this.controller});

  final ProfileController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FieldInforPerson(
            title: TitleString.name,
            isImportant: true,
            child: TextFormFieldCustomComponent(
                onChanged: (value) => {},
                controller: controller.controllers[nameField],
                hintText: ''),
          ),
          SizedBox(height: 15),
          FieldInforPerson(
            title: TitleString.email,
            isImportant: true,
            child: TextFormFieldCustomComponent(
                onChanged: (value) => {},
                controller:
                    controller.controllers[emailField],
                hintText: ''),
          ),
          SizedBox(height: 15),
          FieldInforPerson(
            title: TitleString.country,
            isImportant: true,
            child: TextFormFieldCustomComponent(
                onChanged: (value) => {},
                controller:
                    controller.controllers[countryField],
                hintText: ''),
          ),
          SizedBox(height: 15),
          FieldInforPerson(
            title: TitleString.phoneNumber,
            isImportant: true,
            child: TextFormFieldCustomComponent(
                onChanged: (value) => {},
                controller:
                    controller.controllers[phoneField],
                hintText: ''),
          ),
          SizedBox(height: 15),
          FieldInforPerson(
            title: TitleString.birthday,
            isImportant: true,
            child: TextFormFieldCustomComponent(
                onChanged: (value) => {},
                controller:
                    controller.controllers[birthdayField],
                hintText: ''),
          ),
          SizedBox(height: 15),
          FieldInforPerson(
            title: TitleString.level,
            isImportant: true,
            child: TextFormFieldCustomComponent(
                onChanged: (value) => {},
                controller:
                    controller.controllers[levelField],
                hintText: ''),
          ),
          SizedBox(height: 15),
          FieldInforPerson(
            title: TitleString.wantToLearn,
            isImportant: true,
            child: WantToLearnListComponent(),
          ),
          SizedBox(height: 15),
          FieldInforPerson(
            title: TitleString.schedule,
            isImportant: true,
            child: TextFormFieldCustomComponent(
                onChanged: (value) => {},
                controller: controller
                    .controllers[studyScheduleField],
                hintText: ''),
          ),
          SizedBox(height: 15),
          Center(
            child: ButtonCustomComponent(
              title: TitleString.confirm,
              onPressed: () => {Get.toNamed(AppRoutes.DRAWER)},
            ),
          ),
        ],
      ),
    );
  }
}
