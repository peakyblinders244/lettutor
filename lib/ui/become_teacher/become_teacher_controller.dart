import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:letutor/constants/title_string.dart';

import '../../constants/constants.dart';
import '../../models/certifications.dart';
import '../../widgets/notify/notify_bar.dart';
import '../base/base_controller.dart';

class BecomeTeacherController extends BaseController {
  final Map<String, TextEditingController> controllers = Map.fromEntries(
    [
      name,
      birthdayField,
      country,
      interests,
      education,
      experience,
      profession,
      languages,
      bio,
      targetStudent,
      specialties,
      price
    ].map(
      (value) => MapEntry(
        value,
        TextEditingController(),
      ),
    ),
  );

  final Map<String, String> targetStudentMap = {
    TitleString.beginner: 'beginner',
    TitleString.intermediate: 'intermediate',
    TitleString.advanced: 'advanced',
  };
  final Map<String, String> specialtiesMap = {
    TitleString.englishForKids: 'english-for-kids',
    TitleString.englishForBusiness: 'business-english',
    TitleString.conversational: 'conversational-english',
    TitleString.starters: 'starters',
    TitleString.movers: 'movers',
    TitleString.flyers: 'flyers',
    TitleString.ket: 'ket',
    TitleString.pet: 'pet',
    TitleString.ielts: 'ielts',
    TitleString.toefl: 'toefl',
    TitleString.toeic: 'toeic'
  };
  final Map<String, bool> targetStudentMapSelected = {
    TitleString.beginner: false,
    TitleString.intermediate: false,
    TitleString.advanced: false,
  };

  final Map<String, bool> specialtiesMapSelected = {
    TitleString.englishForKids: false,
    TitleString.englishForBusiness: false,
    TitleString.conversational: false,
    TitleString.starters: false,
    TitleString.movers: false,
    TitleString.flyers: false,
    TitleString.ket: false,
    TitleString.pet: false,
    TitleString.ielts: false,
    TitleString.toefl: false,
    TitleString.toeic: false,
  };

  List<String> languagesTeachSelected = [];

  Certification? certificationHandle;

  RxList<Certification> certificationsSelected = <Certification>[].obs;

  File? fileAvatar;

  @override
  void onInit() {
    super.onInit();
  }

  void doRegisterBecomeTeacher() {
    notifyBar(message: 'Register success!', isSuccess: true);
  }
}
