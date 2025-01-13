import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:my_app/Pages/detailScreen.dart';

class ArtisanHomePage extends StatelessWidget {
  const ArtisanHomePage(
      {super.key,
      required this.name,
      required this.description,
      required this.image,
      required this.price,
      required this.editArtisan,
      required this.deletArtisan});

  final String name;
  final String description;
  final double price;
  final String image;
  final void Function(BuildContext)? editArtisan;
  final void Function(BuildContext)? deletArtisan;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: StretchMotion(),
        children: [
          //edit option
          SlidableAction(onPressed: editArtisan,
          backgroundColor: Colors.grey.shade800,
          icon: Icons.settings,
          borderRadius: BorderRadius.circular(8),),

          //deleting option
          SlidableAction(onPressed: deletArtisan,
          backgroundColor: Colors.red.shade300,
          icon: Icons.delete,
          borderRadius: BorderRadius.circular(8),),
        ],
      ),
      child: GestureDetector(
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
                      Text("Price${price}")
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
