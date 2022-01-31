import 'package:flutter/material.dart';
import 'header.dart';
import 'categories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShopHome(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(color: Colors.purple.shade400, centerTitle: true),
        bottomAppBarColor: Colors.purple.shade400,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.amber.shade600),
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
          SliverList(
              delegate: SliverChildListDelegate([
            Text(
              "Bouquet",
              style: TextStyle(fontSize: 300),
            )
          ]))
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
