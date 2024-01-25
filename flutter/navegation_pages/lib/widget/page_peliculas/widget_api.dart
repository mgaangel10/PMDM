import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:navegation_pages/model/movie_popular_list_response/result.dart';
import 'package:navegation_pages/widget/page_peliculas/card_peliculas.dart';

Future<Result> fectchMovie() async {
  final response = await http.get(Uri.parse(
      "https://api.themoviedb.org/3/movie/popular?api_key=69f3e6a5240db4edaa63df89b07ddc59&language=en-US&page=1"));

  if (response.statusCode == 200) {
    return Result.fromJson(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

class WidgetApi extends StatefulWidget {
  const WidgetApi({super.key});

  @override
  State<WidgetApi> createState() => _WidgetApiState();
}

class _WidgetApiState extends State<WidgetApi> {
  late Future<Result> listResult;

  @override
  void initState() {
    super.initState();
    listResult = fectchMovie();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<Result>(
        future: listResult,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CardPeliculas(listResult: snapshot.data!);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
