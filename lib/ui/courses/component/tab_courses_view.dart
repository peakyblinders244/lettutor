import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../constants/title_string.dart';
import '../../common/tab_bar_item_component.dart';
import '../courses_controller.dart';
import 'course_preview.dart';

class TabCourseView extends StatelessWidget {
  TabCourseView({Key? key, required this.controller}) : super(key: key);
  CoursesController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabBarItem(
                onTap: () {
                  controller.onTapInDexTabBarCourses(0);
                },
                title: TitleString.course,
                isSelecting: 0 == controller.index.value,
              ),
              SizedBox(width: 20),
              TabBarItem(
                onTap: () {
                  controller.onTapInDexTabBarCourses(1);
                },
                title: TitleString.ebook,
                isSelecting: 1 == controller.index.value,
              ),
              SizedBox(width: 20),
              TabBarItem(
                onTap: () {
                  controller.onTapInDexTabBarCourses(2);
                },
                title: TitleString.interactiveEbook,
                isSelecting: 2 == controller.index.value,
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            CoursePreview(),
            SizedBox(
              height: 20,
            ),
            CoursePreview()
          ],
        )
      ],
    );
  }
}
