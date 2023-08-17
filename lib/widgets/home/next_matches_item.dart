import 'package:flutter/material.dart';

import '../../models/matches/matches.dart';
import '../../res/styles.dart';

class NextMatchesItem extends StatelessWidget {
  NextMatchesItem({
    super.key,
    required this.tr,
  });
  Tournament tr;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 180,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: blue2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tr.Snm!, style: h12w400.copyWith(color: grey)),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: ClipOval(
                  child: Image.network(
                      'https://lsm-static-prod.livescore.com/medium/${tr.Events.first.T1[0].Img}'),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 100,
                child: Text(tr.Events.first.T1[0].Nm!,
                    style: h12w400.copyWith(color: grey)),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: ClipOval(
                  child: ClipOval(
                    child: Image.network(
                        'https://lsm-static-prod.livescore.com/medium/${tr.Events.first.T2[0].Img}'),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 100,
                child: Text(tr.Events.first.T1[0].Nm!,
                    style: h12w400.copyWith(color: grey)),
              )
            ],
          ),
          SizedBox(height: 10),
          Center(
            child: Container(
              width: 150,
              height: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: red, borderRadius: BorderRadius.circular(30)),
              child: Text(
                'Predict'.toUpperCase(),
                style: h12w400.copyWith(color: blueBg, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
