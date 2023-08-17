import 'package:flutter/material.dart';

import '../../models/matches/matches.dart';
import '../../res/styles.dart';

class LeaguesListItem extends StatelessWidget {
  LeaguesListItem({
    super.key,
    required this.tr,
  });
  Tournament tr;
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
            width: 40,
            height: 40,
            child: ClipOval(
              child: Image.network(
                'https://static.livescore.com/i2/fh/${tr.Ccd}.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 80,
            alignment: Alignment.center,
            child: Text(
              tr.Snm!,
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
