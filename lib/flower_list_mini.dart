import 'package:flutter/material.dart';

class FlowerListMini extends StatefulWidget {
  @override
  State<FlowerListMini> createState() => _FlowerListMiniState();
}

class _FlowerListMiniState extends State<FlowerListMini> {
  Widget daliahImage = Container(
    height: 80,
    child: Image.asset("images/daliah.png"),
  );
  Widget orchidImage = Container(
    height: 100,
    child: Image.asset("images/orchid.png"),
  );

  int items = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.only(top: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool isEven = index.isEven;
            return Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.only(
                        left: 20,
                        right: index == items ? 20 : 0,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // TODO
                        },
                        child: Card(
                          color: Theme.of(context).primaryColor,
                          elevation: 3,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        isEven ? "Daliah" : "Orchid",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Positioned(
                    top: isEven ? 25 : 15,
                    left: isEven ? 35 : 20,
                    child: GestureDetector(
                      onTap: () {},
                      child: isEven ? daliahImage : orchidImage,
                    )),
              ],
            );
          }),
    );
  }
}
