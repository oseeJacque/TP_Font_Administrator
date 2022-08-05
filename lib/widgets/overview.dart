import 'package:flutter/material.dart';
import 'package:store1/models/personne.dart';
import 'package:store1/models/textStyler.dart';
import 'package:store1/widgets/inventory.dart';

import 'profil.dart';

class Overview extends StatelessWidget {
  List<Personne> ListP = [
    Personne(
        fullName: "Sr.John wick",
        imageLink: "lib/image/personneLunnette.jpg",
        message: "Head office",
        val: 6.0),
    Personne(
        fullName: "Stella flower",
        imageLink: "lib/image/personne1.jpg",
        message: "Director manager",
        val: 5.0),
    Personne(
        fullName: "Johansen Stefany",
        imageLink: "lib/image/personneNikanor.jpeg",
        message: "Maketing",
        val: 4.8),
    Personne(
        fullName: "Sara Sunny",
        imageLink:
            "lib/image/positive-thoughts-woman-happy-thinking-scaled.jpg",
        message: "Accoutant",
        val: 4.8),
    Personne(
        fullName: "Kevin Hart",
        imageLink: "lib/image/personneFally.jpeg",
        message: "Inventory guy",
        val: 4.6),
    Personne(
        fullName: "Laurat Glaciue",
        imageLink: "lib/image/Prudence-Sekgodiso-Diamond-League-Rabat-800m.jpg",
        message: "Publisher",
        val: 4.6)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(212, 255, 255, 255),
      appBar: AppBar(
        title: TextStyler(
          "Staff Overview",
          fontSize: 20.0,
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white10,
        leading: Builder(builder: (BuildContext context) {
          return  IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profil()));
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 20.0,
              color: Color.fromARGB(255, 19, 19, 19),
            ),
          );
        }),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Card(
                elevation: 1.0,
                borderOnForeground: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 5.0,
                          ),
                          TextStyler(
                            "Branch(2)",
                            fontSize: 15.0,
                            factor: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  ListP[0].imageLink,
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Column(
                                children: [
                                  TextStyler(
                                    ListP[0].fullName,
                                    fontWeight: FontWeight.bold,
                                    factor: 1.0,
                                  ),
                                  TextStyler(
                                    ListP[0].message,
                                    factor: 1.0,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "lib/image/gratte-ciel.jpg",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextStyler(
                    "Employee(8)",
                    factor: 2.0,
                    fontSize: 10.0,
                  ),
                  const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.dashboard,
                        color: Color.fromARGB(255, 23, 56, 94),
                        size: 30.0,
                      ))
                ],
              ),
            ),
            ListView.builder(
                itemCount: ListP.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Inventory()));
                    },
                    child: Card(
                    margin: const EdgeInsets.only(top: 20.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: PersonneListForm(p: ListP[index]),
                  ) ,
                  );
                })
          ],
        ),
      ),
    );
  }
}

//Création de la classe dans laquelle on va implémenter l'architecture d'un élément de la liste ListP
// ignore: must_be_immutable
class PersonneListForm extends StatelessWidget {
  late Personne p;
  PersonneListForm({Key? key, required Personne p}) : super(key: key) {
    // ignore: prefer_initializing_formals
    this.p = p;
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          children: [
            Expanded(
                child: Row(
              children: [
                //Photo de la personne
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    this.p.imageLink,
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),

                //Le nom et le poste de la personne
                Expanded(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextStyler(
                        this.p.fullName,
                        factor: 1.3,
                      ),
                      TextStyler(
                        this.p.message,
                        color: Color.fromARGB(96, 23, 56, 94),
                        factor: 1.3,
                      )
                    ],
                  ),
                ))
              ],
            )),
            TextStyler(
              this.p.val.toString(),
              factor: 1.3,
            ), 
          ],
        ),
      ),
    );
  }
}
