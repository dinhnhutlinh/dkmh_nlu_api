import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'all_tuition_fee.dart';
import 'detail_tuition_fee.dart';
import 'facultys.dart';
import 'list_test_score.dart';
import 'list_time_table.dart';
import 'list_time_table_semester.dart';
import 'list_tuition_fee.dart';
import 'notifications.dart';
import 'options_time_table.dart';
import 'student_info.dart';
import 'subjects.dart';
import 'test_schedule.dart';
import 'test_score.dart';
import 'time_table_by_persion.dart';
import 'time_table_in_week.dart';
import 'time_table_person.dart';
import 'user_info.dart';

class Model extends Equatable {
  final UserInfo? userInfo;
  final StudentInfo? studentInfo;
  final Notifications? notifications;
  final ListTuitionFee? listTuitionFee;
  final AllTuitionFee? allTuitionFee;
  final DetailTuitionFee? detailTuitionFee;
  final ListTimeTableSemester? listTimeTableSemester;
  final OptionsTimeTable? optionsTimeTable;
  final TimeTableInWeek? timeTableInWeek;
  final TimeTableByPersion? timeTableByPersion;
  final ListTimeTable? listTimeTable;
  final Facultys? facultys;
  final TimeTablePerson? timeTablePerson;
  final Subjects? subjects;
  final ListTestScore? listTestScore;
  final TestSchedule? testSchedule;
  final TestScore? testScore;

  const Model({
    this.userInfo,
    this.studentInfo,
    this.notifications,
    this.listTuitionFee,
    this.allTuitionFee,
    this.detailTuitionFee,
    this.listTimeTableSemester,
    this.optionsTimeTable,
    this.timeTableInWeek,
    this.timeTableByPersion,
    this.listTimeTable,
    this.facultys,
    this.timeTablePerson,
    this.subjects,
    this.listTestScore,
    this.testSchedule,
    this.testScore,
  });

  factory Model.fromMap(Map<String, dynamic> data) => Model(
        userInfo: data['user_info'] == null
            ? null
            : UserInfo.fromMap(data['user_info'] as Map<String, dynamic>),
        studentInfo: data['student_info'] == null
            ? null
            : StudentInfo.fromMap(data['student_info'] as Map<String, dynamic>),
        notifications: data['notifications'] == null
            ? null
            : Notifications.fromMap(
                data['notifications'] as Map<String, dynamic>),
        listTuitionFee: data['list_tuition_fee'] == null
            ? null
            : ListTuitionFee.fromMap(
                data['list_tuition_fee'] as Map<String, dynamic>),
        allTuitionFee: data['all_tuition_fee'] == null
            ? null
            : AllTuitionFee.fromMap(
                data['all_tuition_fee'] as Map<String, dynamic>),
        detailTuitionFee: data['detail_tuition_fee'] == null
            ? null
            : DetailTuitionFee.fromMap(
                data['detail_tuition_fee'] as Map<String, dynamic>),
        listTimeTableSemester: data['list_time_table_semester'] == null
            ? null
            : ListTimeTableSemester.fromMap(
                data['list_time_table_semester'] as Map<String, dynamic>),
        optionsTimeTable: data['options_time_table'] == null
            ? null
            : OptionsTimeTable.fromMap(
                data['options_time_table'] as Map<String, dynamic>),
        timeTableInWeek: data['time_table_in_week'] == null
            ? null
            : TimeTableInWeek.fromMap(
                data['time_table_in_week'] as Map<String, dynamic>),
        timeTableByPersion: data['time_table_by_persion'] == null
            ? null
            : TimeTableByPersion.fromMap(
                data['time_table_by_persion'] as Map<String, dynamic>),
        listTimeTable: data['list_time_table'] == null
            ? null
            : ListTimeTable.fromMap(
                data['list_time_table'] as Map<String, dynamic>),
        facultys: data['facultys'] == null
            ? null
            : Facultys.fromMap(data['facultys'] as Map<String, dynamic>),
        timeTablePerson: data['time_table_person'] == null
            ? null
            : TimeTablePerson.fromMap(
                data['time_table_person'] as Map<String, dynamic>),
        subjects: data['subjects'] == null
            ? null
            : Subjects.fromMap(data['subjects'] as Map<String, dynamic>),
        listTestScore: data['list_test_score'] == null
            ? null
            : ListTestScore.fromMap(
                data['list_test_score'] as Map<String, dynamic>),
        testSchedule: data['test_schedule'] == null
            ? null
            : TestSchedule.fromMap(
                data['test_schedule'] as Map<String, dynamic>),
        testScore: data['test_score'] == null
            ? null
            : TestScore.fromMap(data['test_score'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'user_info': userInfo?.toMap(),
        'student_info': studentInfo?.toMap(),
        'notifications': notifications?.toMap(),
        'list_tuition_fee': listTuitionFee?.toMap(),
        'all_tuition_fee': allTuitionFee?.toMap(),
        'detail_tuition_fee': detailTuitionFee?.toMap(),
        'list_time_table_semester': listTimeTableSemester?.toMap(),
        'options_time_table': optionsTimeTable?.toMap(),
        'time_table_in_week': timeTableInWeek?.toMap(),
        'time_table_by_persion': timeTableByPersion?.toMap(),
        'list_time_table': listTimeTable?.toMap(),
        'facultys': facultys?.toMap(),
        'time_table_person': timeTablePerson?.toMap(),
        'subjects': subjects?.toMap(),
        'list_test_score': listTestScore?.toMap(),
        'test_schedule': testSchedule?.toMap(),
        'test_score': testScore?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Model].
  factory Model.fromJson(String data) {
    return Model.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Model] to a JSON string.
  String toJson() => json.encode(toMap());

  Model copyWith({
    UserInfo? userInfo,
    StudentInfo? studentInfo,
    Notifications? notifications,
    ListTuitionFee? listTuitionFee,
    AllTuitionFee? allTuitionFee,
    DetailTuitionFee? detailTuitionFee,
    ListTimeTableSemester? listTimeTableSemester,
    OptionsTimeTable? optionsTimeTable,
    TimeTableInWeek? timeTableInWeek,
    TimeTableByPersion? timeTableByPersion,
    ListTimeTable? listTimeTable,
    Facultys? facultys,
    TimeTablePerson? timeTablePerson,
    Subjects? subjects,
    ListTestScore? listTestScore,
    TestSchedule? testSchedule,
    TestScore? testScore,
  }) {
    return Model(
      userInfo: userInfo ?? this.userInfo,
      studentInfo: studentInfo ?? this.studentInfo,
      notifications: notifications ?? this.notifications,
      listTuitionFee: listTuitionFee ?? this.listTuitionFee,
      allTuitionFee: allTuitionFee ?? this.allTuitionFee,
      detailTuitionFee: detailTuitionFee ?? this.detailTuitionFee,
      listTimeTableSemester:
          listTimeTableSemester ?? this.listTimeTableSemester,
      optionsTimeTable: optionsTimeTable ?? this.optionsTimeTable,
      timeTableInWeek: timeTableInWeek ?? this.timeTableInWeek,
      timeTableByPersion: timeTableByPersion ?? this.timeTableByPersion,
      listTimeTable: listTimeTable ?? this.listTimeTable,
      facultys: facultys ?? this.facultys,
      timeTablePerson: timeTablePerson ?? this.timeTablePerson,
      subjects: subjects ?? this.subjects,
      listTestScore: listTestScore ?? this.listTestScore,
      testSchedule: testSchedule ?? this.testSchedule,
      testScore: testScore ?? this.testScore,
    );
  }

  @override
  List<Object?> get props {
    return [
      userInfo,
      studentInfo,
      notifications,
      listTuitionFee,
      allTuitionFee,
      detailTuitionFee,
      listTimeTableSemester,
      optionsTimeTable,
      timeTableInWeek,
      timeTableByPersion,
      listTimeTable,
      facultys,
      timeTablePerson,
      subjects,
      listTestScore,
      testSchedule,
      testScore,
    ];
  }
}
