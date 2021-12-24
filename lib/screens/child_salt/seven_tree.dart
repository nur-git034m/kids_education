import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:kids_education/screens/child_salt/web_view.dart';

class SevenTreePage extends StatefulWidget {
  SevenTreePage({Key key}) : super(key: key);

  @override
  _SevenTreePageState createState() => _SevenTreePageState();
}

class _SevenTreePageState extends State<SevenTreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('7 АТА Жүйесі'),
        backgroundColor: Colors.green[200],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Center(
              child: Image.network(
            'https://osken-onir.kz/uploads/posts/2018-06/1528006885_ata-turaly.jpg',
            height: 330,
            width: 330,
          )),
          ListTile(
            title: Text(
              'Жеті ата ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Қазақ халқының дәстүрлі салт-санасындағы адамның ата жағынан тегі таратылуының нақтылы жүйесі. Бала өзінен бастап әкесі, атасы, бабасы, т.б., жеті атасының нақтылы есімдерін кішкентайынан жаттап өседі.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 23,
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 13, horizontal: 23),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green[200],
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 4,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: TextButton(
                  onPressed: () {
                     Navigator.push(context,
          MaterialPageRoute(builder: (context) =>  WebViewPage()));
                  },
                  child: Text(
                    'Жеті атамды білгім келеді!?',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )))
        ],
      ),
    );
  }
}
