import 'package:flutter/material.dart';
import 'package:netfix/pages_widgets/home_cards/bottom_sheet.dart';
import 'package:netfix/pages_widgets/home_cards/fonts.dart';

class HomeCard extends StatelessWidget {
   HomeCard({ Key? key,required this.heading,required this.movielist ,this.height ,this.width,required this.img}) : super(key: key);
  List  movielist=[];
  String? heading;
  double? height;
  double? width;
  String img;
  @override
  
  Widget build(BuildContext context) {
    final  size= MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Column(
        children: [
           SizedBox(
            height:size.height * 0.07,
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05),
              child: Row(
                children: [
                  TextModify(
                    text: heading,
                    colors: Colors.white,
                    fontsize: 20,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height:height??size.height*0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movielist.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Detailes(
                            img: 'https://image.tmdb.org/t/p/w500' +
                               movielist[index]['poster_path'],
                            title: movielist[index]
                                    ['original_title'] ??
                                'Loading......',
                            titledetailes: movielist[index]
                                    ['overview'] ??
                                'Loading......',
                            bgimg: 'https://image.tmdb.org/t/p/w500' +
                                movielist[index]
                                    ['backdrop_path'],
                            relesedate: movielist[index]
                                    ['release_date'] ??
                                'Loading......',
                            rating: movielist[index]
                                    ['vote_average'] ??
                                'Loading......',
                          );
                        });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                     width: width,
                      color: Colors.white,
                      child:
                          Image.network(
                        'https://image.tmdb.org/t/p/w500' +
                            movielist[index][img],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
