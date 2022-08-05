// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../models/textStyler.dart';
import 'profil.dart';

class Inventory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(223, 255, 255, 255),
      appBar: AppBar(
        title: TextStyler(
          "Inventory",
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
              size: 30.0,
              color: Color.fromARGB(255, 19, 19, 19),
            ),
          );
        }),
        actions: [
          InkWell(
            onTap: null,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(100)),
              child: const Icon(
                Icons.launch,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 30, bottom: 30, left: 15, right: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          TextStyler(
                            "Wall wolf st.011 OAB89",
                            factor: 1.3,
                            color: const Color.fromARGB(167, 23, 56, 94),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextStyler(
                            "Branch(1)",
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 5),
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30))),
                      child: TextButton(
                          // ignore: prefer_const_constructors
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(29, 255, 153, 0)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                          ),
                          onPressed: null,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.arrow_drop_down,
                                size: 30.0,
                                color: Colors.orange,
                              ),
                              TextStyler(
                                "Low Stock",
                                color: Colors.orange,
                                fontSize: 15.0,
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextStyler("All product",fontSize: 15.0,fontWeight: FontWeight.bold,), 
                TextStyler("Shoes",fontSize: 12.0,),
                TextStyler("Shocks",fontSize: 12.0,),
                TextStyler("Hat",fontSize: 12.0,)
              ],
            ),
            AllProduct(),

            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}

//Modul d'une marque
class Mark {
  late String markName;
  late String markImageLink;
  late String markVal;

  Mark({required String name, required String image, required String val}) {
    this.markImageLink = image;
    this.markName = name;
    this.markVal = val;
  }
}

//Classe permettant de donner une bonne vue de la presentation d'une marque
// ignore: must_be_immutable
class MarKPresentation extends StatelessWidget {
  late Mark mk;

  MarKPresentation({required Mark q}) {
    this.mk = q;
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
                //Image de la marque
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    this.mk.markImageLink,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),

                //Le nom et le poste de la personne
                Expanded(
                    child: Container(
                  child: TextStyler(
                    this.mk.markName,
                    factor: 1.3,
                  ),
                ))
              ],
            )),
            TextStyler(
              this.mk.markVal.toString(),
              factor: 1.3,
            ),
            const SizedBox(
              width: 5.0,
            ),
            InkWell(
              onTap: null,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 3, 43, 77),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AllProduct extends StatelessWidget {
  const AllProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List<Mark> ListMark = [
      Mark(name: "Christian Dior", image: "lib/image/dior.jpg", val: "43/100"),
      Mark(name: "Louis Vuitton", image: "lib/image/louis.jpg", val: "7/10"),
      Mark(name: "Louis Vuitton", image: "lib/image/louis.jpg", val: "3/3"),
      Mark(name: "Hermes Paris", image: "lib/image/hermas.jpg", val: "4/7"),
      Mark(name: "Suprême", image: "lib/image/supreme.jpg", val: "54/100"),
      Mark(name: "Prada", image: "lib/image/prada.jpg", val: "1/1"),
      Mark(name: "Rolex", image: "lib/image/rolex.jpg", val: "2/3"),
      Mark(name: "Dolger Gabbana", image: "lib/image/dg.jpg", val: "10/100"),
      Mark(name: "Versage", image: "lib/image/versage.jpg", val: "6/10")
    ];
    return ListView.builder(
        itemCount: ListMark.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(top: 20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: MarKPresentation(q: ListMark[index]),
          );
        });
  }
}

class Shoes extends StatelessWidget{
  const Shoes({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Center(
      child: TextStyler("THIS IS SHOES VIEW",fontSize: 20.0,fontWeight: FontWeight.bold,),
    );
  }
}

class Shocks extends StatelessWidget{
  const Shocks({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Center(
      child: TextStyler("THIS IS SHOES VIEW",fontSize: 20.0,fontWeight: FontWeight.bold,),
    );
  }
}

class Hat extends StatelessWidget{
  const Hat({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Center(
      child: TextStyler("THIS IS SHOES VIEW",fontSize: 20.0,fontWeight: FontWeight.bold,),
    );
  }
}
