import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_meedu_videoplayer/meedu_player.dart';

class BasicExamplePage extends StatefulWidget {
  const BasicExamplePage({Key? key}) : super(key: key);

  @override
  _BasicExamplePageState createState() => _BasicExamplePageState();
}

class _BasicExamplePageState extends State<BasicExamplePage> {
  final _meeduPlayerController = MeeduPlayerController(
      controlsStyle: ControlsStyle.primary,
      enabledControls: EnabledControls(seekSwipes: false, volumeSwipes: false, brightnessSwipes: false));

  StreamSubscription? _playerEventSubs;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _init();
    });
  }

  @override
  void dispose() {
    _playerEventSubs?.cancel();
    _meeduPlayerController.dispose();
    super.dispose();
  }

  _init() {
    _meeduPlayerController.setDataSource(
      DataSource(
        type: DataSourceType.network,
        source:
            "https://movietrailers.apple.com/movies/paramount/the-spongebob-movie-sponge-on-the-run/the-spongebob-movie-sponge-on-the-run-big-game_h720p.mov",
      ),
      autoplay: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: MeeduVideoPlayer(
                controller: _meeduPlayerController,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _meeduPlayerController.seekTo(const Duration(seconds: 10));
              },
              child: Text('10 초로 가시오'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _meeduPlayerController.seekTo(const Duration(seconds: 3));
              },
              child: Text('3 초로 가시오'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _meeduPlayerController.seekTo(const Duration(seconds: 8));
              },
              child: Text('8 초로 가시오'),
            ),
          ],
        ),
      ),
    );
  }
}
