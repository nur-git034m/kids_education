import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kids_education/screens/first_level/learn_page.dart';
import 'package:kids_education/screens/home_page/book_pages/book_main_page.dart';
import 'package:kids_education/screens/home_page/mini_games/mini_games_page.dart';

import 'package:kids_education/screens/second_level/second_level_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 42.0, right: 43, top: 46),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: Image.asset('assets/new_png/cloud.png')),
              boxToLevel('Уйренейік', () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BookMainPage()),
                );
              }),
              boxToLevel('Бастауыш деңгей', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LearnPage()),
                );
              }),
              boxToLevel('Салт-дәстүр-ауыз әдебиеті', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondLevel()),
                );
              }),
              boxToLevel('Ойындар', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MiniGamesPage()),
                );
              }),
              SvgPicture.asset('assets/svg/trees.svg')
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector boxToLevel(String text, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        width: 285,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              color: Color(0xFF41A4BA),
              fontSize: 20,
              fontWeight: FontWeight.w400),
        )),
      ),
    );
  }
}
