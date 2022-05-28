import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kids_education/screens/second_level/traditions/web_view.dart';

class SevenDadTraditonsPage extends StatefulWidget {
  const SevenDadTraditonsPage({Key? key}) : super(key: key);

  @override
  State<SevenDadTraditonsPage> createState() => _SevenDadTraditonsPageState();
}

class _SevenDadTraditonsPageState extends State<SevenDadTraditonsPage> {
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
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              width: 321,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  primary: Colors.green,
                ),
                onPressed: null,
                child: const Text(
                  'Шілдехана',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Image.asset('assets/new_png/tra2.jpg'),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      'Өз ұрпағына жеті атасын үйрету атадан балаға жалғасып келе жатқан қазақтың тәрбиелік дәстүрі екені баршаға аян. Мұның қандастық жағынан алғанда үлгі боларлық зор қызметі мен маңызын халқымыз ерте түсінген және оны берік ұстанып келген. Енді осы қағиданың терең тамырына көз жіберіп көрейік. Біріншіден, жеті ата тәртібі туыстық, ағайындық бірлікті, ынтымақты ұстана отырып, бір ауыл, бір бауыр болып өмір сүрген. Бір рудың адамдары осы күнге дейін бір жерде мекендеп келе жатыр.',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 320,
              height: 44,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  primary: Colors.green,
                ),
                onPressed: () {
                       Navigator.push(context,
           MaterialPageRoute(builder: (context) =>  WebViewPage()));
                },
                child: const Text(
                  'Жети атамды билгим келеди?!',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
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
