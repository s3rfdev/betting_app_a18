import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../models/matches/matches.dart';
import '../../models/players.dart';
import '../../pages/best_player_page.dart';
import '../../res/styles.dart';
import 'best_players_item.dart';

class BestPlayersContainer extends StatelessWidget {
  BestPlayersContainer({
    super.key,
    required this.players,
    required this.event,
  });
  Players players;
  Event event;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Text('Best Players', style: h16w600),
        ),
        SizedBox(height: 20),
        ...players.playersMap.values.take(5).map(
              (e) => InkWell(
                onTap: () => Get.to(BestPlayerPage(
                  player: e,
                  event: event,
                )),
                child: BestPlayersItem(player: e),
              ),
            ),
      ],
    );
  }
}
