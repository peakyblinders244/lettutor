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

  Future<dynamic> getSchedule({page = 1, type = 0}) async {
    final data = type == 0
        ? {
      'page': page,
      'perPage': 20,
      'dateTimeGte': DateTime.now()
          .millisecondsSinceEpoch
          .toString()
          .substring(0, 13),
      'orderBy': 'meeting',
      'sortBy': 'desc',
    }
        : {
      'page': page,
      'perPage': 20,
      'dateTimeLte': DateTime.now()
          .millisecondsSinceEpoch
          .toString()
          .substring(0, 13),
      'orderBy': 'meeting',
      'sortBy': 'desc',
    };
    final response = await get(API.SCHEDULE_ALL, params: data);
    return response;
  }
//
// Future<void> getlanguages() async {
//   final response = await get(GET_LANGUAGES);
//   saveLanguages(response);
// }
}
