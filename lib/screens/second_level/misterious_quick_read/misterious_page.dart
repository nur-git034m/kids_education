import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MistriousPage extends StatefulWidget {
  MistriousPage({Key? key}) : super(key: key);

  @override
  State<MistriousPage> createState() => _MistriousPageState();
}

class _MistriousPageState extends State<MistriousPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'IQ BALA',
            style: TextStyle(
                fontSize: 36, color: Colors.black, fontWeight: FontWeight.w700),
          ),
          leading: IconButton(
            icon: SvgPicture.asset('assets/svg/back.svg'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: const [
            Image(image: AssetImage('assets/game_png/c_deer.png')),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
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
                onPressed: null,
                child: const Text(
                  'Әр түрлі жұмбақтар',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
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
              child: Center(
                child: Column(
                  children: const [
                    Text(
                      '1',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        'Барлығы бірдей саннан тұратын 5 тақ сандардың қосындысы 14 болса, бұл тақ сан қанша?',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
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
                onPressed: (){
answerBottomSheet();
                },
                child: const Text(
                  'Жауабы',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
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
  answerBottomSheet()
  {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            width: double.infinity,
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top:28.0),
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                SvgPicture.asset('assets/svg/party.svg'),
                const Text('11+1+1+1=14',style: TextStyle(fontSize: 28,color: Colors.black),)
              ],),),
            )
          );
        },
    );
  }

}
