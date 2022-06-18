import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kids_education/screens/home_page/mini_games/drag_drop/color_game.dart';
import 'package:kids_education/screens/home_page/mini_games/gues_for_memory/home_gues.dart';


class MiniGamesPage extends StatefulWidget {
  MiniGamesPage({Key? key}) : super(key: key);

  @override
  State<MiniGamesPage> createState() => _MiniGamesPageState();
}

class _MiniGamesPageState extends State<MiniGamesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'IQ BALA',
            style: TextStyle(
                fontSize: 36, color: Colors.black, fontWeight: FontWeight.w700),
          ),
          leading: IconButton(
            icon: SvgPicture.asset('assets/svg/back.svg'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: const [
            Image(image: AssetImage('assets/game_png/c_deer.png')),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 344,
              height: 54,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  primary: Colors.green,
                ),
                onPressed: null,
                child: const Text(
                  'Ойындар',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 344,
              height: 54,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  primary: Colors.red,
                ),
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const ColorGame()),
                  );
                },
                child: const Text(
                  'Жұптарды қосу',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 344,
              height: 54,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  primary: Colors.purple,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeGuess()),
                  );
                },
                child: const Text(
                  'Жадынан болжау',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 344,
              height: 54,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  primary: Colors.blue,
                ),
                onPressed: () {},
                child: const Text(
                  'Артық элемент',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 344,
              height: 54,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  primary: Colors.yellow,
                ),
                onPressed: () {},
                child: const Text(
                  'Математика',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 344,
              height: 54,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  primary: Colors.pink,
                ),
                onPressed: () {},
                child: const Text(
                  'Түстер',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
