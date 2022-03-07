import 'package:flutter/material.dart';
import 'package:kids_education/screens/animals_page/details_page.dart';
import 'package:kids_education/screens/widgets/animal_card.dart';

import '../../data/resources/data.dart';
import '../widgets/custom_headers.dart';

class AnimalsPage extends StatefulWidget {
  const AnimalsPage({Key? key}) : super(key: key);

  @override
  State<AnimalsPage> createState() => _AnimalsPageState();
}

class _AnimalsPageState extends State<AnimalsPage> {
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
              'Үйрену',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
    //        leading: Builder(
    //   builder: (BuildContext context) {
    //     return IconButton(
    //       icon: const Icon(Icons.filter_list,color: Colors.amber,size: 40,),
    //       onPressed: () {
    //         Scaffold.of(context).openDrawer();
    //       },
    //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
    //     );
    //   },
    // ),
            actions: const [
              Image(image: AssetImage('assets/c_deer.png')),
            ]),
        body: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(5),
          itemCount: animals.length,
            itemBuilder: (context, index) =>
                AnimalCard(animal: animals[index], onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailsPage(animal: animals[index])));
                  // Get.to(DetailsPage(animal: animals[index]));
                })),
                // drawer: const DrawerAppbar(),
      ),
    );
  }
}


