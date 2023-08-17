import 'package:freezed_annotation/freezed_annotation.dart';
part 'teams.freezed.dart';

class Teams {
  Map<int, Team> teamsMap;
  Teams({required this.teamsMap});
  factory Teams.fromJson(Map<String, Object?> json, int trId) {
    Map<int, Team> map = {};
    (json['events'] as List).forEach((event) {
      //  if (event['tournament']['id'] == trId) {
      map.addAll({event['homeTeam']['id']: Team.fromJson(event['homeTeam'])});
      map.addAll({event['awayTeam']['id']: Team.fromJson(event['awayTeam'])});
    }
        // },
        );
    return Teams(teamsMap: map);
  }
}

@freezed
class Team with _$Team {
  const factory Team({
    required int id,
    required String name,
  }) = _Team;

  factory Team.fromJson(Map<String, Object?> json) {
    return Team(
      id: json['id'] as int,
      name: json['name'] as String,
    );
  }
}
