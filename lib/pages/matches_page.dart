import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../api/api.dart';
import '../api/matches_api.dart';
import '../models/matches/matches.dart';
import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/matches/match_card.dart';
import '../widgets/tab_menu.dart';
import 'stat_page.dart';

class MatchesPage extends StatefulWidget {
  const MatchesPage({super.key});

  @override
  State<MatchesPage> createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage> {
  Matches? matches;

  @override
  void initState() {
    super.initState();
    () async {
      var tmp = await MatchesApi.getMatches(sport: 'soccer', date: '20230812');
      setState(() {
        matches = tmp;
      });
    }();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        selectedIndex: 1,
      ),
      backgroundColor: blueBg,
      appBar: appBar(title: 'Matches'),
      body: SingleChildScrollView(
        child: matches == null
            ? Container(
                alignment: Alignment.center,
                height: 300,
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  SizedBox(height: 30),
                  TabMenu(
                    name1: 'Fixtures',
                    name2: 'Results',
                    name3: 'Table',
                  ),
                  SizedBox(height: 12),
                  ...matches!.tournaments.take(15).map((e) => InkWell(
                        onTap: () => Get.to(StatPage()),
                        child: MatchCard(
                          event: e.Events.first,
                          leagueName: e.Snm!,
                          country: e.Ccd!,
                        ),
                      )),
                ],
              ),
      ),
    );
  }
}
