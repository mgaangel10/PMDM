import 'package:flutter/material.dart';
import 'package:navegation_pages/model/people_list_response/result.dart';
import 'package:navegation_pages/widget/page_personas/card_personas.dart';

class HomeScreen extends StatefulWidget {
  final List<Result> listResult;
  const HomeScreen({Key? key, required this.listResult}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<String> _appBarTitles = <String>[
    'Listado de personas',
    'Listado de películas',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      body: (_selectedIndex == 0)
          ? ListView.builder(
              itemCount: widget.listResult.length,
              itemBuilder: (context, index) {
                final people = widget.listResult[index];
                return CardPersonas(
                    nombre: people.name!, foto: people.profilePath!);
              },
            )
          : Center(child: Text('Aquí va la lista de películas')),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Personas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Películas',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
