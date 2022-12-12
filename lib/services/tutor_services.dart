import 'package:sprintf/sprintf.dart';

import '../constants/api_constants.dart';
import 'base_services.dart';

class TutorService extends BaseService {
  Future<dynamic> getAllTutorByPage({int page = 1}) async {
    final response = await get(sprintf(API.ALL_TUTOR, [page]));
    return response;
  }

  Future<dynamic> getAllTutorBySearch(
      {int page = 1,
        String search = '',
        String? date,
        List<String> specialties = const [],
        List<double?> time = const [null, null],
        nationality = const {}}) async {
    final body = {
      "filters": {
        "date": date,
        "nationality": nationality,
        "specialties": specialties,
        "tutoringTimeAvailable": time,
      },
      "page": page,
      "perPage": 9,
      "search": search
    };
    final response = await post(API.SEARCH_TUTOR, data: body);
    return response;
  }

}