import 'package:flutter/material.dart';
import 'header.dart';

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
          appBarTheme: AppBarTheme(color: Colors.greenAccent, centerTitle: true)),
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
              ),
              actions: [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.shopping_cart),
                ),
              ]),
          Header(),
        ],
      ),
    );
  }
}
