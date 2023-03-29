import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'all_tuition_fee.dart';
import 'detail_tuition_fee.dart';
import 'ds_field_an.dart';
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

part 'model.g.dart';

@JsonSerializable()
class Model extends Equatable {
  @JsonKey(name: 'user_info')
  final UserInfo? userInfo;
  @JsonKey(name: 'student_info')
  final StudentInfo? studentInfo;
  final Notifications? notifications;
  @JsonKey(name: 'list_tuition_fee')
  final ListTuitionFee? listTuitionFee;
  @JsonKey(name: 'all_tuition_fee')
  final AllTuitionFee? allTuitionFee;
  @JsonKey(name: 'detail_tuition_fee')
  final DetailTuitionFee? detailTuitionFee;
  @JsonKey(name: 'list_time_table_semester')
  final ListTimeTableSemester? listTimeTableSemester;
  @JsonKey(name: 'options_time_table')
  final OptionsTimeTable? optionsTimeTable;
  @JsonKey(name: 'time_table_in_week')
  final TimeTableInWeek? timeTableInWeek;
  @JsonKey(name: 'time_table_by_persion')
  final TimeTableByPersion? timeTableByPersion;
  @JsonKey(name: 'list_time_table')
  final ListTimeTable? listTimeTable;
  final Facultys? facultys;
  @JsonKey(name: 'time_table_person')
  final TimeTablePerson? timeTablePerson;
  final Subjects? subjects;
  @JsonKey(name: 'list_test_score')
  final ListTestScore? listTestScore;
  @JsonKey(name: 'test_schedule')
  final TestSchedule? testSchedule;
  @JsonKey(name: 'ds_field_an')
  final List<DsFieldAn>? dsFieldAn;
  @JsonKey(name: 'test_score')
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
    this.dsFieldAn,
    this.testScore,
  });

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);

  Map<String, dynamic> toJson() => _$ModelToJson(this);

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
    List<DsFieldAn>? dsFieldAn,
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
      dsFieldAn: dsFieldAn ?? this.dsFieldAn,
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
      dsFieldAn,
      testScore,
    ];
  }
}
