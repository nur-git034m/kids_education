import 'package:flutter/material.dart';
import 'package:kids_education/screens/details_page.dart';
import 'package:kids_education/screens/widgets/animal_card.dart';

import 'data.dart';
import 'widgets/custom_headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<AnimalInfo> animals = [];

  @override
  void initState() {
    animals = animallist;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          
            title: const Text(
              'Learn',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
           leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.filter_list,color: Colors.amber,size: 40,),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
            actions: const [
              Image(image: AssetImage('assets/c_deer.png')),
            ]),
        body: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          itemCount: animals.length,
            itemBuilder: (context, index) =>
                AnimalCard(animal: animals[index], onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailsPage(animal: animals[index])));
                  // Get.to(DetailsPage(animal: animals[index]));
                })),
                drawer: const DrawerAppbar(),
      ),
    );
  }
}


