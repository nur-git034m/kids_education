import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MePages extends StatefulWidget {
  const MePages({Key? key}) : super(key: key);

  @override
  State<MePages> createState() => _MePagesState();
}

class _MePagesState extends State<MePages> {
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
  @override
  Widget build(BuildContext context) {
    int pageIndex = 0;
    final PageController _controller = PageController(initialPage: 0);

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                /// [PageView.scrollDirection] defaults to [Axis.horizontal].
                /// Use [Axis.vertical] to scroll vertically.
                controller: _controller,
                onPageChanged: (int index) {
                  setState(() {
                    pageIndex = index;
                  });
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
                          Image.asset('assets/new_png/image1.png'),
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
                          Image.asset('assets/new_png/image3.png')
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
                          Image.asset('assets/new_png/images4.png'),
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
                          Image.asset('assets/new_png/images5.png')
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
                          Image.asset('assets/new_png/images6.png'),
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
                          Image.asset('assets/new_png/images7.png')
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
                        _controller.nextPage(
                            duration: Duration(microseconds: 1000),
                            curve: Curves.bounceInOut);
                      },
                      child: Text('Next')),
                  ElevatedButton(
                      onPressed: () {
                        _controller.previousPage(
                            duration: Duration(microseconds: 1000),
                            curve: Curves.bounceInOut);
                      },
                      child: Text('Last')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
