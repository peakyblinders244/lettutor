import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DashBoardListController extends GetxController{
  final listType = [
    'All',
    'English for kids',
    'English for Business',
    'Conversational',
    'STARTERS',
    'MOVERS',
    'FLYERS'
  ];
  @override
  void onInit() {
    super.onInit();
  }
  @override
  void onReloadData() {}
}