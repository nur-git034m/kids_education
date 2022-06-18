import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kids_education/data/cubit/book_cubit/book_cubit.dart';

class MePages extends StatefulWidget {
  const MePages({Key? key}) : super(key: key);

  @override
  State<MePages> createState() => _MePagesState();
}

class _MePagesState extends State<MePages> {
  @override
  void initState() {
    BlocProvider.of<BookCubit>(context).getBookInfo();
    super.initState();
  }

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
      body: const PageViewWidget(),
    );
  }
}

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState audioPlayerState = PlayerState.PAUSED;
  late AudioCache audioCache;
  String path = 'bok1.mp3';

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

  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (int index) {
                  setState(() {});
                },
                children: <Widget>[
                  BlocBuilder<BookCubit, BookState>(builder: (context, state) {
                    if (state is LoadedState) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                            separatorBuilder:
                                (BuildContext context, int index) => ListTile(
                                      leading: Image.asset(
                                          'assets/new_png/earphones.png'),
                                      title: const Text('Тыңда, қайтала!'),
                                    ),
                            padding: const EdgeInsets.all(8),
                            itemCount: state.book.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  playMusic();
                                  showAlertDialog(context, 'Өшіру');
                                },
                                child: Image.network(
                                  state.book[index].image!,
                                  fit: BoxFit.cover,
                                ),
                              );
                            }),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          ListTile(
                            leading:
                                Image.asset('assets/new_png/earphones.png'),
                            title: const Text(
                                'Суретке қара. Сана. Сұраққа жауап бер!'),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/new_png/whoAreYou.png',
                                width: 300,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Жауабын жаз!",
                                  fillColor: Colors.black,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black38, width: 2.0),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ListTile(
                            leading:
                                Image.asset('assets/new_png/earphones.png'),
                            title: const Text(
                                'Суретке қара. Сұрақтарға жауап бер'),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/new_png/whoIs.png',
                                width: 300,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              SizedBox(
                                width: 321,
                                height: 40,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    overlayColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed))
                                          return Colors.red; //<-- SEE HERE
                                        return null; // Defer to the widget's default.
                                      },
                                    ),
                                  ),
                                  onPressed: () {
                                    showAlertDialog(context, 'Қате жауап');
                                  },
                                  child: const Text(
                                    'әже',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 321,
                                height: 40,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    overlayColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed))
                                          return Colors.green; //<-- SEE HERE
                                        return null; // Defer to the widget's default.
                                      },
                                    ),
                                  ),
                                  onPressed: () {showAlertDialog(context, 'Дурыс жауап');},
                                  child: const Text(
                                    'мұғалім',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                          ListTile(
                            leading:
                                Image.asset('assets/new_png/earphones.png'),
                            title: const Text(
                                ' Суретке қара. Ойлан. Толықтырып айт!'),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset('assets/new_png/images5.png'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          ListTile(
                            leading:
                                Image.asset('assets/new_png/earphones.png'),
                            title: const Text('Тыңда, қайтала!'),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            'assets/new_png/3.jpeg',
                            width: 300,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ListTile(
                            leading:
                                Image.asset('assets/new_png/earphones.png'),
                            title: const Text('Тыңда, қайтала!'),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            'assets/new_png/4.jpeg',
                            width: 300,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _controller.previousPage(
                            duration: const Duration(microseconds: 1000),
                            curve: Curves.bounceInOut);
                      },
                      child: Image.asset(
                        'assets/new_png/pushRight.png',
                        height: 20,
                      )),
                  ElevatedButton(
                      onPressed: () {
                        _controller.nextPage(
                            duration: const Duration(microseconds: 1000),
                            curve: Curves.bounceInOut);
                      },
                      child: Image.asset(
                        'assets/new_png/pushLeft.png',
                        height: 20,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
 



  showAlertDialog(BuildContext context,String text) {
    // Create button
    Widget okButton = FlatButton(
      child: const Text("Өшіру"),
      onPressed: () {
        pauseMusic();
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      content:  Text(text),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
