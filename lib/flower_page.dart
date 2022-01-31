import 'package:flutter/material.dart';
import 'flower_list_mini.dart';
import 'rating.dart';

class FlowerPage extends StatefulWidget {
  static const tag = "flower_page";

  @override
  State<FlowerPage> createState() => _FlowerPageState();
}

class _FlowerPageState extends State<FlowerPage> {
  Widget daliahImage = Container(
    height: 80,
    child: Image.asset("images/daliah.png"),
  );
  Widget orchidImage = Container(
    height: 100,
    child: Image.asset("images/orchid.png"),
  );

  int cart = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> args =
        ModalRoute.of(context)?.settings.arguments as List<String>;
    String flowerName = args[0];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white70,
              radius: 15,
              child: CircleAvatar(
                backgroundImage: AssetImage("images/profile.png"),
                radius: 13,
                backgroundColor: Colors.pink,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  flowerName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Deliver me " + flowerName,
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    flowerName == "Daliah" ? daliahImage : orchidImage,
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Text(
                            "15,95\$",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Rating()
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomSheet: BottomSheet(
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        ),
        onClosing: () {},
        builder: (context) {
          return ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(45),
            ),
            child: Container(
              width: size.width,
              color: Color.fromRGBO(240, 240, 240, 1),
              height: size.height / 1.5,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Text(
                          "Cette vivace herbacée possède des racines tubéreuses partant en faisceau autour du collet. \nDe croissance rapide, elle émet des tiges robustes, creuses, dressées et amplement ramifiées qui se hissent de 30 cm jusqu'à plus de 1,60 m, voire plus, selon les variétés. Le feuillage opposé est composé de folioles arrondies à bords dentés, généralement vert soutenu à vert foncé, mais il prend chez certains dahlias de belles nuances pourpres.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  FlowerListMini(),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.2)),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    cart--;
                                  });
                                },
                                icon: Icon(Icons.remove_circle),
                                color: Theme.of(context).secondaryHeaderColor,
                              ),
                              Text(cart.toString()),
                              IconButton(
                                onPressed: () {
                                  cart++;
                                },
                                icon: Icon(Icons.add_circle),
                                color: Theme.of(context).secondaryHeaderColor,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 45,
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: MaterialButton(
                              color: Colors.amberAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45)),
                              onPressed: () {
                                // TODO
                              },
                              child: Text(
                                "BUY NOW",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
