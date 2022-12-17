import 'package:intl/intl.dart';
import 'package:letutor/models/tutor.dart';

import '../utils/date_time.dart';

class Schedule {
  String id;
  String tutorId;
  String startTime;
  String endTime;

  int startTimestamp;
  int endTimestamp;
  bool isBooked;
  bool showRecordUrl;
  DateTime? createdAt;
  String studentRequest;
  String date;
  Tutor? tutorInfo;
  Schedule? scheduleDetailInfo;
  Schedule? scheduleInfo;
  Schedule(
      {this.id = '',
        this.tutorId = '',
        this.startTime = '',
        this.endTime = '',
        this.startTimestamp = 0,
        this.endTimestamp = 0,
        this.isBooked = false,
        this.showRecordUrl = false,
        this.createdAt,
        this.studentRequest = '',
        this.date = '',
        this.tutorInfo,
        this.scheduleDetailInfo,
        this.scheduleInfo});

  factory Schedule.fromJson(json) {
    return Schedule(
      id: json['id'] ?? '',
      tutorId: json['tutorId'] ?? '',
      startTime: json['startTime'] ?? '',
      endTime: json['endTime'] ?? '',
      startTimestamp: json['startTimestamp'] ?? 0,
      endTimestamp: json['endTimestamp'] ?? 0,
      isBooked: json['isBooked'] ?? false,
      showRecordUrl: json['showRecordUrl'] ?? false,
      createdAt: json['createdAt'] != null
          ? DateFormat(time1).parse(json['createdAt'])
          : DateTime(1990),
      studentRequest: json['studentRequest'] ?? '',
      date: json['date'] ?? '',
      tutorInfo: json['tutorInfo'] != null
          ? Tutor.fromJson(json['tutorInfo'])
          : Tutor(),
      scheduleDetailInfo: json['scheduleDetailInfo'] != null
          ? Schedule.fromJson(json['scheduleDetailInfo'])
          : Schedule(),
      scheduleInfo: json['scheduleInfo'] != null
          ? Schedule.fromJson(json['scheduleInfo'])
          : Schedule(),
    );
  }
}
