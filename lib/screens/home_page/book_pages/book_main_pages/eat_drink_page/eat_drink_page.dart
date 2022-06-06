import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EatDrinkPage extends StatefulWidget {
  const EatDrinkPage({Key? key}) : super(key: key);

  @override
  State<EatDrinkPage> createState() => _EatDrinkPageState();
}

class _EatDrinkPageState extends State<EatDrinkPage> {
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

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        Padding(
          padding:  const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                ListTile(
                  leading: Image.asset('assets/new_png/earphones.png'),
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
                  leading: Image.asset('assets/new_png/earphones.png'),
                  title: const Text('Тыңда, қайтала!'),
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset('assets/new_png/image1.png')
              ],
            ),
          ),
        ),
        const Center(
          child: Text('Second Page'),
        ),
        const Center(
          child: Text('Third Page'),
        )
      ],
    );
  }
}
