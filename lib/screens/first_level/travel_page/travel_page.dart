import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TravelPage extends StatefulWidget {
  TravelPage({Key? key}) : super(key: key);

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
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
      body: Stack(
        children: [
          Column(
            children: [
              Center(
                child: Image.asset('assets/new_png/sun.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/new_png/mountain.png'),
                    Image.asset('assets/new_png/birds.png')
                  ],
                ),
              )
            ],
          ),
          Positioned(
              top: 360,
              left: 30,
              child: Image.asset('assets/new_png/shop.png')),
          Positioned(
              top: 400,
              left: 70,
              child: Image.asset('assets/new_png/shop.png')),
          Positioned(
              top: 400,
              left: 70,
              child: Image.asset('assets/new_png/allTra.png')),
          Positioned(
              top: 380,
              left: 250,
              child: Image.asset('assets/new_png/trees.png')),
        ],
      ),
    );
  }
}
