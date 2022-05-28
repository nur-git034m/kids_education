import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_education/data/cubit/animal_cubit/animal_cubit.dart';
import 'package:kids_education/data/cubit/twister_cubit/twister_cubit.dart';
import 'package:kids_education/data/repositories/animal_repo.dart';
import 'package:kids_education/data/repositories/twister_repo.dart';
import 'package:kids_education/screens/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider(
          create: (_) => TwisterCubit(twisterRepo: TwisterRepo()),
        ),
          BlocProvider(
          create: (_) => AnimalCubit(animalRepo: AnimalRepo()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
            theme: ThemeData(scaffoldBackgroundColor:  Colors.grey.shade100,appBarTheme:AppBarTheme( backgroundColor: Colors.grey.shade100,elevation: 0,centerTitle: true,titleTextStyle: const TextStyle(fontSize: 36, color: Colors.black,fontWeight: FontWeight.w700))),
        home:  const HomePage(),
      ),
    );
  }
}
