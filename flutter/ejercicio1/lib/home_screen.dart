import 'package:ejercicio1/widget/home.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Container(color:Colors.brown,alignment: Alignment.center, child:const Text('my first app'),)
      ),
      body: Container(alignment: Alignment.center, child: const MyButton(),)
    );
  }
}