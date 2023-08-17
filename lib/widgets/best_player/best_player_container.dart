import 'package:flutter/material.dart';

import '../../models/players.dart';
import '../../res/styles.dart';
import 'best_player_stat_card.dart';

class BestPlayerContainer extends StatelessWidget {
  BestPlayerContainer({super.key, required this.player});
  Player player;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      height: 600,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: Column(
        children: [
          Container(
            height: 80,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 60,
                  height: 60,
                  child: ClipOval(
                    child: Image.network(
                        'https://api.sofascore1.com/api/v1/player/${player.id}/image'),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          player.name,
                          style: h16w600,
                        ),
                        Text(
                          player.teamName,
                          style: h12w400,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 40,
                  height: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://static.livescore.com/i2/fh/${player.country.toLowerCase()}.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          BsetPlayerStatCard(),
        ],
      ),
    );
  }
}
