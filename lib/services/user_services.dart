import '../constants/api_constants.dart';
import 'base_services.dart';

class UserService extends BaseService {
  Future<void> loginAccount(
      {required String email, required String password}) async {
    final body = {"email": email, "password": password};
    final response = await post(API.LOGIN, data: body);

    saveUser(response);
  }

  Future<void> registerAccount(
      {required String email,
        required String password}) async {
    final body = {"email": email, "password": password};
    final response = await post( API.REGISTER, data: body);
  }

  Future<void> forgotPassword({required String email}) async {
    final body = {"email": email};
    final response = await post(API.FORGOT_PASSWORD, data: body);
  }

// Future<ApiResponse> forgotPassword({required String email}) async {
//   final body = {"email": email};
//   final response = await post(FORGOT_PASSWORD, data: body);
//   return ApiResponse.fromJson(response);
// }
//
// Future<void> getlanguages() async {
//   final response = await get(GET_LANGUAGES);
//   saveLanguages(response);
// }
}
