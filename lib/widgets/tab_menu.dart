import 'package:flutter/material.dart';

import '../res/styles.dart';

class TabMenu extends StatefulWidget {
  TabMenu({
    super.key,
    required this.name1,
    required this.name2,
    required this.name3,
  });
  String name1;
  String name2;
  String name3;
  @override
  State<TabMenu> createState() => _TabMenuState();
}

class _TabMenuState extends State<TabMenu> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => setState(() {
              index = 0;
            }),
            child: Column(
              children: [
                Text(widget.name1,
                    style: h16w600.copyWith(color: index == 0 ? red : null)),
                SizedBox(height: 10),
                Container(
                    width: 100, height: 2, color: index == 0 ? red : null),
              ],
            ),
          ),
          InkWell(
            onTap: () => setState(() {
              index = 1;
            }),
            child: Column(
              children: [
                Text(widget.name2,
                    style: h16w600.copyWith(color: index == 1 ? red : null)),
                SizedBox(height: 10),
                Container(
                  width: 100,
                  height: 2,
                  color: index == 1 ? red : null,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () => setState(() {
              index = 2;
            }),
            child: Column(
              children: [
                Text(widget.name3,
                    style: h16w600.copyWith(color: index == 2 ? red : null)),
                SizedBox(height: 10),
                Container(
                  width: 100,
                  height: 2,
                  color: index == 2 ? red : null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
