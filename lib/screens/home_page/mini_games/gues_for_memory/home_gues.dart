import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kids_education/data/resources/data.dart';
import 'package:kids_education/screens/first_level/animals_page/animals_page.dart';

import 'models.dart';

class HomeGuess extends StatefulWidget {
  const HomeGuess({Key? key}) : super(key: key);

  @override
  _HomeGuessState createState() => _HomeGuessState();
}

class _HomeGuessState extends State<HomeGuess> {
  List<TileModel> gridViewTiles = <TileModel>[];
  List<TileModel> questionPairs = <TileModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reStart();
  }

  void reStart() {
    myPairs = getPairs();
    myPairs.shuffle();

    gridViewTiles = myPairs;
    Future.delayed(const Duration(seconds: 5), () {
// Here you can write your code
      setState(() {
        print("2 seconds done");
        // Here you can write your code for open new view
        questionPairs = getQuestionPairs();
        gridViewTiles = questionPairs;
        selected = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        title: const Text('IQ BALA'),
        leading: IconButton(
          icon: SvgPicture.asset('assets/svg/back.svg'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: SvgPicture.asset('assets/svg/menu.svg'),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            children: <Widget>[
              SizedBox(
      width:326,
      height: 54,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          primary: Colors.green,
        ),
        onPressed: (){},
        child: const Text(
          '?????????????? ????????????',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    ),
     const SizedBox(
                height: 40,
              ),
              points != 800
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "$points/800",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          "??????????????",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                      ],
                    )
                  : Container(),
              const SizedBox(
                height: 20,
              ),
              points != 800
                  ? GridView(
                      shrinkWrap: true,
                      //physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          mainAxisSpacing: 0.0, maxCrossAxisExtent: 100.0),
                      children: List.generate(gridViewTiles.length, (index) {
                        return Tile(
                          imagePathUrl:
                              gridViewTiles[index].getImageAssetPath(),
                          tileIndex: index,
                          parent: this,
                        );
                      }),
                    )
                  : Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          points = 0;
                          reStart();
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Text(
                          "????????????????",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnimalsPage()),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Text(
                          "?????????????? ??????",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class Tile extends StatefulWidget {
  String imagePathUrl;
  int tileIndex;
  _HomeGuessState parent;

  Tile(
      {required this.imagePathUrl,
      required this.tileIndex,
      required this.parent});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          setState(() {
            myPairs[widget.tileIndex].setIsSelected(true);
          });
          if (selectedTile != "") {
            /// testing if the selected tiles are same
            if (selectedTile == myPairs[widget.tileIndex].getImageAssetPath()) {
              print("add point");
              points = points + 100;
              print(selectedTile + " thishis" + widget.imagePathUrl);

              TileModel tileModel = TileModel(imageAssetPath: '');
              print(widget.tileIndex);
              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                tileModel.setImageAssetPath("");
                myPairs[widget.tileIndex] = tileModel;
                print(selectedIndex);
                myPairs[selectedIndex] = tileModel;
                this.widget.parent.setState(() {});
                setState(() {
                  selected = false;
                });
                selectedTile = "";
              });
            } else {
              print(selectedTile +
                  " thishis " +
                  myPairs[widget.tileIndex].getImageAssetPath());
              print("wrong choice");
              print(widget.tileIndex);
              print(selectedIndex);
              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                this.widget.parent.setState(() {
                  myPairs[widget.tileIndex].setIsSelected(false);
                  myPairs[selectedIndex].setIsSelected(false);
                });
                setState(() {
                  selected = false;
                });
              });

              selectedTile = "";
            }
          } else {
            setState(() {
              selectedTile = myPairs[widget.tileIndex].getImageAssetPath();
              selectedIndex = widget.tileIndex;
            });

            print(selectedTile);
            print(selectedIndex);
          }
        }
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        child: myPairs[widget.tileIndex].getImageAssetPath() != ""
            ? Image.asset(myPairs[widget.tileIndex].getIsSelected()!
                ? myPairs[widget.tileIndex].getImageAssetPath()
                : widget.imagePathUrl)
            : Container(
                color: Colors.white,
                child: Image.asset("assets/game_png/correct.png"),
              ),
      ),
    );
  }
}
