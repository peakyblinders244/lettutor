class API {
  static final String LOGIN = 'auth/login';
  static final String REGISTER = 'auth/register';
  static final String FORGOT_PASSWORD = 'user/forgotPassword';

  //tutor
  static final String ALL_TUTOR = 'tutor/more?perPage=9&page=%i';
  static final String SEARCH_TUTOR = 'tutor/search';
  static final String SCHEDULE = 'schedule';
  static final String GET_TUTOR = 'tutor/%s';
  static final String REVIEW_TUTOR =  'feedback/v2/%s?perPage=10&page=%i';
}
