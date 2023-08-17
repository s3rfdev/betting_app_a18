import 'dart:math';

import 'package:flutter/material.dart';

import '../../res/styles.dart';

class BsetPlayerStatCard extends StatelessWidget {
  const BsetPlayerStatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: Colors.white),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'images/app.png',
                      scale: 2,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Appearances',
                        style: h12w400.copyWith(color: grey),
                      ),
                      Text(
                        Random().nextInt(100).toString(),
                        style: h16w600,
                      )
                    ],
                  ),
                  Expanded(
                      child: SizedBox(
                    height: 10,
                  )),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'images/ball.png',
                      scale: 2,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Goals',
                        style: h12w400.copyWith(color: grey),
                      ),
                      Text(
                        Random().nextInt(100).toString(),
                        style: h16w600,
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'images/prof.png',
                      scale: 2,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Asists',
                        style: h12w400.copyWith(color: grey),
                      ),
                      Text(
                        Random().nextInt(100).toString(),
                        style: h16w600,
                      )
                    ],
                  ),
                  Expanded(
                      child: SizedBox(
                    height: 10,
                  )),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'images/star.png',
                      scale: 2,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wins',
                        style: h12w400.copyWith(color: grey),
                      ),
                      Text(
                        Random().nextInt(100).toString(),
                        style: h16w600,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        Image.asset(
          'images/chart.png',
          fit: BoxFit.fitWidth,
        ),
      ],
    );
  }
}
