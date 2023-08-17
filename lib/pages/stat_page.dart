import 'dart:math';

import 'package:flutter/material.dart';

import '../api/api.dart';
import '../api/matches_api.dart';
import '../models/matches/matches.dart';
import '../models/players.dart';
import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/stat/best_players_container.dart';
import '../widgets/stat/stat_container.dart';
import '../widgets/stat/stat_match_card.dart';

class StatPage extends StatefulWidget {
  const StatPage({super.key});

  @override
  State<StatPage> createState() => _StatPageState();
}

class _StatPageState extends State<StatPage> {
  Matches? matches;
  Players? players;

  @override
  void initState() {
    super.initState();
    () async {
      var tmp = await MatchesApi.getMatches(sport: 'soccer', date: '20230814');
      setState(() {
        matches = tmp;
      });
      var tmp1 = await SofaApi.getPlayers();
      setState(() {
        players = tmp1;
      });
    }();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(selectedIndex: 2),
      backgroundColor: blueBg,
      appBar: appBar(title: 'Statistics'),
      body: SingleChildScrollView(
        child: matches == null || players == null
            ? Container(
                alignment: Alignment.center,
                height: 300,
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  StatMatchCard(
                      event: matches!
                          .tournaments[Random().nextInt(10)].Events.first),
                  SizedBox(height: 20),
                  StatContainer(),
                  SizedBox(height: 20),
                  BestPlayersContainer(
                    players: players!,
                    event:
                        matches!.tournaments[Random().nextInt(10)].Events.first,
                  ),
                  SizedBox(height: 20),
                ],
              ),
      ),
    );
  }
}
