import 'package:flutter/material.dart';

class ImagenClass extends StatelessWidget {
  const ImagenClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 150,
        height: 150,
        child: Image(
            image: NetworkImage(
                "https://imagenes.20minutos.es/files/image_1920_1080/uploads/imagenes/2021/07/16/torrente-el-brazo-tonto-de-la-ley-1998.jpeg")),
      ),
    );
  }
}
