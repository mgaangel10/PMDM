import 'package:flutter/material.dart';
import 'package:navegation/widget/card_coches.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("coches"),
      ),
      body: ListView(
        children: [
          Container(
            child: CardCoches(),
          )
        ],
      ),
    );
  }
}
