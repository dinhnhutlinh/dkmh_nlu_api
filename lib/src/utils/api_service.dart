import 'package:dio/dio.dart';
import 'package:dkmh_nlu_api/src/models/models/list_time_table_semester.dart';
import 'package:dkmh_nlu_api/src/models/models/student_info.dart';
import 'package:dkmh_nlu_api/src/models/models/test_score.dart';
import 'package:dkmh_nlu_api/src/models/models/time_table_in_week.dart';
import 'package:dkmh_nlu_api/src/models/models/user_info.dart';

import 'package:dkmh_nlu_api/src/models/response_model.dart';
import 'package:dkmh_nlu_api/src/utils/network.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: NetworkConfig.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST('/auth/login')
  @FormUrlEncoded()
  Future<UserInfo> login({
    @Field('username') required String username,
    @Field('password') required String password,
    @Field('grant_type') String grantType = 'password',
  });

  @POST('/dkmh/w-locsinhvieninfo')
  Future<ResponseModel<StudentInfo>> getStudentInfo();

  @POST('/srm/w-locdsdiemsinhvien')
  Future<ResponseModel<TestScore>> getStudentScore();

  @POST('/sch/w-locdshockytkbuser')
  Future<ResponseModel<ListTimeTableSemester>> getScheduleSemesters();

  @POST('/sch/w-locdstkbtuanusertheohocky')
  Future<ResponseModel<TimeTableInWeek>> getStudentSchedule(
      {@Body() required Map<String, dynamic> data});
}
