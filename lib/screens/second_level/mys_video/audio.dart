

 import 'package:flutter/material.dart';
 import 'package:audioplayers/audioplayers.dart';

 class AudioTales extends StatefulWidget {
   const AudioTales({Key? key}) : super(key: key);

   @override
   State<AudioTales> createState() => _AudioTalesState();
 }

 class _AudioTalesState extends State<AudioTales> {
   AudioPlayer audioPlayer = AudioPlayer();
   PlayerState audioPlayerState = PlayerState.PAUSED;
    late AudioCache audioCache;
   String path = 'teremok.mp3';

   @override
   void initState() {
     super.initState();
     audioCache = AudioCache(fixedPlayer: audioPlayer);
     audioPlayer.onPlayerStateChanged.listen((PlayerState s) {
       setState(() {
         audioPlayerState = s;
       });
     });
   }

   @override
   void dispose() {
     // TODO: implement dispose
     super.dispose();
     audioPlayer.release();
     audioPlayer.dispose();

   }

   playMusic() async {
     await audioCache.play(path);
   }

   pauseMusic() async {
     await audioPlayer.pause();
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
           backgroundColor: Colors.green[200],
          title: const Text('Ертегілер'),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: const Icon( Icons.arrow_back_ios),),
         ),

       body: SingleChildScrollView(
         child: Column(
           children: [
             Container(
               padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(20.0),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.shade200,
                       offset: Offset(0, 4),
                       blurRadius: 10.0,
                     ),
                   ],
                 ),
               child: Column(

                 children: [
                   Column(
                     children: [
                       Image.network('https://www.zharar.com/uploads/posts/2016-01/1452457643_x_b722107e.jpg',width: 280,height: 200,),
                       SizedBox(
                         width: double.maxFinite,
                         height: 50,
                         child: TextButton(
                           style: TextButton.styleFrom(backgroundColor: Colors.green[200],),
                             onPressed: () {
                               audioPlayerState == PlayerState.PLAYING
                                   ? pauseMusic()
                                   : playMusic();
                             },
                             child: Text(audioPlayerState == PlayerState.PLAYING
                                 ? 'Тоқтату'
                                 : 'Tындау',style: const TextStyle(color: Colors.white),)),
                       ),
                     ],
                   ),
                   const SizedBox(height: 20,),

                   const Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Text('Бұл орманда болған оқиға еді. Ашық алаңқайда кіп-кішкентай ескі үйшік тұрған. Бірде оны қасынан жүгіріп өтіп бара жатқан тышқан көреді. Тышқан тоқтап:\n– Сүп-сүйкімді, кіп-кішкентай бұл үйшікте кім бар? – деп сұрайды.\nЕшкім жауап қайтармайды.Тышқан бос үйшікке кіріп, осында тұрып жатады.\nБіраз уақыттан кейін үйшіктің маңына секіріп бақа келеді.\n– Сүп-сүйкімді, кіп-кішкентай бұл үйшікте кім бар? \n– Мен тықырлауық тышқанмын! Ал сен кімсің?\n– Мен бақылдауық бақамын. – Кел, бірге тұрайық.\nБақа «бақ-бақ!» деп бақылдап, үйшікке секіріп кіреді. Тышқан екеуі тіл табысып, бірге тұрады.\nЕнді үйшік қасына ытқып-ытқып қоян жетеді.\n– Сүп-сүйкімді, кіп-кішкентай бұл үйшікте кім бар? – деп сұрайды.\n– Мен тықырлауық тышқанмын! \n– Мен бақылдауық бақамын. Ал сен кімсің?\n– Мен қорқақ қоянмын!\n– Кел, бірге тұрайық.\nҚоян да үйшікке кіреді. Осылай үшеуі бірге өмір сүре бастайды.\nАлыстан бұл үйшікті түлкі көреді. Ақырын басып жақын келіп, терезесін қағады да:\n– Сүп-сүйкімді, кіп-кішкентай бұл үйшікте кім бар? – деп сұрайды.\n– Мен тықырлауық тышқанмын! \n– Мен бақылдауық бақамын. \n– Мен қорқақ қоянмын! Ал сен кімсің?\n– Мен қу түлкімін!\n– Кел, бірге тұрайық.\nҮйшіктен түлкіге де орын табылды. Достар енді төртеу болды.\nҮйшікке тілі салақтап, айналасына алақ-жұлақ қарап қасқыр жетеді. Ол есікті қағып, қырылдаған дауысымен:\n– Сүп-сүйкімді, кіп-кішкентай бұл үйшікте кім бар? – деп сұрайды.\n– Мен тықырлауық тышқанмын! \n– Мен бақылдауық бақамын. \n– Мен қорқақ қоянмын! \n– Мен қу түлкімін! Ал сен кімсің? – Мен сұр қасқырмын!\n– Кел, бірге тұрайық.\nҚасқыр қысыла-қымтырыла ішке кіреді. Әйтсе де кіп-кішкентай үйшікке бесеуі де сыйып кетеді. Барлығы қосылып, ән айтады. Тату-тәтті өмір сүреді.\nБір күні жидек теріп жүрген аю үйшік тұрғындарының салған әнін естиді. Ол үйшікке жақын келіп, бар дауысымен:\– Сүп-сүйкімді, кіп-кішкентай бұл үйшікте кім бар? – деп ақырады.\n– Мен тықырлауық тышқанмын! \n– Мен бақылдауық бақамын. \n– Мен қорқақ қоянмын! \n– Мен қу түлкімін! \n– Ал мен болсам, сұр қасқырмын! \nАл сен кімсің?\n– Мен қорбаңбай аюмын! \n– Кел, бірге тұрайық.\nАю ары-бері тырбыңдап үйшікке кірмекші болады. Бірақ оның басы енгенімен, денесі сыймайды. Амалы таусылған аю:\n– Ендеше мен үйшіктің шатырына шығып тұрайын, – дейді.\n– Жоқ, сен дәусің! Сені кішкентай үйшігіміз көтере алмайды. Қиратасың ғой, – деп шырылдайды іштегілер. – Қорықпаңдар, түк те болмайды, – деп аю олардың сөздеріне құлақ аспайды.\nКіп-кішкентай үйшіктің тұрғындары амалсыздан келіседі. Аю қорбаңдап үйшіктің төбесіне шығады. Сол-ақ екен, ескі үйшік сықырлап, шашылып қалады. Тықырлауық тышқан, бақылдауық бақа, қорқақ қоян, қу түлкі, сұр қасқыр – барлығы аман-есен үйшіктен шығып үлгереді.\nАюға олар ренжімейді. Қайта барлығы бірігіп, бөренелерді тасып, тақтайларды сүргілеп, жаңа үйшік тұрғызуға кірісіп кетеді. Осылайша, достар өздеріне әп-әдемі, жап-жаңа үйшік соғып алыпты.\nsemanticsLabel: ',style: TextStyle(fontStyle: FontStyle.italic),),
                   )
                 ],
               ),

             )
           ],
         ),
       ),
     );
   }
 }