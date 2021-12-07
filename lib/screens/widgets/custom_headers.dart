import 'package:flutter/material.dart';
import 'package:kids_education/screens/mini_games/drag_drop/color_game.dart';

class Header extends StatelessWidget {
  Header({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}

class SubHeader extends StatelessWidget {
  SubHeader({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class PictureCard extends StatelessWidget {
  PictureCard({required this.imageAsset});
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/loading.gif',
        image: imageAsset,
        width: 25,
        height: 25,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      height: 100,
      width: 150,
      margin: EdgeInsets.only(left: 10, right: 10),
    );
  }
}

class DrawerAppbar extends StatelessWidget {
  const DrawerAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2014/10/04/22/29/monkey-474147_1280.png'),
            ),
            accountEmail: Text('kids_education@example.com'),
            accountName: Text(
              'Niggaдяй',
              style: TextStyle(fontSize: 24.0),
            ),
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Шағын ойындар',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Divider(),
          ListTile(
            leading: SizedBox(
              height: 60.0,
              width: 60.0, // fixed width and height
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2017/03/15/06/24/owl-2145244_1280.png'),
            ),
            title: const Text(
              'Drag and drop',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ColorGame()),
  );
            },
          ),
          ListTile(
           leading: SizedBox(
              height: 60.0,
              width: 60.0, // fixed width and height
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2021/02/26/14/06/hare-6051946_1280.png'),
            ),
            title: const Text(
              'Угадай на память',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
