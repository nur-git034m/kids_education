import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState audioPlayerState = PlayerState.PAUSED;
  late AudioCache audioCache;
  String path = 'river.mp3';

  @override
  void initState() {
    super.initState();
    audioCache = AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.onPlayerStateChanged.listen((PlayerState s) {
      setState(() {
        audioPlayerState = s;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.release();
    audioPlayer.dispose();
  }

  playMusic() async {
    await audioCache.play(path);
  }

  pauseMusic() async {
    await audioPlayer.pause();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IQ BALA'),
        leading: IconButton(
          icon: SvgPicture.asset('assets/svg/back.svg'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: SvgPicture.asset('assets/svg/menu.svg'),
          )
        ],
      ),
      body: GestureDetector(
        onTap: () {
          playMusic();
          // player.play('river.mp3');
          showAlertDialog(context);
        },
        child: Stack(
          children: [
            Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/new_png/sun.png',
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/new_png/mountain.png',
                        height: 250,
                      ),
                      Image.asset(
                        'assets/new_png/birds.png',
                        height: 100,
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
                top: 360,
                left: 30,
                child: Image.asset(
                  'assets/new_png/shop.png',
                  height: 150,
                )),
            Positioned(
                top: 440,
                left: 50,
                child: Image.asset(
                  'assets/new_png/shop.png',
                  height: 150,
                )),
            Positioned(
                top: 400,
                left: 40,
                child: Image.asset(
                  'assets/new_png/allTra.png',
                  height: 330,
                )),
            Positioned(
                top: 350,
                left: 240,
                child: Image.asset(
                  'assets/new_png/trees.png',
                  height: 340,
                )),
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        pauseMusic();
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Таулар"),
      content: Text("Оширу"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
