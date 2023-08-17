import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../api/api.dart';
import '../api/matches_api.dart';
import '../models/matches/matches.dart';
import '../models/players.dart';
import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/home/leagues_list_item.dart';
import '../widgets/home/next_matches_item.dart';
import '../widgets/home/players_item.dart';
import 'best_player_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Matches? matches;
  Players? players;
  List<Tournament> list = [];
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

      matches!.tournaments.forEach((t) {
        var found = list.firstWhereOrNull((element) => element.Sid == t.Sid);
        if (found == null) {
          setState(() {
            list.add(t);
          });
        }
      });
    }();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        selectedIndex: 0,
      ),
      backgroundColor: blueBg,
      appBar: appBar(title: 'Home'),
      body: SingleChildScrollView(
        child: matches == null || players == null
            ? Container(
                alignment: Alignment.center,
                height: 300,
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Leagues', style: h16w600),
                        Text('See all', style: h12w400),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...list.take(10).map((e) => LeaguesListItem(
                              tr: e,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      child: Text('Next Games', style: h16w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...matches!.tournaments
                            .take(10)
                            .map((e) => NextMatchesItem(tr: e)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Top Players', style: h16w600),
                        Text('See all', style: h12w400),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...players!.playersMap.values.take(10).map(
                              (e) => InkWell(
                                onTap: () => Get.to(BestPlayerPage(
                                    player: e,
                                    event: matches!
                                        .tournaments.first.Events.first)),
                                child: PlayersItem(
                                  player: e,
                                ),
                              ),
                            ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
      ),
    );
  }
}
