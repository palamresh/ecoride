// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DriverTraining extends StatefulWidget {
  const DriverTraining({super.key});

  @override
  State<DriverTraining> createState() => _DriverTrainingState();
}

class _DriverTrainingState extends State<DriverTraining> {
  late YoutubePlayerController _controller;
  late YoutubePlayerController _controller1;

  @override
  void initState() {
    super.initState();
    const videoURL = 'https://www.youtube.com/watch?v=zLjRG-eq3vI';

    const video = "https://www.youtube.com/watch?v=gt11HAWWSVw";
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoURL) ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    _controller1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(video) ?? '',
      flags: const YoutubePlayerFlags(
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Driver Training',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: h * .03 / 1.2,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          SizedBox(
            height: h * .03,
          ),
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () {
              //   _controller.play();
              print('Player is ready.');
            },
            onEnded: (YoutubeMetaData data) {
              //    data.call();
              // Do something when video ends
            },
          ),
          SizedBox(
            height: h * .05,
          ),
          Text(
            '1.Master class on investment',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: h * .02,
                decoration: TextDecoration.none,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: h * .05,
          ),
          YoutubePlayer(
            controller: _controller1,
            showVideoProgressIndicator: true,
            onReady: () {
              _controller1.play();
              print('Player is ready.');
            },
            onEnded: (YoutubeMetaData data) {
              //    data.call();
              // Do something when video ends
            },
          ),
          SizedBox(
            height: h * .05,
          ),
          Text(
            '2.How to save more money',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: h * .02,
                decoration: TextDecoration.none,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ]),
      ),
    );
  }
}
