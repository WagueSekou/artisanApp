import 'package:flutter/material.dart';
import 'package:my_app/Pages/detailScreen.dart';

class ArtisanTileUI extends StatelessWidget {
  const ArtisanTileUI({super.key, required this.description, required this.image, required this.name, required this.price});


 final String name;
  final String description;
  final double price;
  final String image;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              name: name,
              description: description,
              price: price,
              image: image,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(12),
        height: 120,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: Image.asset(
                  "assets/appImag/$image",
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(description),
                    Text("Price$price")
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}