import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  GlobalKey<FormState> mKey = GlobalKey();
  late String username, email, mdp, date, adresse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Inscription")),
      body: Form(
        key: mKey,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.asset("Assets/minecraft.jpg")),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Username"),
                    onChanged: (value) => {},
                    onSaved: (newValue) {
                      username = newValue!;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onChanged: (value) => {},
                    onSaved: (newValue) {
                      email = newValue!;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Email"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Mot de passe"),
                    onChanged: (value) => {},
                    onSaved: (newValue) {
                      email = newValue!;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Année de naissance"),
                    onChanged: (value) => {},
                    onSaved: (newValue) {
                      email = newValue!;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Adresse de facturation"),
                    onChanged: (value) => {},
                    onSaved: (newValue) {
                      email = newValue!;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 85,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (mKey.currentState!.validate()) {
                              mKey.currentState!.save();
                            }
                          },
                          child: Text("S'inscrire")),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Annuler")),
                    ],
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}
