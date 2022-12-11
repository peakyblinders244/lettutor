import 'package:sprintf/sprintf.dart';

import '../constants/api_constants.dart';
import 'base_services.dart';

class TutorService extends BaseService {
  Future<dynamic> getAllTutorByPage({int page = 1}) async {
    final response = await get(sprintf(API.ALL_TUTOR, [page]));
    return response;
  }

}