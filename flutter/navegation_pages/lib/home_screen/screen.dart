import 'package:flutter/material.dart';
import 'package:navegation_pages/widget/page_peliculas/widget_api.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de peliculas'),
      ),
      body: const WidgetApi(),
    );
  }
}
