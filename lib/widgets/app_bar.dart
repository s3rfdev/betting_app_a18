import 'package:flutter/material.dart';

import '../res/styles.dart';

appBar({
  required String title,
  bool hasBack = false,
}) {
  return AppBar(
    actions: [
      Icon(
        Icons.more_vert_rounded,
        color: Colors.white,
      )
    ],
    centerTitle: true,
    leading: hasBack
        ? BackButton(color: Colors.white)
        : IconButton(
            onPressed: () {}, icon: Icon(Icons.menu, color: Colors.white)),
    backgroundColor: blueBg,
    title: Text(title, style: h16w600),
  );
}
