import 'package:flutter/material.dart';
import 'package:kids_education/screens/data.dart';
import 'package:kids_education/screens/widgets/custom_headers.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({required this.animal});
  final AnimalInfo animal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Text(
            animal.name!,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: animal.color,
          centerTitle: true,
          leading: const Icon(
            
            Icons.filter_list,
            color: Colors.amber,
            size: 40,
          ),
          actions: const [
            Image(image: AssetImage('assets/c_deer.png')),
          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 300,
            decoration: BoxDecoration(
              color: animal.color,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: GestureDetector(
              child: Center(
                child: Hero(
                  tag: animal.iconImage!,
                  child: Image(
                    image: AssetImage(animal.iconImage!),
                  ),
                ),
              ),
              onTap: Navigator.of(context).pop,
            ),
          ),
          Container(
            height: 280,
            color: Colors.white,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(text: animal.name!),
                    SubHeader(text: animal.paragraph!),
                    const SizedBox(
                      height: 10,
                    ),
                    Header(
                      text: 'Lifespan',
                    ),
                    SubHeader(text: animal.lifespan!),
                    const SizedBox(
                      height: 10,
                    ),
                    Header(
                      text: 'Speed',
                    ),
                    SubHeader(text: animal.speed!),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 150,
              child: Container(
                  color: Colors.white,
                  child: animal.images!.length!= 0
                      ? Container(
                          color: Colors.white,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Header(text: 'Images'),
                              SizedBox(
                                height: 100,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: animal.images!.length,
                                      itemBuilder: (context, index) =>
                                          PictureCard(
                                              imageAsset:
                                                  animal.images![index])))
                            ],
                          ),
                        )
                      : Container(
                          color: Colors.white,
                        )))
        ],
      ),
    );
  }
}
