import 'package:flutter/material.dart';

import '../../res/styles.dart';

class ParamContainer extends StatelessWidget {
  ParamContainer({
    super.key,
    required this.title,
    required this.value1,
    required this.value2,
    required this.proc1,
    required this.proc2,
  });
  String title;
  int value1;
  int value2;
  double proc1;
  double proc2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value1.toString(),
                style: h12w400.copyWith(fontSize: 14),
              ),
              Text(
                title,
                style: h12w400.copyWith(fontSize: 14, color: grey),
              ),
              Text(
                value2.toString(),
                style: h12w400.copyWith(fontSize: 14),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 150,
                height: 7,
                child: LinearProgressIndicator(
                  value: proc1,
                  backgroundColor: Colors.white,
                  color: red,
                ),
              ),
              SizedBox(
                width: 150,
                height: 7,
                child: LinearProgressIndicator(
                  value: proc2,
                  backgroundColor: Colors.white,
                  color: red,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
