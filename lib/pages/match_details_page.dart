import 'package:flutter/material.dart';

import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/tab_menu.dart';

class MatchDetailsPage extends StatefulWidget {
  const MatchDetailsPage({super.key});

  @override
  State<MatchDetailsPage> createState() => _MatchDetailsPageState();
}

class _MatchDetailsPageState extends State<MatchDetailsPage> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        selectedIndex: 2,
      ),
      backgroundColor: blueBg,
      appBar: appBar(title: 'Match Details'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            // MatchCard(),
            SizedBox(height: 30),
            TabMenu(
              name1: 'Play-by-play',
              name2: 'Summary',
              name3: 'Match News',
            ),
            Image.asset('images/match_details.png'),
          ],
        ),
      ),
    );
  }
}
