import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kids_education/screens/first_level/animals_page/animals_page.dart';
import 'package:kids_education/screens/first_level/colors_page/colors_page.dart';
import 'package:kids_education/screens/first_level/number_page/number_page.dart';
import 'package:kids_education/screens/first_level/travel_page/travel_page.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            const Center(
              child: Text(
                'Бірге уйренейік',
                style: TextStyle(
                    color: Color(0xFF375495),
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AnimalsPage()),
                );
              },
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    width: 217,
                    height: 108,
                    child: const Center(
                      child: Text(
                        'Жануарлар',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFF26322),
                            fontSize: 30),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/new_png/tigr.png',
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ColorsPage()),
                );
              },
              child: Row(
                children: [
                  Image.asset(
                    'assets/new_png/pen.png',
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    width: 217,
                    height: 108,
                    child: const Center(
                      child: Text(
                        'Түстер',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF986FF9),
                            fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NumberPage()),
                );
              },
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    width: 217,
                    height: 108,
                    child: const Center(
                      child: Text(
                        'Сандар',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF689F38),
                            fontSize: 30),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/new_png/nums.png',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  TravelPage()),
                );
              },
              child: Row(
                children: [
                  Image.asset(
                    'assets/new_png/flowers.png',
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    width: 217,
                    height: 108,
                    child: const Center(
                      child: Text(
                        'Табиғат',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFF3D00),
                            fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
