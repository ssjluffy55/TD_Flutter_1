import 'package:flutter/material.dart';

late int nb_exm;

class GamePage extends StatefulWidget {
  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  void initState() {
    nb_exm = 3000;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FIFA 22"),
        ),
        body: Column(children: [
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.asset("Assets/fifa.jpg")),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
                "FIFA 22 is a football simulation video game published by Electronic Arts. It is the 29th installment in the FIFA series, and was released worldwide on 1 October 2021 for Nintendo Switch, PlayStation 4, PlayStation 5, Stadia, Windows, Xbox One, and Xbox Series X/S.[1] Players who pre-ordered the ultimate edition, however, received four days of early access and were able to play the game from 27 September."),
          ),
          SizedBox(height: 50),
          Text(
            "200 DT",
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(
            height: 5,
          ),
          Text("Exemplaire disponibles : " + nb_exm.toString()),
          SizedBox(
            height: 50,
          ),
          SizedBox(
              width: 155,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      nb_exm--;
                    });
                    print(nb_exm);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.shopping_cart),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Acheter",
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  )))
        ]));
  }
}
