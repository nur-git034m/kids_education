import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NumberPage extends StatefulWidget {
  NumberPage({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 150),
              child: Container(
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
                    title: const Text(
                      '1',
                      style: TextStyle(fontSize: 56, color: Color(0xFFEC1C24)),
                    ),
                    trailing: IconButton(onPressed: (){},icon: const Icon(Icons.music_note),),
                  )),
            ),
    //          Padding(
    //           padding: const EdgeInsets.only(left: 100, right: 150),
    //           child: Container(
    //               decoration: const BoxDecoration(
    //                 color: Colors.white,
    //                 borderRadius: BorderRadius.only(
    //                   topLeft: Radius.circular(20.0),
    //                   topRight: Radius.circular(20.0),
    //                   bottomLeft: Radius.circular(13.0),
    //                   bottomRight: Radius.circular(13.0),
    //                 ),
    //                 boxShadow: [
    //                   BoxShadow(
    //                     color: Colors.black38,
    //                     blurRadius: 1,
    //                     spreadRadius: 1,
    //                     offset: Offset(0, 4),
    //                   ),
    //                 ],
    //               ),
    //               child: Row(
    //                 children: [
    // //  SvgPicture.asset('assets/svg/ball.svg'),
    //       SvgPicture.asset('assets/svg/ball.svg'),
    //                   ListTile(
    //                     // leading: Row(
    //                     //   children: [
    //                         // SvgPicture.asset('assets/svg/ball.svg'),
    //                     //      SvgPicture.asset('assets/svg/ball.svg'),
    //                     //   ],
    //                     // ),
    //                     title: const Text(
    //                       '2',
    //                       style: TextStyle(fontSize: 56, color: Color(0xFFEC1C24)),
    //                     ),
    //                     trailing: IconButton(onPressed: (){},icon: const Icon(Icons.music_note),),
    //                   ),
    //                 ],
    //               )),
    //         )
          ],
        ),
      ),
    );
  }
}
