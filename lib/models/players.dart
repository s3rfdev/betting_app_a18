import 'package:freezed_annotation/freezed_annotation.dart';
part 'players.freezed.dart';

class Players {
  Map<int, Player> playersMap;
  Players({required this.playersMap});
  factory Players.fromJson(Map<String, Object?> json) {
    Map<int, Player> map = {};
    (json['players'] as List).forEach(
      (pl) {
        map.addAll({pl['player']['id']: Player.fromJson(pl['player'])});
      },
    );
    return Players(playersMap: map);
  }
}

@freezed
class Player with _$Player {
  const factory Player({
    required int id,
    required String name,
    required String position,
    required String height,
    required String shirtNumber,
    required String Age,
    required int price,
    required String country,
    required String teamName,
  }) = _Player;

  factory Player.fromJson(Map<String, Object?> json) {
    return Player(
      id: json['id'] as int,
      name: json['name'] as String,
      position: json['position'] as String,
      height: (json['height'] ?? 170 as int).toString(),
      price: json['proposedMarketValue'] as int,
      country: (json['country'] as dynamic)['name'] as String,
      teamName: (json['team'] as dynamic)['name'] as String,
      shirtNumber: (json['shirtNumber'] ?? 22 as int).toString(),
      Age: (json['dateOfBirthTimestamp'] as int).toString(),
    );
  }
}
