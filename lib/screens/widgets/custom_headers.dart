import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header( { required this.text});
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
        placeholder: 'assets/game_png/loading.gif',
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

