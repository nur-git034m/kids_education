import 'package:flutter/material.dart';
import 'package:kids_education/screens/child_salt/child_salt_page.dart';
import 'package:kids_education/screens/child_salt/seven_tree.dart';
import 'package:kids_education/screens/fairy_tales/audio_tales.dart';
import 'package:kids_education/screens/fairy_tales/video_page.dart';
import 'package:kids_education/screens/mini_games/drag_drop/color_game.dart';
import 'package:kids_education/screens/mini_games/gues_for_memory/home_gues.dart';
import 'package:kids_education/screens/mysterious_misleading/misleading_page.dart';
import 'package:kids_education/screens/mysterious_misleading/mysterious_page.dart';

class Header extends StatelessWidget {
  Header({this.text});
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
  SubHeader({this.text});
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
  PictureCard({this.imageAsset});
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
    Key key,
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
              'User',
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
              'Еске түсірмек',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeGuess()),
              );
            },
          ),
          Divider(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Ертегілер',
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
                  'https://i.pinimg.com/originals/35/94/be/3594be483cc5d2825cc1272f95c2b729.jpg'),
            ),
            title: const Text(
              'Аудио ертегілер',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AudioTales()),
              );
            },
          ),
          ListTile(
            leading: SizedBox(
              height: 60.0,
              width: 60.0, // fixed width and height
              child: Image.network(
                  'https://almaty.mir-kvestov.kz/uploads/quests/6998/large/qcitykz_aldar_kose_photo1.jpg?1637256576'),
            ),
            title: const Text(
              'Видео ертегілер',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoPlayerScreen()),
              );
            },
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text(
                  'Жұмбақтар && ',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Жаңылтпаштар',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
            leading: SizedBox(
              height: 60.0,
              width: 60.0, // fixed width and height
              child: Image.network(
                  'https://w7.pngwing.com/pngs/563/269/png-transparent-tom-cat-tom-and-jerry-cat-mammal-animals-cat-like-mammal.png'),
            ),
            title: const Text(
              'Жұмбақтар',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Mysterious_page()),
              );
            },
          ),
          ListTile(
            leading: SizedBox(
              height: 60.0,
              width: 60.0, // fixed width and height
              child: Image.network(
                  'https://img2.freepng.ru/20180204/cse/kisspng-my-talking-tom-tom-cat-jerry-mouse-tom-cat-5a77b6086a7d75.7588010515177948244362.jpg'),
            ),
            title: const Text(
              'Жаңылтпаштар',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MisleadingPage()),
              );
            },
          ),
          Divider(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Салт дәстүрлер',
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
                  'https://massaget.kz/userdata/news/news_10823/photo.jpg'),
            ),
            title: const Text(
              'Балаға қатысты салт-дәстүр',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChildSaltPage()),
              );
            },
          ),
          ListTile(
            leading: SizedBox(
              height: 60.0,
              width: 60.0, // fixed width and height
              child: Image.network(
                  'https://old.qazaqtv.com/upload/anounces/top_2e4cbbdcd01b54e5eb304d0189734c3c.jpg'),
            ),
            title: const Text(
              'Жеті ата жүйесі',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SevenTreePage()),
              );
            },
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
