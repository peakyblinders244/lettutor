import 'package:get/get_navigation/src/routes/get_route.dart';


import '../ui/forgot_password/forgot_password_binding.dart';
import '../ui/forgot_password/forgot_password_page.dart';
import '../ui/login/login_page.dart';
import '../ui/login/login_page_binding.dart';
import '../ui/register/register_page.dart';
import '../ui/register/register_page_binding.dart';

class AppRoutes {
  static String LOGIN = '/login';
  static String REGISTER = '/register';
  static String FORGOT_PASSWORD = '/forgot_password';
// static String PROFILE = '/profile';
// static String DASHBOARD = '/dashboard';
// static String CHANGE_PASSWORD = '/change_password';
// static String TUTOR_DETAIL = '/tutor_detail';
}

class AppPages {
  static final pages = <GetPage>[
    GetPage(
        name: AppRoutes.LOGIN,
        page: () => const LoginPage(),
        binding: LoginPageBinding()),
    GetPage(
        name: AppRoutes.REGISTER,
        page: () => const RegisterPage(),
        binding: RegisterPageBinding()),
    GetPage(
        name: AppRoutes.FORGOT_PASSWORD,
        page: () => const ForgotPasswordPage(),
        binding: ForgotPasswordBinding()),
  ];
}
