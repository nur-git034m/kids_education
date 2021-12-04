import 'package:flutter/material.dart';

class Header extends StatelessWidget {
 Header({required this.text});
 final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
    );
  }
}


class SubHeader extends StatelessWidget {
 SubHeader({required this.text});
 final String text;

  @override
  Widget build(BuildContext context) {
    return Opacity(opacity: 0.7,
    child: Text(text,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'PatrickHand-Regular'),),);
  }
}



class PictureCard extends StatelessWidget {
  PictureCard({ required this.imageAsset});
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: FadeInImage.assetNetwork(placeholder: 'assets/loading.gif', image: imageAsset,width: 25,height: 25,),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      height: 100,
      width: 150,
      margin: EdgeInsets.only(left: 10,right: 10),
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
          'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
    ),
    accountEmail: Text('jane.doe@example.com'),
    accountName: Text(
      'Jane Doe',
      style: TextStyle(fontSize: 24.0),
    ),
    decoration: BoxDecoration(
      color: Colors.black87,
    ),
              ),
              ListTile(
    leading: const Icon(Icons.house),
    title: const Text(
      'Houses',
      style: TextStyle(fontSize: 24.0),
    ),
    onTap: () {
     
    },
              ),
              ListTile(
    leading: const Icon(Icons.apartment),
    title: const Text(
      'Apartments',
      style: TextStyle(fontSize: 24.0),
    ),
    onTap: () {
    
    },
              ),
            ],
      
      ),
    );
  }
}