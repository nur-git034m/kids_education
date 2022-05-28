import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ColorsPage extends StatefulWidget {
  ColorsPage({Key? key}) : super(key: key);

  @override
  State<ColorsPage> createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {
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
      body: Padding(
        padding: const EdgeInsets.only(left: 1.0, right: 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Center(
              child: Text(
                'Түстер',
                style: TextStyle(
                    color: Color(0xFF986FF9),
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/new_png/redBal.png'),
                Image.asset('assets/new_png/greenBal.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/new_png/blueBal.png'),
                Image.asset('assets/new_png/redBal.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/new_png/pinkBal.png'),
                Image.asset('assets/new_png/grayBal.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
