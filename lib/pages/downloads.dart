import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netfix/application/bloc/downloads_bloc.dart';
import 'package:netfix/infrastructure/api_key.dart';
import 'package:netfix/pages_widgets/download_widgets/app_bard_widget.dart';
import 'package:netfix/pages_widgets/download_widgets/stack_img.dart';
import 'package:netfix/pages_widgets/home_cards/fonts.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
     WidgetsBinding.instance.addPostFrameCallback((_){
      BlocProvider.of<DownloadsBloc>(context)
        .add(const DownloadsEvent.getDownloadsImages());
     });
   
        
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: TextModify(
          text: 'Downloads',
          colors: Colors.white,
          fontsize: 18,
        ),
        actions: [
          const AppbarWidget(),
          SizedBox(
            width: size.width * 0.05,
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.04),
        child: BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
          return 
             SizedBox(
              height: size.height,
              width: size.width,
              child: ListView(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.settings,
                        color: Colors.white54,
                      ),
                      TextModify(
                        text: 'Smart Downloads',
                        colors: Colors.white54,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                    child: TextModify(
                      text: 'Introducing Downloads For You',
                      colors: Colors.white,
                      fontsize: 20,
                    ),
                  ),
                  TextModify(
                    text:
                        "we'll download a personalised selection of movies and shows for you,so there's always something to watch on your phone.",
                    colors: Colors.white54,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Stack(alignment: Alignment.center, children: [
                   
                     CircleAvatar(
                      radius: size.height * 0.18,
                      backgroundColor: const Color.fromARGB(255, 50, 50, 50),
                    ),
                    state.isLoading ?const CircularProgressIndicator():
                    ImageCollaps(
                      height: size.height * 0.23,
                      width: size.width * 0.37,
                      angle: 40 * pi / 260,
                      img: '${Api.apendurl}${state.downloads![0].posterPath}',
                      mrgleft: 120,
                      mrgright: 0.0,
                      margbottom: size.height * 0.07,
                    ),
                    state.isLoading ?const CircularProgressIndicator():
                    ImageCollaps(
                        height: size.height * 0.23,
                        width: size.width * 0.37,
                        angle: -40 * pi / 260,
                        img: '${Api.apendurl}${state.downloads![3].posterPath}',
                        mrgright: 120,
                        margbottom: size.height * 0.07,
                        mrgleft: 0.0),
                      state.isLoading ?const CircularProgressIndicator():
                    ImageCollaps(
                      height: size.height * 0.29,
                      width: size.width * 0.39,
                      angle: 0.0,
                      img: '${Api.apendurl}${state.downloads![6].posterPath}',
                      mrgleft: 0.0,
                      mrgright: 0.0,
                    )
                  ]),
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: TextModify(
                        text: 'Set Up',
                        colors: Colors.white,
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
