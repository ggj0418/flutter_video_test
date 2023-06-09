import 'package:flutter/material.dart';
import 'package:flutter_meedu_videoplayer/meedu_player.dart';
import 'package:testdd/pages/basic_example_page.dart';
import 'package:testdd/pages/change_quality_example_page.dart';
import 'package:testdd/pages/custom_icons_example.dart';
import 'package:testdd/pages/disabled_buttons_example_page.dart';
import 'package:testdd/pages/fullscreen_example_page.dart';
import 'package:testdd/pages/gridview_example.dart';
import 'package:testdd/pages/listview_example.dart';
import 'package:testdd/pages/network_with_subtitle_page.dart';
import 'package:testdd/pages/one_page_to_other_page_example.dart';
import 'package:testdd/pages/playback_speed_example_page.dart';
import 'package:testdd/pages/player_with_header_page.dart';
import 'package:testdd/pages/portrait_example_page.dart';

void main() {
  initMeeduPlayer();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        "basic": (_) => const BasicExamplePage(),
        "fullscreen": (_) => const FullscreenExamplePage(),
        "with-header": (_) => const PlayerWithHeaderPage(),
        "subtitles": (_) => const NetworkWithSubtitlesPage(),
        "playback-speed": (_) => const PlayBackSpeedExamplePage(),
        "quality-change": (_) => const ChangeQualityExamplePage(),
        "one-page-to-other": (_) => const OnePageExample(),
        "custom-icons": (_) => const CustomIconsExamplePage(),
        "disabled-buttons": (_) => const DisabledButtonsExample(),
        "listview": (_) => const ListViewExample(),
        "gridview": (_) => const GridViewExample(),
        "portrait": (_) => const PortraitExamplePage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'basic');
            },
            child: const Text("Basic Network example"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'fullscreen');
            },
            child: const Text("Fullscreen example"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'with-header');
            },
            child: const Text("With header example"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'subtitles');
            },
            child: const Text("With subtitles example"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'playback-speed');
            },
            child: const Text("Playback speed example"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'quality-change');
            },
            child: const Text("Quality Change example"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'one-page-to-other');
            },
            child: const Text("One Page to other"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'pick-file');
            },
            child: const Text("Pick file"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'custom-icons');
            },
            child: const Text("Custom Icons"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'disabled-buttons');
            },
            child: const Text("Disabled Buttons"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'listview');
            },
            child: const Text("ListView"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'gridview');
            },
            child: const Text("GridView"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'portrait');
            },
            child: const Text("Portrait"),
          )
        ],
      ),
    );
  }
}
