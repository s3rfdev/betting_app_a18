import '../matches/matches.dart';

class MatchDetailsModel {
  MatchDetailsModel();
  Event? event;
  Info? info;
  Incedents? incedents;
  TableModel? table;
  H2H? h2h;
  H2H? h2h_1;
  H2H? h2h_2;
}

class Info {
  Info({required this.date, this.stadium, this.refName, this.refCountry});
  DateTime date;
  String? stadium;
  String? refName;
  String? refCountry;

  factory Info.fromJson(Map<String, Object?> json) {
    String date = (json['Esd'] as int).toString();
    String dateWithT = date.substring(0, 8) + 'T' + date.substring(8);
    DateTime dateTime = DateTime.parse(dateWithT);
    try {
      return Info(
        date: dateTime,
        stadium: json['Vnm'] as String,
        refName: (json['Refs'] as List)[0]['Nm'],
        refCountry: (json['Refs'] as List)[0]['Cn'],
      );
    } catch (e) {
      return Info(
        date: dateTime,
      );
    }
  }
}

class Incedents {
  Incedents({required this.parts});
  List<Part> parts;
  factory Incedents.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> map = json['Incs'];
    List<Part> parts = [];
    map.values.forEach(
      (p) {
        List<Incedent> incs = [];
        (p as List<dynamic>).forEach((e1) {
          Incedent i = Incedent.fromJson(e1);
          incs.add(i);
        });
        parts.add(Part(incedents: incs));
      },
    );
    return Incedents(parts: parts);
  }
}

class Part {
  Part({required this.incedents});
  List<Incedent> incedents;
  factory Part.fromJson(Map<String, Object?> json) {
    return Part(incedents: json as List<Incedent>);
  }
}

enum IncType { yellow, red, goal }

class Incedent {
  Incedent(
      {required this.min,
      required this.name,
      required this.type,
      this.isHome,
      this.score1,
      this.score2});
  int min;
  String? name;
  IncType type;
  String? score1;
  String? score2;
  bool? isHome;

  factory Incedent.fromJson(Map<String, Object?> json) {
    var type = IncType.goal;

    if (json.containsKey('IT')) {
      var it = json['IT'] as int;
      if (it == 43) {
        type = IncType.yellow;
      }
      if (it == 45) {
        type = IncType.red;
      }
    }

    String? _score1;
    String? _score2;
    String? _name;
    _name = json.containsKey('Ln') ? (json['Ln'] as String) : null;
    _name ??= json.containsKey('Pn') ? (json['Pn'] as String) : null;

    if (json.containsKey('Sc')) {
      type = IncType.goal;

      _score1 = (json['Sc'] as List<dynamic>)[0].toString();
      _score2 = (json['Sc'] as List<dynamic>)[1].toString();
      _name ??= (json['Incs'] as List<dynamic>)[0]['Ln'];
    }

    bool? isHome;
    if (json.containsKey('Nm')) {
      (json['Nm'] as int) == 1 ? isHome = true : isHome = false;
    }

    return Incedent(
      min: json['Min'] as int,
      name: _name,
      type: type,
      isHome: isHome,
      score1: _score1,
      score2: _score2,
    );
  }
}

class TableModel {
  TableModel({
    required this.tableData,
  });
  List<TableData> tableData;

  factory TableModel.fromJson(Map<String, Object?> json) {
    var data = (json['Stages'] as List<dynamic>)[0]['LeagueTable']['L'][0]
        ['Tables'][0]['team'] as List<dynamic>;
    List<TableData> list = [];
    data.forEach((el) {
      print(el.runtimeType);
      list.add(TableData.fromJson(el));
    });

    return TableModel(tableData: list);
  }
}

class TableData {
  TableData({
    required this.pos,
    required this.played,
    required this.gd,
    required this.pts,
    required this.teamName,
    required this.id,
    required this.img,
  });
  int pos;
  int played; //win+lost+draw
  int gd;
  String pts;
  String teamName;
  String id;
  String img;

  factory TableData.fromJson(Map<String, Object?> json) {
    return TableData(
      pos: json['rnk'] as int,
      played:
          (json['win'] as int) + (json['lst'] as int) + (json['drw'] as int),
      gd: json['gd'] as int,
      pts: json['ptsn'] as String,
      teamName: json['Tnm'] as String,
      id: json['Tid'] as String,
      img: json['Img'] as String,
    );
  }
}

class H2H {
  List<H2HModel>? h2hItems;
  H2H({required this.h2hItems});

  factory H2H.fromJson(Map<String, Object?> json, bool isHome) {
    List<H2HModel> h2hList = [];
    try {
      var list = json['H2H'] as List<dynamic>;

      list.forEach((el) {
        // var team1 = el['T1'] as Team;

        var team1 = Team.fromJson(el['T1'][0]);
        var team2 = Team.fromJson(el['T2'][0]);

        String tournamentId = el['Stg']['Sid'] ?? el['Stg']['ExSid'];
        String tournamentName = el['Stg']['Snm'];
        String tournamentLink = el['Stg']['Scd'] ?? '';
        String tournamentImg = el['Stg']['badgeUrl'] ?? '';
        String countryName = el['Stg']['Cnm'] ?? '';
        String countryCode = el['Stg']['Ccd'] ?? '';

        String date = (el['Esd'] as int).toString();
        String dateWithT = date.substring(0, 8) + 'T' + date.substring(8);
        DateTime dateTime = DateTime.parse(dateWithT);
        String status = el['Eps'] ?? '';
        String tr1 = '';
        String tr2 = '';
        int esd = el['Esd'] ?? 20180626170555;
        try {
          tr1 = el['Tr1'];
          tr2 = el['Tr2'];
        } catch (e) {}

        print('$tr1  $tr2');
        h2hList.add(H2HModel(
          team1: team1,
          team2: team2,
          tournamentId: tournamentId,
          tournamentName: tournamentName,
          tournamentLink: tournamentLink,
          tournamentImg: tournamentImg,
          countryName: countryName,
          countryCode: countryCode,
          date: dateTime,
          status: status,
          tr1: tr1,
          tr2: tr2,
          Esd: esd,
        ));
      });
    } catch (e) {
      var list = (json[isHome ? 'T1' : 'T2'] as List<dynamic>)[0]['EL']
          as List<dynamic>;
      print(list);
      list.forEach((el) {
        // var team1 = el['T1'] as Team;

        var team1 = Team.fromJson(el['T1'][0]);
        var team2 = Team.fromJson(el['T2'][0]);

        String tournamentId = el['Stg']['Sid'] ?? el['Stg']['ExSid'];
        String tournamentName = el['Stg']['Snm'];
        String tournamentLink = el['Stg']['Scd'] ?? '';
        String tournamentImg = el['Stg']['badgeUrl'] ?? '';
        String countryName = el['Stg']['Cnm'] ?? '';
        String countryCode = el['Stg']['Ccd'] ?? '';

        String date = (el['Esd'] as int).toString();
        String dateWithT = date.substring(0, 8) + 'T' + date.substring(8);
        DateTime dateTime = DateTime.parse(dateWithT);
        String status = el['Eps'] ?? '';
        String tr1 = '';
        String tr2 = '';
        int esd = el['Esd'] ?? 20180626170555;
        try {
          tr1 = el['Tr1'];
          tr2 = el['Tr2'];
        } catch (e) {}

        print('$tr1  $tr2');
        h2hList.add(H2HModel(
          team1: team1,
          team2: team2,
          tournamentId: tournamentId,
          tournamentName: tournamentName,
          tournamentLink: tournamentLink,
          tournamentImg: tournamentImg,
          countryName: countryName,
          countryCode: countryCode,
          date: dateTime,
          status: status,
          tr1: tr1,
          tr2: tr2,
          Esd: esd,
        ));
      });
    }
    return H2H(h2hItems: h2hList);
  }
}

class H2HModel {
  H2HModel({
    required this.team1,
    required this.team2,
    required this.tournamentId,
    required this.tournamentName,
    required this.tournamentLink,
    required this.tournamentImg,
    required this.countryName,
    required this.countryCode,
    required this.date,
    required this.status,
    required this.tr1,
    required this.tr2,
    required this.Esd,
  });
  Team team1;
  Team team2;
  String tournamentId;
  String tournamentName;
  String tournamentLink;
  String tournamentImg;
  String countryName;
  String countryCode;
  DateTime date;
  String status;
  String tr1;
  String tr2;
  int Esd;
}
