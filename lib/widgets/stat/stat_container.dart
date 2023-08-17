import 'dart:math';
import 'package:flutter/material.dart';

import '../../res/styles.dart';
import 'param_container.dart';

class StatContainer extends StatelessWidget {
  const StatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              'Statistics',
              style: h16w600,
            ),
          ),
          SizedBox(height: 20),
          ParamContainer(
            title: 'Possession',
            value1: Random().nextInt(100),
            value2: Random().nextInt(100),
            proc1: double.parse('0.${1 + Random().nextInt(8)}'),
            proc2: double.parse('0.${1 + Random().nextInt(8)}'),
          ),
          ParamContainer(
            title: 'Pass',
            value1: Random().nextInt(20),
            value2: Random().nextInt(20),
            proc1: double.parse('0.${1 + Random().nextInt(8)}'),
            proc2: double.parse('0.${1 + Random().nextInt(8)}'),
          ),
          ParamContainer(
            title: 'Shot',
            value1: Random().nextInt(20),
            value2: Random().nextInt(20),
            proc1: double.parse('0.${1 + Random().nextInt(8)}'),
            proc2: double.parse('0.${1 + Random().nextInt(8)}'),
          ),
          ParamContainer(
            title: 'Corner Kicks',
            value1: Random().nextInt(20),
            value2: Random().nextInt(20),
            proc1: double.parse('0.${1 + Random().nextInt(8)}'),
            proc2: double.parse('0.${1 + Random().nextInt(8)}'),
          ),
          ParamContainer(
            title: 'Free Kicks',
            value1: Random().nextInt(20),
            value2: Random().nextInt(20),
            proc1: double.parse('0.${1 + Random().nextInt(8)}'),
            proc2: double.parse('0.${1 + Random().nextInt(8)}'),
          ),
        ],
      ),
    );
  }
}
