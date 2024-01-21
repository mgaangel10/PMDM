import 'package:ejercicio_parking/Home_screen/screen.dart';

import 'package:ejercicio_parking/model/list_parking_response/list_parking_response.dart';
import 'package:ejercicio_parking/model/list_parking_response/result.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder<List<Result>>(
        future: fetchParkingList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return HomeScreen(parkingList: snapshot.data!);
          }
        },
      ),
    );
  }

  Future<List<Result>> fetchParkingList() async {
    final response = await http.get(Uri.parse(
        'https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/parkings/records?limit=100'));

    if (response.statusCode == 200) {
      final data = LIstParkingResponse.fromJson(response.body);
      return data.results ?? [];
    } else {
      throw Exception('Failed to load parking list');
    }
  }
}
