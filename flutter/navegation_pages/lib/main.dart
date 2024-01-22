import 'package:flutter/material.dart';
import 'package:navegation_pages/Home_screen/screen.dart';
import 'package:navegation_pages/model/people_list_response/people_list_response.dart';
import 'package:navegation_pages/model/people_list_response/result.dart';
import 'package:http/http.dart' as http;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder<List<Result>>(
        future: fetchPeopleList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return HomeScreen(listResult: snapshot.data!);
          }
        },
      ),
    );
  }

  Future<List<Result>> fetchPeopleList() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/person/popular?api_key=69f3e6a5240db4edaa63df89b07ddc59&language=en-US&page=1'));

    if (response.statusCode == 200) {
      final data = PeopleListResponse.fromJson(response.body);
      return data.results ?? [];
    } else {
      throw Exception('Failed to load people list');
    }
  }
}
