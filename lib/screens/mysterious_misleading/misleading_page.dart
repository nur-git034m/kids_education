import 'package:flutter/material.dart';

class MisleadingPage extends StatelessWidget {
  const MisleadingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Жаңылтпаштар'),
        backgroundColor: Colors.green[200],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 53,vertical: 10),
            child: ListTile(
              
              title: Text(
                  'Хан баласы ханзада\nБолды ғашық ханшаға.\nАлып ханнан хабар,\nХаншайымды табар.'),
            ),
          );
        },
       
      ),
    );
  }
}