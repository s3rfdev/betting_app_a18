import 'package:flutter/material.dart';

import '../../models/players.dart';
import '../../res/styles.dart';

class PlayersItem extends StatelessWidget {
  PlayersItem({super.key, required this.player});
  Player player;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: blue1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Container(
            height: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                  'https://api.sofascore1.com/api/v1/player/${player.id}/image'),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 80,
            alignment: Alignment.center,
            child: Text(
              player.name,
              style: h12w400,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
