import 'package:flutter/material.dart';

import '../../model/movie_popular_list_response/result.dart';

class CardPeliculas extends StatelessWidget {
  final Result listResult;
  const CardPeliculas({Key? key, required this.listResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  children: [Text(listResult.title!)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
