import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kids_education/screens/first_level/travel_page/travel_page.dart';
import 'package:kids_education/screens/home_page/book_pages/book_main_pages/eat_drink_page/eat_drink_page.dart';
import 'package:kids_education/screens/home_page/book_pages/book_main_pages/me_pages/me_pages.dart';
import 'package:kids_education/screens/home_page/book_pages/book_main_pages/my_family_page/my_family_page.dart';
import 'package:kids_education/screens/home_page/book_pages/book_main_pages/my_school_page/my_school_page.dart';
import 'package:kids_education/screens/home_page/book_pages/book_main_pages/nature_page/nature_page.dart';
import 'package:kids_education/screens/home_page/book_pages/book_main_pages/sport_page/sport_page.dart';
import 'package:kids_education/screens/second_level/traditions/traditions_page.dart';

class BookMainPage extends StatefulWidget {
  const BookMainPage({Key? key}) : super(key: key);

  @override
  State<BookMainPage> createState() => _BookMainPageState();
}

class _BookMainPageState extends State<BookMainPage> {
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: boxToLevel(
                    text: '???????? ????????????',
                    image: 'assets/new_png/people.png',
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MePages()),
                          )
                        })),
            Align(
                alignment: Alignment.centerLeft,
                child: boxToLevel(
                    text: ' ?????????? ????????????????',
                    image: 'assets/new_png/home.png',
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MySchoolPage()),
                          )
                        })),
            Align(
                alignment: Alignment.centerRight,
                child: boxToLevel(
                    text: '?????????? ??????????????',
                    image: 'assets/new_png/family.png',
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyFamilyPage()),
                          )
                        })),
            Align(
                alignment: Alignment.centerLeft,
                child: boxToLevel(
                    text: '???????????????? ????????',
                    image: 'assets/new_png/earth.png',
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NaturePage()),
                          )
                        })),
            Align(
                alignment: Alignment.centerRight,
                child: boxToLevel(
                    text: '????????????',
                    image: 'assets/new_png/chemo.png',
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TravelPage()),
                          )
                        })),
            Align(
                alignment: Alignment.centerLeft,
                child: boxToLevel(
                    text: '????????-???????????? ????????\n ???????? ??????????????',
                    image: 'assets/new_png/book.png',
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TraditionsPage()),
                          )
                        })),
            Align(
                alignment: Alignment.centerRight,
                child: boxToLevel(
                    text: '?????????? ???????? ??????????',
                    image: 'assets/new_png/ear.png',
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EatDrinkPage()),
                          )
                        })),
            Align(
                alignment: Alignment.centerLeft,
                child: boxToLevel(
                    text: '???????? ???????????? ??? ???????? ??????',
                    image: 'assets/new_png/temir.png',
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SportPage()),
                          )
                        })),
          ],
        ),
      ),
    );
  }

  GestureDetector boxToLevel({
    required String? text,
    required Function()? onTap,
    required String image,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image,
            ),
            Text(
              text!,
              style: const TextStyle(
                  color: Color(0xFF41A4BA),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
