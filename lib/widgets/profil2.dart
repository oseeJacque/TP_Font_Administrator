import 'package:flutter/material.dart';
import 'package:store1/models/textStyler.dart';

// ignore: use_key_in_widget_constructors
class ProfilSimple extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    final wdt = MediaQuery.of(context).size.width;
    final hgt = MediaQuery.of(context).size.height;
    List<IconAndColor> ListIcon = [
      IconAndColor(
          cone: const Icon(
            Icons.add,
          ),
          col: Colors.blue),
      IconAndColor(cone: const Icon(Icons.shopping_basket), col: Colors.orange),
      IconAndColor(cone: const Icon(Icons.favorite), col: Colors.orange),
      IconAndColor(cone: const Icon(Icons.gamepad), col: Colors.blue)
    ];
    return Scaffold(
      body: SingleChildScrollView(
      //padding: const EdgeInsets.all(20),
      child: Expanded(
        child:Container(
        decoration: const BoxDecoration(color: Colors.white),
          child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)),
                  color: Colors.black12),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                        
                        margin: const EdgeInsets.only(left: 25, right: 25,top: 50),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                children: [
                                  //La première ligne contenant les icones autoreview et more_horiz
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20.0,top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        //Icons autoreview
                                        InkWell(
                                          onTap: null,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: Colors.white24),
                                            child: const Icon(
                                              Icons.autorenew,
                                              color: Colors.black54,
                                              size: 20,
                                            ),
                                          ),
                                        ),

                                        //Icon more_horiz
                                        InkWell(
                                          onTap: null,
                                          child: Container(
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: Colors.white24),
                                            child: const Icon(
                                              Icons.more_horiz,
                                              color: Colors.black54,
                                              size: 20,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  //Gestion de la partie contenant du texte et le diagramme dans une ligne
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          textDirection: TextDirection.ltr,
                                          children: [
                                            TextStyler(
                                              "Net Revenue",
                                              fontSize: 10.0,
                                            ),
                                            TextStyler(
                                              "\$76,124,803",
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            TextStyler(
                                              "+27,38% (\$5,097",
                                              fontSize: 10.0,
                                              color: Colors.orange,
                                            )
                                          ],
                                        ),
                                      ),
                                      //Le diagramme proprement dite
                                      Container(
                                        padding: const EdgeInsets.only(right: 20.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Image.asset(
                                            "lib/image/rolex.jpg",
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  )
                                ],
                              ),
                            ),
                            
                          ],
                        )),
                    const SizedBox(
                      height: 15.0,
                    ),

                    //Ligne contenant  "branch et add new+"
                    Container(
                      margin: const EdgeInsets.only(left: 20.0,right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextStyler(
                            "Branch",
                            fontSize: 20.0,
                          ),
                          InkWell(
                            onTap: null,
                            child: Row(
                              children: const [
                                Text(
                                  "Add new",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.add,
                                  size: 20,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,),
                        itemCount: ListIcon.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                              child: Container(
                              margin: const EdgeInsets.all(20.0),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: (ListIcon[index].col ==
                                                Colors.orange)
                                            ? const Color.fromARGB(
                                                68, 255, 153, 0)
                                            : const Color.fromARGB(
                                                90, 33, 149, 243),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: ListIcon[index].icon,
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  TextStyler(
                                    "Branch(${index + 1})",
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  )
                                ],
                              ),
                            )
                          );
                        })
                  ]),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const InkWell(
                          onTap: null,
                          child: Icon(
                            Icons.home,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        TextStyler(
                          "Home",
                          fontSize: 15.0,
                        )
                      ],
                    ),
                    const InkWell(
                      onTap: null,
                      child: Icon(
                        Icons.aspect_ratio,
                        size: 30.0,
                      ),
                    ),
                    const InkWell(
                      onTap: null,
                      child: Icon(
                        Icons.check_box_outline_blank,
                        size: 30.0,
                      ),
                    ),
                    const InkWell(
                      onTap: null,
                      child: Icon(
                        Icons.person_sharp,
                        size: 30.0,
                      ),
                    )
                  ],
                )),
                const SizedBox(height: 20.0,)
          ],
        ),)
         
      ),
    ),
    );
    
  }
}

class IconAndColor {
  late Icon icon;
  late Color col;
  late int index;
  IconAndColor({required Icon cone, required Color col}) {
    // ignore: prefer_initializing_formals
    this.col = col;
    // ignore: unnecessary_this
    this.icon = cone;
  }
}
