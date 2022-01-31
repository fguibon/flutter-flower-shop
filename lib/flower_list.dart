import 'package:flutter/material.dart';
import 'package:flutter_flower_shop/flower_page.dart';

class FlowerList extends StatefulWidget {
  final int row;

  FlowerList({required this.row});

  @override
  State<FlowerList> createState() => _FlowerListState();
}

class _FlowerListState extends State<FlowerList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;

    Widget daliahImage = Container(
      height: 160,
      child: Image.asset("images/daliah.png"),
    );
    Widget orchidImage = Container(
      height: 140,
      child: Image.asset("images/orchid.png"),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: widget.row == 2 ? 330 : 240,
        margin: EdgeInsets.only(
          top: 10,
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool isEven = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: items == index ? 20 : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(FlowerPage.tag,
                          arguments: [isEven ? "Daliah" : "Orchid"]);
                    },
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            Text(
                              isEven ? "Daliah" : "Orchid",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  isEven ? "15,45\$" : "18,20\$",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: isEven ? 50 : 50,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(FlowerPage.tag,
                            arguments: [isEven ? "Daliah" : "Orchid"]);
                      },
                      child: isEven ? daliahImage : orchidImage,
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
