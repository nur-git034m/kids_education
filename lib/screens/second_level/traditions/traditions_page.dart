import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TraditionsPage extends StatefulWidget {
  const TraditionsPage({Key? key}) : super(key: key);

  @override
  State<TraditionsPage> createState() => _TraditionsPageState();
}

class _TraditionsPageState extends State<TraditionsPage> {
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
                    Image.asset('assets/new_png/tra1.png'),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      'Нәрестенің дүниеге келген құрметіне арналған салт-дәстүрлердің бірі – шілдехана. Бүгінде жас сәбидің дүниеге келгеніне той жасау рәсімге айналған.Жас бала алғаш жолға шыққанда жасалатын дәстүрлі бас қосу. Мұнда арнаулы мал сойылып немесе сыйлы мүшелер салынып ет асылып, кең дастарқан жасалады, ойын-сауық, өлең-жыр айтылады. Бұл сапарға шықққан жігіттің тоқымы жерде қалмасын, ат-көлігі аман келсін деген жақсы тілек білдірудің белгісі.',
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
                      'Бұл – туған-туыстардың жиылып, нәрестені бесікке салу дәстүрі. "Бесік алып бару" – қазақтың бір жерге келін болып түскен қызы тұңғышын босанғанда орындалатын дәстүрі. Бесіктің жасауын қыздың анасы даярлайды. Оған қоса киетін, зергерлік бұйымдармен дастарқанға қойылатын тәттілерін салып алып барады. Алып барған китінің ішіне тоғыз түрлі заттар салады. Тоғызға бағалы киімнен бастап, ұсақ заттар да кіреді.',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
