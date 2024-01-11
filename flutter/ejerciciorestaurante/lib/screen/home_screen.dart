import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                child: const Image(
                  image: NetworkImage(
                      "https://img.restaurantguru.com/ra49-Kebab-San-Zen-food.jpg"),
                  width: double.infinity,
                ),
              ),
              Container(
                  child: Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  focusColor: const Color.fromARGB(255, 70, 129, 158),
                  child: SizedBox(
                    width: 350,
                    height: 100,
                    child: Column(
                      children: [
                        Container(
                          child: Row(children: [
                            Container(
                              child: Text("nombre"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 35),
                              child: Text("hola"),
                            ),
                          ]),
                        ),
                        Container(
                          child: Row(children: [
                            Container(
                              child: Text("valoracion"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 12),
                              child: RatingBar.builder(
                                initialRating: 4,
                                itemSize: 25,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            )
                          ]),
                        ),
                        Container(
                          child: Row(children: [
                            Container(
                              child: Text("direccion"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              child: Text("hola"),
                            ),
                          ]),
                        ),
                        Container(
                          child: Row(children: [
                            Container(
                              child: Text("precio"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 45),
                              child: Text("hola"),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ))
            ],
          ))
        ],
      ),
    );
  }
}
