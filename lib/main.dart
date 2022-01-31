import 'package:flutter/material.dart';
import 'flower_page.dart';
import 'header.dart';
import 'categories.dart';
import 'flower_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShopHome(),
      routes: {
        FlowerPage.tag: (_) => FlowerPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple.shade400,
        canvasColor: Colors.purple.shade100,
        appBarTheme:
            AppBarTheme(color: Colors.purple.shade400, centerTitle: true),
        bottomAppBarColor: Colors.purple.shade400,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.amber.shade600,
        ),
        cardColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

class ShopHome extends StatefulWidget {
  @override
  State<ShopHome> createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              title: Text("Deliver me"),
              pinned: true,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
                color: Colors.white,
              ),
              actions: [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.white,
                ),
              ]),
          Header(),
          Categories(),
          FlowerList(
            row: 1,
          ),
          FlowerList(
            row: 2,
          ),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        child: Container(
          color: Colors.purple.shade600,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_alert),
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.turned_in),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
