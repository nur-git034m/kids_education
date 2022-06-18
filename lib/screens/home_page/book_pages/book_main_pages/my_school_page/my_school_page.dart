
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kids_education/data/cubit/book_cubit/book_cubit.dart';

class MySchoolPage extends StatefulWidget {
  const MySchoolPage({Key? key}) : super(key: key);

  @override
  State<MySchoolPage> createState() => _MySchoolPageState();
}

class _MySchoolPageState extends State<MySchoolPage> {
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
                            'assets/new_png/4.jpeg',
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
                            'assets/new_png/5.jpeg',
                            width: 300,
                          ),
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
                            'assets/new_png/1.jpeg',
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
                            'assets/new_png/5.jpeg',
                            width: 300,
                          ),
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
                            'assets/new_png/1.jpeg',
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
                            'assets/new_png/2.jpeg',
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
