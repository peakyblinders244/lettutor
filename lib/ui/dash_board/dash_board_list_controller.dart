import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../constants/constants.dart';
import '../../models/tutor.dart';
import '../../services/tutor_services.dart';
import '../base/base_controller.dart';

class DashBoardListController extends BaseController {
  final _tutorService = Get.find<TutorService>();

  RxList<Tutor> listTutor = <Tutor>[].obs;
  RxString currentType = 'All'.obs;
  RxList<String> valueContriesSelected = <String>[].obs;

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
    'isVietNamese',
    'isNative',
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

  void search() async {
    try {
      print("search");
      final res = await _tutorService.getAllTutorBySearch(
          nationality: nationality,
          search: controllers[nameField]!.text,
          specialties: [
            // if (currentType.value != listType[0]) currentType.value,
          ]);
      listTutor.value =
          (res['rows'] as List).map((e) => Tutor.fromJson(e)).toList();
      print(listTutor);
      print("search end");
    } catch (e) {
      e.printError();
    }
  }

  void clearSearch() {
    controllers.forEach((key, value) {
      controllers[key]!.text = "";
    });
    valueContriesSelected.clear();
    nationality.forEach((key, value) {
      nationality[key] = false;
    });
    initData();
  }
}
