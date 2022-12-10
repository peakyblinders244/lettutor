class Course {
  // double rating;
  int coursePrice;
  int defaultPrice;
  // int totalFeedback;
  // String userId;
  String id;
  String name;
  String description;
  String imageUrl;
  String reason;
  String purpose;
  String other_details;
  String level;

  // String phoneAuth;
  // String caredByStaffId;
  // String video;
  // String bio;
  // String education;
  // String experience;
  // String profession;
  // String accent;
  // String targetStudent;
  // String interests;
  // String specialties;
  // String resume;
  bool visible;
  // bool requestPassword;
  // bool isPhoneAuthActivated;
  // bool isNative;
  // bool isPublicRecord;
  // bool isFavorite;
  // UserModel? user;
  // // Cái này do tk BE ngu quá nên để vầy
  // UserModel? userModel;
  DateTime? createdAt;
  DateTime? updatedAt;
  // DateTime? deletedAt;
  // List<String> studentGroupId;
  // List<Feedback> feedbacks;

  Course({
    // this.rating = 0,
    // this.price = 0,
    // this.totalFeedback = 0,
    // this.userId = '',
    this.id = '',
    this.description = '',
    this.name = '',
    this.imageUrl = '',
    this.reason = '',
    this.purpose = '',
    this.other_details = '',
    this.level = '',
    this.visible = false,
    this.coursePrice = 0,
    this.defaultPrice = 0,
    // this.phoneAuth = '',
    // this.caredByStaffId = '',
    // this.video = '',
    // this.bio = '',
    // this.education = '',
    // this.experience = '',
    // this.profession = '',
    // this.accent = '',
    // this.targetStudent = '',
    // this.interests = '',
    // this.specialties = '',
    // this.resume = '',
    // this.requestPassword = false,
    // this.isPhoneAuthActivated = false,
    // this.isNative = false,
    // this.isPublicRecord = false,
    // this.isFavorite = false,
    // this.user,
    // this.userModel,
    this.createdAt,
    this.updatedAt,
    // this.deletedAt,
    // this.studentGroupId = const [],
    // this.feedbacks = const [],
  });

  factory Course.fromJson(json) {
    return Course(
      id: json['id'] ?? '',
      description: json['description'] ?? '',
      name: json['name'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      reason: json['reason'] ?? '',
      purpose: json['purpose'] ?? '',
      other_details: json['other_details'] ?? '',
      level: json['level'] ?? '',
      visible: json['visible'] ?? false,
      coursePrice: json['coursePrice'] ?? 0,
      defaultPrice: json['defaultPrice'] ?? 0,
    );
  }
}