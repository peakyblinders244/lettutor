import 'package:get/get_navigation/src/routes/get_route.dart';

import '../ui/login/login_page.dart';
import '../ui/login/login_page_binding.dart';

class AppRoutes {
  static String LOGIN = '/login';
  // static String FORGOT_PASSWORD = '/forgot_password';
  // static String PROFILE = '/profile';
  // static String DASHBOARD = '/dashboard';
  // static String CHANGE_PASSWORD = '/change_password';
  // static String TUTOR_DETAIL = '/tutor_detail';
}

class AppPages {
  static final pages = <GetPage>[GetPage(
      name: AppRoutes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginPageBinding())];
}