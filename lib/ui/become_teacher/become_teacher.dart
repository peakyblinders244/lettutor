import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../constants/constants.dart';
import '../../constants/title_string.dart';
import '../../resources/gen/assets.gen.dart';
import '../../widgets/app_bar/app_bar_custom.dart';
import '../common/circle_box.dart';
import '../common/text_form_field_custom_component.dart';
import 'become_teacher_controller.dart';
import 'component/header_become_teacher_component.dart';
import 'component/select_major_component.dart';
import 'component/select_targert_student_component.dart';

class BecomeTeacher extends GetWidget<BecomeTeacherController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(isHaveDrawer: controller.isHaveDrawer),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderBecomeTeacherComponent(),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(TitleString.basicInformation,
                      style: TextStyle(fontSize: 20)),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: CircleBox(
                        size: Get.width / 3,
                        child: Assets.images.people.image()),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Get.width * 2 / 3 - 25,
                        child: TextFormFieldCustomComponent(
                            radius: 20,
                            onChanged: (value) {},
                            controller: controller.controllers[name],
                            hintText: TitleString.tutorName),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: Get.width * 2 / 3 - 25,
                        child: TextFormFieldCustomComponent(
                            radius: 20,
                            onChanged: (value) {},
                            controller: controller.controllers[country],
                            hintText: TitleString.iComeFrom),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: Get.width * 2 / 3 - 25,
                        child: TextFormFieldCustomComponent(
                            radius: 20,
                            onChanged: (value) {},
                            controller: controller.controllers[country],
                            hintText: TitleString.dateOfBirth),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(TitleString.cv, style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: Get.width - 25,
                    child: TextFormFieldCustomComponent(
                        radius: 20,
                        onChanged: (value) {},
                        controller: controller.controllers[interests],
                        hintText: TitleString.interests),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: Get.width - 25,
                    child: TextFormFieldCustomComponent(
                        radius: 20,
                        onChanged: (value) {},
                        controller: controller.controllers[education],
                        hintText: TitleString.education),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: Get.width - 25,
                    child: TextFormFieldCustomComponent(
                        radius: 20,
                        onChanged: (value) {},
                        controller: controller.controllers[experience],
                        hintText: TitleString.experience),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: Get.width - 25,
                    child: TextFormFieldCustomComponent(
                        radius: 20,
                        onChanged: (value) {},
                        controller: controller.controllers[profession],
                        hintText: TitleString.currentOrPreviousOccupation),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(TitleString.moreCertifications)),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(TitleString.languages, style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: Get.width - 25,
                    child: TextFormFieldCustomComponent(
                        radius: 20,
                        onChanged: (value) {},
                        controller: controller.controllers[languages],
                        hintText: TitleString.languages),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(TitleString.aboutTeaching,
                      style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: Get.width - 25,
                    child: TextFormFieldCustomComponent(
                        radius: 20,
                        onChanged: (value) {},
                        controller: controller.controllers[bio],
                        hintText: TitleString.bio),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(TitleString.IamTheBestAtTeachingStudents,
                      style: TextStyle(fontSize: 14)),
                ],
              ),
              SelectTargetStudentComponent(controller: controller),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(TitleString.myMajorIs, style: TextStyle(fontSize: 14)),
                ],
              ),
              SelectMajorComponent(controller: controller),
              TextButton(
                onPressed: () {},
                child: Text(TitleString.addVideoIntro),
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {},
                child: Text(TitleString.confirm),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
