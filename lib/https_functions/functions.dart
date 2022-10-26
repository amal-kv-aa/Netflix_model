import 'package:flutter/material.dart';
import 'package:netfix/Common_use/loop/num.dart';
import 'package:netfix/infrastructure/api_key.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Apifunction extends StatefulWidget {
 const Apifunction({Key? key}) : super(key: key);

  static List tredingMovies = [];
  static List comingsoon = [];
  static List tvshow = [];
  static List movies = [];
  static List getpopular = [];
  static getmovies() async {
    TMDB tmdbithcoustomLogs = TMDB(ApiKeys(Api.key,Api.readaccesstoken),
        logConfig: const ConfigLogger(
          showLogs: true,
          showErrorLogs: true,
        ));
    Map tredingresult = await tmdbithcoustomLogs.v3.trending.getTrending();
    Map tvshowresult = await tmdbithcoustomLogs.v3.tv.getPopular();
    Map movieresults = await tmdbithcoustomLogs.v3.movies.getTopRated();
    Map comingsoon = await tmdbithcoustomLogs.v3.movies.getUpcoming();
    Map getpopular = await tmdbithcoustomLogs.v3.movies.getPopular();
    Apifunction.tredingMovies = tredingresult['results'];
    Apifunction.tvshow = tvshowresult['results'];
    Apifunction.movies = movieresults['results'];
    Apifunction.comingsoon = comingsoon['results'];
    Apifunction.getpopular = getpopular['results'];
  }
  @override
  State<Apifunction> createState() => _ApifunctionState();
}

class _ApifunctionState extends State<Apifunction> {
  @override
  Widget build(BuildContext context) {
    NumLoop.getnumvalue(1);
    return Container();
  }
}
