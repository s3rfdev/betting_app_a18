import 'package:flutter/material.dart';

import '../models/matches/matches.dart';
import '../models/players.dart';
import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/best_player/best_player_container.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/stat/stat_match_card.dart';

class BestPlayerPage extends StatelessWidget {
  BestPlayerPage({
    super.key,
    required this.player,
    required this.event,
  });
  Player player;
  Event event;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        selectedIndex: 2,
      ),
      backgroundColor: blueBg,
      appBar: appBar(title: 'Best Player', hasBack: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StatMatchCard(event: event),
            SizedBox(height: 20),
            BestPlayerContainer(
              player: player,
            ),
          ],
        ),
      ),
    );
  }
}
