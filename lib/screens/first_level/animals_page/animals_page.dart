import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kids_education/data/cubit/animal_cubit/animal_cubit.dart';

import 'package:kids_education/data/resources/data.dart';
import 'package:kids_education/screens/first_level/animals_page/details_page.dart';
import 'package:kids_education/screens/widgets/animal_card.dart';

class AnimalsPage extends StatefulWidget {
  const AnimalsPage({Key? key}) : super(key: key);

  @override
  State<AnimalsPage> createState() => _AnimalsPageState();
}

class _AnimalsPageState extends State<AnimalsPage> {


  @override
  void initState() {

BlocProvider.of<AnimalCubit>(context).getAnimalInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              'IQ BALA',
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            leading: IconButton(
              icon: SvgPicture.asset('assets/svg/back.svg'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: const [
              Image(image: AssetImage('assets/game_png/c_deer.png')),
            ]),
        body:  BlocBuilder<AnimalCubit, AnimalState>(builder: (context, state) {
          if (state is LoadedState) {
          return ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(5),
              itemCount: state.animal.length,
              itemBuilder: (context, index) => AnimalCard(
                  animal: state.animal[index],
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailsPage(animal: state.animal[index])));
                    // Get.to(DetailsPage(animal: animals[index]));
                  }));
          }
          return const Center(
            child: CircularProgressIndicator(),
          );}


          
        ),
        
        // drawer: const DrawerAppbar(),
      ),
    );
  }
}
