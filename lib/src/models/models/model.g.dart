// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) => Model(
      userInfo: json['user_info'] == null
          ? null
          : UserInfo.fromJson(json['user_info'] as Map<String, dynamic>),
      studentInfo: json['student_info'] == null
          ? null
          : StudentInfo.fromJson(json['student_info'] as Map<String, dynamic>),
      notifications: json['notifications'] == null
          ? null
          : Notifications.fromJson(
              json['notifications'] as Map<String, dynamic>),
      listTuitionFee: json['list_tuition_fee'] == null
          ? null
          : ListTuitionFee.fromJson(
              json['list_tuition_fee'] as Map<String, dynamic>),
      allTuitionFee: json['all_tuition_fee'] == null
          ? null
          : AllTuitionFee.fromJson(
              json['all_tuition_fee'] as Map<String, dynamic>),
      detailTuitionFee: json['detail_tuition_fee'] == null
          ? null
          : DetailTuitionFee.fromJson(
              json['detail_tuition_fee'] as Map<String, dynamic>),
      listTimeTableSemester: json['list_time_table_semester'] == null
          ? null
          : ListTimeTableSemester.fromJson(
              json['list_time_table_semester'] as Map<String, dynamic>),
      optionsTimeTable: json['options_time_table'] == null
          ? null
          : OptionsTimeTable.fromJson(
              json['options_time_table'] as Map<String, dynamic>),
      timeTableInWeek: json['time_table_in_week'] == null
          ? null
          : TimeTableInWeek.fromJson(
              json['time_table_in_week'] as Map<String, dynamic>),
      timeTableByPersion: json['time_table_by_persion'] == null
          ? null
          : TimeTableByPersion.fromJson(
              json['time_table_by_persion'] as Map<String, dynamic>),
      listTimeTable: json['list_time_table'] == null
          ? null
          : ListTimeTable.fromJson(
              json['list_time_table'] as Map<String, dynamic>),
      facultys: json['facultys'] == null
          ? null
          : Facultys.fromJson(json['facultys'] as Map<String, dynamic>),
      timeTablePerson: json['time_table_person'] == null
          ? null
          : TimeTablePerson.fromJson(
              json['time_table_person'] as Map<String, dynamic>),
      subjects: json['subjects'] == null
          ? null
          : Subjects.fromJson(json['subjects'] as Map<String, dynamic>),
      listTestScore: json['list_test_score'] == null
          ? null
          : ListTestScore.fromJson(
              json['list_test_score'] as Map<String, dynamic>),
      testSchedule: json['test_schedule'] == null
          ? null
          : TestSchedule.fromJson(
              json['test_schedule'] as Map<String, dynamic>),
      dsFieldAn: (json['ds_field_an'] as List<dynamic>?)
          ?.map((e) => DsFieldAn.fromJson(e as Map<String, dynamic>))
          .toList(),
      testScore: json['test_score'] == null
          ? null
          : TestScore.fromJson(json['test_score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'user_info': instance.userInfo,
      'student_info': instance.studentInfo,
      'notifications': instance.notifications,
      'list_tuition_fee': instance.listTuitionFee,
      'all_tuition_fee': instance.allTuitionFee,
      'detail_tuition_fee': instance.detailTuitionFee,
      'list_time_table_semester': instance.listTimeTableSemester,
      'options_time_table': instance.optionsTimeTable,
      'time_table_in_week': instance.timeTableInWeek,
      'time_table_by_persion': instance.timeTableByPersion,
      'list_time_table': instance.listTimeTable,
      'facultys': instance.facultys,
      'time_table_person': instance.timeTablePerson,
      'subjects': instance.subjects,
      'list_test_score': instance.listTestScore,
      'test_schedule': instance.testSchedule,
      'ds_field_an': instance.dsFieldAn,
      'test_score': instance.testScore,
    };
