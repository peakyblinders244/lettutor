import 'package:get/get_navigation/src/routes/get_route.dart';

import '../ui/course_detail/course_detail.dart';
import '../ui/course_detail/course_detail_binding.dart';
import '../ui/dash_board/dash_board_binding.dart';
import '../ui/dash_board/dash_board_list.dart';
import '../ui/forgot_password/forgot_password_binding.dart';
import '../ui/forgot_password/forgot_password.dart';
import '../ui/login/login.dart';
import '../ui/login/login_binding.dart';
import '../ui/register/register.dart';
import '../ui/register/register_binding.dart';

class AppRoutes {
  static String LOGIN = '/login';
  static String REGISTER = '/register';
  static String FORGOT_PASSWORD = '/forgot_password';

// static String PROFILE = '/profile';
// static String DASHBOARD = '/dashboard';
// static String CHANGE_PASSWORD = '/change_password';
  static String COURSE_DETAIL = '/course_detail';
  static String DASH_BOARD_LIST = '/dash_board_list';
}

class AppPages {
  static final pages = <GetPage>[
    GetPage(
        name: AppRoutes.LOGIN,
        page: () => Login(),
        binding: LoginPageBinding()),
    GetPage(
        name: AppRoutes.REGISTER,
        page: () => Register(),
        binding: RegisterBinding()),
    GetPage(
        name: AppRoutes.FORGOT_PASSWORD,
        page: () => ForgotPassword(),
        binding: ForgotPasswordBinding()),
    GetPage(
        name: AppRoutes.DASH_BOARD_LIST,
        page: () => DashBoardList(),
        binding: DashBoardBinding()),
    GetPage(
        name: AppRoutes.COURSE_DETAIL,
        page: () => CourseDetail(),
        binding: CourseDetailBinding()),
  ];
}
