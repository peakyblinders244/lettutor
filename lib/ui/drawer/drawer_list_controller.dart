import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../models/user_model.dart';
import '../base/base_controller.dart';
import '../controllers/app_controller.dart';

class DrawerListController extends BaseController {
  final _appController = Get.find<AppController>();
  UserModel? get user => _appController.userModel.value;

  @override
  void onInit() {
    super.onInit();
  }
}
