import 'package:flutter/material.dart';
import 'package:kids_education/screens/data.dart';

class AnimalCard extends StatelessWidget {
  AnimalCard({Key? key, required this.animal, required this.onPressed})
      : super(key: key);
  AnimalInfo animal;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        height: 230,
        child: Stack(
          children: [
            Positioned(
                left: 40,
                child: Container(
                  decoration: BoxDecoration(
                      color: animal.color,
                      borderRadius: BorderRadius.circular(10)),
                  constraints:
                      const BoxConstraints(maxWidth: 330, maxHeight: 200),
                )),
            Positioned(
                top: 25,
                child: Hero(
                  tag: animal.name!,
                  transitionOnUserGestures: true,
                  child: Image(
                    image: AssetImage(animal.iconImage!),
                    width: 150,
                    height: 150,
                  ),
                )),
            Positioned(
                top: 25,
                left: 160,
                child: Text(
                  animal.name!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: 10,
                left: 160,
                child: Container(
                  width: 200,
                  height: 200,
                  child: Opacity(
                    opacity: 0.8,
                    child: Center(
                      child: Text(
                        animal.description!,
                        style: const TextStyle(
                            wordSpacing: 4,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
