import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kids_education/data/cubit/twister_cubit/twister_cubit.dart';

class QuickReadPage extends StatefulWidget {
  const QuickReadPage({Key? key}) : super(key: key);

  @override
  State<QuickReadPage> createState() => _QuickReadPageState();
}

class _QuickReadPageState extends State<QuickReadPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<TwisterCubit>(context).getTwister();
  }

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
      body: SingleChildScrollView(
        child:
            BlocBuilder<TwisterCubit, TwisterState>(builder: (context, state) {
          if (state is LoadedState) {
            return ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 320,
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            primary: Colors.green,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Жаңылтпаштар',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ListView.separated(
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(
                                height: 30,
                              ),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: state.twisters.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: const Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      '${state.twisters[index].id}',
                                      style: const TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Text(
                                        '${state.twisters[index].body}',
                                        style: const TextStyle(
                                            fontSize: 24, color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }),
      ),
    );
  }
}
