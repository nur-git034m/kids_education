import 'package:flutter/material.dart';


class Mysterious_page extends StatelessWidget {
  const Mysterious_page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Жұмбақтар'),
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
                  'Сары қозы, көк қозы,\nҚарындары тоқ қозы.\nКүздігүні көп қозы,\nҚыстыгүні жоқ қозы.\n         (Қауын-қарбыз)'),
            ),
          );
        },
       
      ),
    );
  }
}
