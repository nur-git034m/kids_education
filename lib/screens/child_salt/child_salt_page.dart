import 'package:flutter/material.dart';

class ChildSaltPage extends StatefulWidget {
  ChildSaltPage({Key key}) : super(key: key);

  @override
  _ChildSaltPageState createState() => _ChildSaltPageState();
}

class _ChildSaltPageState extends State<ChildSaltPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cалт-дәстүрлер'),
        backgroundColor: Colors.green[200],
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),
        onPressed: (){Navigator.pop(context);},),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Қазақ халқы той-думанға, салт-дәстүр мен жоралғыға бай халық. Баланың туылғанына бастап отау құрып, балалы болғанына дейін толып тұрған салт. Балаға арналған сондай салт-дәстүрлердің кең таралғандарын ұсынып отырмыз.',style: TextStyle(fontSize: 15),),
          ),
          Container(
            decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xFFF8F8F8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5,
                                        spreadRadius: 4,
                                        offset: const Offset(0, 5),
                                      ),
                                    ],
                                  ),
            margin: EdgeInsets.symmetric(vertical: 1,horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network('https://toibiznes.kz/imagecache/original/images/23052017163249_1.jpg',height: 180,width: 150,),
                
                Text('Шілдехана.\n Нәрестенің дүниеге келген\n құрметіне арналған\nсалт-дәстүр шілдехана.\n Бүгінде жас сәбидің\n дүниеге келгеніне той\n жасау рәсімге айналған.'),
              ],
            ),
          ),
          SizedBox(height:23 ,),
           Container(
            decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xFFF8F8F8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5,
                                        spreadRadius: 4,
                                        offset: const Offset(0, 5),
                                      ),
                                    ],
                                  ),
            margin: EdgeInsets.symmetric(vertical: 1,horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network('http://bilim-all.kz//uploads/images/2019/01/07/original/8969ab29f9482fdad714bdad3589d8c2.jpg',height: 180,width: 150,),
                
                Text('Бесіктой.\n Нәрестенің дүниеге келген\n құрметіне арналған\nсалт-дәстүр шілдехана.\n Бүгінде жас сәбидің\n дүниеге келгеніне той\n жасау рәсімге айналған.'),
              ],
            ),
          ),
          SizedBox(height:23 ,),
           Container(
            decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xFFF8F8F8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5,
                                        spreadRadius: 4,
                                        offset: const Offset(0, 5),
                                      ),
                                    ],
                                  ),
            margin: EdgeInsets.symmetric(vertical: 1,horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network('http://bilim-all.kz//uploads/images/2019/01/07/original/8969ab29f9482fdad714bdad3589d8c2.jpg',height: 180,width: 150,),
                
                Text('Бесіктой.\n Нәрестенің дүниеге келген\n құрметіне арналған\nсалт-дәстүр шілдехана.\n Бүгінде жас сәбидің\n дүниеге келгеніне той\n жасау рәсімге айналған.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
