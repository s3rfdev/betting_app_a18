import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/matches/matches.dart';
import '../../res/styles.dart';

class MatchCard extends StatelessWidget {
  MatchCard({
    super.key,
    required this.event,
    required this.leagueName,
    required this.country,
  });

  Event event;
  String leagueName;
  String country;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: blue1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 30,
                  height: 30,
                  child: ClipOval(
                    child: Image.network(
                      'https://static.livescore.com/i2/fh/${country}.jpg',
                      fit: BoxFit.fill,
                    ),
                  )),
              SizedBox(
                width: 10,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 130),
                child: Text(
                  leagueName,
                  style: h12w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: ClipOval(
                      child: Image.network(
                          'https://lsm-static-prod.livescore.com/medium/${event.T1[0].Img}'),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 80,
                    alignment: Alignment.center,
                    child: Text(
                      event.T1[0].Nm!,
                      style: h12w400,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '${event.Tr1} - ${event.Tr2}',
                    style: h16w600.copyWith(fontSize: 28),
                  ),
                  Text(
                    '${DateFormat('ddd dd MMM').format(DateTime.now())}',
                    style: h12w400.copyWith(color: grey),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: ClipOval(
                        child: Image.network(
                            'https://lsm-static-prod.livescore.com/medium/${event.T2[0].Img}')),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 80,
                    alignment: Alignment.center,
                    child: Text(
                      event.T2[0].Nm!,
                      style: h12w400,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
