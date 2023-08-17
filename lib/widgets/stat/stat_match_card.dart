import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/matches/matches.dart';
import '../../res/styles.dart';

class StatMatchCard extends StatelessWidget {
  StatMatchCard({
    super.key,
    required this.event,
  });
  Event event;
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    child: ClipOval(
                        child: Image.network(
                            'https://lsm-static-prod.livescore.com/medium/${event.T1[0].Img}')),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 80,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      event.T1[0].Nm!,
                      style: h12w400,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: grey,
                        child: Text(
                          'W',
                          style: h12w400.copyWith(color: blueBg),
                        ),
                      ),
                      SizedBox(width: 2),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: grey,
                        child: Text(
                          'L',
                          style: h12w400.copyWith(color: blueBg),
                        ),
                      ),
                      SizedBox(width: 2),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: grey,
                        child: Text(
                          'W',
                          style: h12w400.copyWith(color: blueBg),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                width: 110,
                height: 80,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.2),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      '${DateFormat('ddd dd MMM').format(DateTime.now().subtract(Duration(days: 2)))}',
                      style: h12w400.copyWith(color: grey),
                    ),
                    Text(
                      '${event.Tr1} - ${event.Tr2}',
                      style: h16w600.copyWith(fontSize: 28),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    child: ClipOval(
                        child: Image.network(
                            'https://lsm-static-prod.livescore.com/medium/${event.T2[0].Img}')),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 80,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      event.T2[0].Nm!,
                      style: h12w400,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: grey,
                        child: Text(
                          'W',
                          style: h12w400.copyWith(color: blueBg),
                        ),
                      ),
                      SizedBox(width: 2),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: grey,
                        child: Text(
                          'L',
                          style: h12w400.copyWith(color: blueBg),
                        ),
                      ),
                      SizedBox(width: 2),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: grey,
                        child: Text(
                          'W',
                          style: h12w400.copyWith(color: blueBg),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
