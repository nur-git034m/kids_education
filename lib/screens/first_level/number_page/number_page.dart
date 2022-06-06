import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({Key? key}) : super(key: key);

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
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
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: numberListTile(text: '1', onTap: () {}),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: numberListTile(text: '2', onTap: () {}),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: numberListTile(text: '3', onTap: () {}),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: numberListTile(text: '4', onTap: () {}),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: numberListTile(text: '5', onTap: () {}),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: numberListTile(text: '6', onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector numberListTile({
    required String? text,
    required Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 204,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(13.0),
              bottomRight: Radius.circular(13.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 1,
                spreadRadius: 1,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: ListTile(
            leading: SvgPicture.asset('assets/svg/ball.svg'),
            title: Text(
              text!,
              style: const TextStyle(fontSize: 56, color: Color(0xFFEC1C24)),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.music_note),
            ),
          )),
    );
  }
}
