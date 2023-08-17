import 'dart:math';

import 'package:dio/dio.dart';

import '../models/match_details/match_details_model.dart';
import '../models/matches/matches.dart';

const host = 'https://prod-public-api.livescore.com/v1/api/app';

class MatchesApi {
  static Future<Matches> getMatchesByTrId({
    required String sport,
    required String name,
    required String subName,
  }) async {
    var dio = Dio();
    print('$host/stage/$sport/$name/$subName/1');
    var res = await dio.get('$host/stage/$sport/$name/$subName/1');
    List<Tournament> list = [];

    res.data['Stages'].forEach((el) {
      list.add(Tournament.fromJson(el));
    });

    print(list.length);
    return Matches(tournaments: list);
  }

  static Future<Matches> getMatches({
    required String sport,
    required String date,
  }) async {
    var dio = Dio();
    var res = await dio.get(
        'https://prod-public-api.livescore.com/v1/api/app/date/$sport/$date/3');
    List<Tournament> list = [];

    res.data['Stages'].forEach((el) {
      list.add(Tournament.fromJson(el));
    });

    print(list.length);
    return Matches(tournaments: list);
  }

  static Future<MatchDetailsModel> getMatchDetails({
    required String sport,
    required String id,
    required String? countryLink,
    required String? league,
  }) async {
    var dio = Dio();
    var model = MatchDetailsModel();

    try {
      var res = await dio.get(
          'https://prod-public-api.livescore.com/v1/api/app/scoreboard/$sport/$id');
      model.event = Event.fromJson(res.data);
      print('event -ok');
    } catch (e) {}
    try {
      var res = await dio.get(
          'https://prod-public-api.livescore.com/v1/api/app/info/$sport/$id');
      model.info = Info.fromJson(res.data);
      print('info -ok');
    } catch (e) {}

    try {
      var res = await dio.get(
          'https://prod-public-api.livescore.com/v1/api/app/incidents/$sport/$id');
      model.incedents = Incedents.fromJson(res.data);
      print('incedents -ok');
    } catch (e) {}

    try {
      var res = await dio.get(
          'https://prod-public-api.livescore.com/v1/api/app/stage/$sport/$countryLink/$league/1');
      model.table = TableModel.fromJson(res.data);
      print('table -ok');
    } catch (e) {}

    try {
      var res = await dio.get(
          'https://prod-public-api.livescore.com/v1/api/app/H2H/$sport/$id');
      model.h2h = H2H.fromJson(res.data, true);
      print('H2H -ok');
    } catch (e) {}

    try {
      var res = await dio.get(
          'https://prod-public-api.livescore.com/v1/api/app/form-e/$sport/$id?limit=10');
      model.h2h_1 = H2H.fromJson(res.data, true);
      print('H2H_1 -ok');
    } catch (e) {}
    try {
      var res = await dio.get(
          'https://prod-public-api.livescore.com/v1/api/app/form-e/$sport/$id?limit=10');
      model.h2h_2 = H2H.fromJson(res.data, false);
      print('H2H_2 -ok');
    } catch (e) {}

    return model;
  }
}
