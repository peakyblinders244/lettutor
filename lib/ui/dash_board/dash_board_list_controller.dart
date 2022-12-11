import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../constants/constants.dart';
import '../../models/tutor.dart';
import '../../services/tutor_services.dart';
import '../base/base_controller.dart';

class DashBoardListController extends BaseController{
  final _tutorService = Get.find<TutorService>();

  RxList<Tutor> listTutor = <Tutor>[].obs;

  final listType = [
    'All',
    'English for kids',
    'English for Business',
    'Conversational',
    'STARTERS',
    'MOVERS',
    'FLYERS'
  ];
  final Map<String, bool> nationality = {
    'isVietNamese': false,
    'isNative': false
  };
  final List<String> listNation = [
    'Vietnamese',
    'Native',
  ];

  final Map<String, TextEditingController> controllers = Map.fromEntries(
    [nameField, dateField, dateStartField, dateEndField].map(
          (value) => MapEntry(
        value,
        TextEditingController(),
      ),
    ),
  );

  @override
  void onInit() {
    super.onInit();
    initData();
  }
  @override
  void onReloadData() {}

  void initData() async {
    final res = await _tutorService.getAllTutorByPage();
    listTutor.value =
        (res['tutors']['rows'] as List).map((e) => Tutor.fromJson(e)).toList();
  }
}