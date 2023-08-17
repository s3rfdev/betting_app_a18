import 'package:freezed_annotation/freezed_annotation.dart';
part 'tournamets.freezed.dart';

class Tournaments {
  Map<int, Tournament> tournamentMap;
  Tournaments({required this.tournamentMap});
  factory Tournaments.fromJson(Map<String, Object?> json) {
    Map<int, Tournament> map = {};
    (json['events'] as List).forEach(
      (event) {
        map.addAll({
          event['tournament']['id']: Tournament.fromJson(event['tournament'])
        });
      },
    );
    return Tournaments(tournamentMap: map);
  }
}

@freezed
class Tournament with _$Tournament {
  const factory Tournament({
    required int id,
    required String name,
    required String slug,
  }) = _Tournament;

  factory Tournament.fromJson(Map<String, Object?> json) {
    return Tournament(
        id: json['id'] as int,
        name: json['name'] as String,
        slug: json['slug'] as String);
  }
}
