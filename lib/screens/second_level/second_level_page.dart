import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kids_education/screens/second_level/misterious_quick_read/misterious_page.dart';
import 'package:kids_education/screens/second_level/misterious_quick_read/quick_read_page.dart';
import 'package:kids_education/screens/second_level/mys_video/audio.dart';
import 'package:kids_education/screens/second_level/mys_video/video.dart';
import 'package:kids_education/screens/second_level/traditions/seven_dad.dart';
import 'package:kids_education/screens/second_level/traditions/traditions_page.dart';

class SecondLevel extends StatefulWidget {
  SecondLevel({Key? key}) : super(key: key);

  @override
  State<SecondLevel> createState() => _SecondLevelState();
}

class _SecondLevelState extends State<SecondLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('IQ BALA',
            style: TextStyle(
                color: Colors.black,
                fontSize: 37,
                fontWeight: FontWeight.w700)),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset('assets/svg/back.svg')),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: SvgPicture.asset('assets/svg/menu.svg'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(27.0),
          child: Column(
            children: [
              SizedBox(
                width: 326,
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
                    'Ертегiлер',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/new_png/aldar.png'),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 117,
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            primary: Colors.green,
                          ),
                          onPressed: () {
                             Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => AudioTales()),
               );
                          },
                          child: const Text(
                            'Аудио',
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
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/new_png/lisa.png'),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 117,
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            primary: Colors.green,
                          ),
                          onPressed: () {
                                Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => VideoPlayerScreen()),
               );
                          },
                          child: const Text(
                            'Видео',
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 326,
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
                    'Бiлiмдiлiк',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/new_png/tom1.png'),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 117,
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            primary: Colors.green,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MistriousPage()),
                            );
                          },
                          child: const Text(
                            'Жумбак',
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
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/new_png/tom2.png'),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 117,
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            primary: Colors.green,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuickReadPage()),
                            );
                          },
                          child: const Text(
                            'Жанылтпаш',
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 326,
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
                    'Салт-дастурлер',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/new_png/bab.png'),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 117,
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            primary: Colors.green,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TraditionsPage()),
                            );
                          },
                          child: const Text(
                            'Балага\nкатысты',
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
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/new_png/fam.png'),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 117,
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            primary: Colors.green,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SevenDadTraditonsPage()),
                            );
                          },
                          child: const Text(
                            'Жети ата',
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
