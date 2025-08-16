import 'package:flutter/material.dart';
extension MediaQueryValues on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
}

class Vendour_Card extends StatelessWidget {
  final String name; //vendour name
  final String profileImg; //vendour img
  final String address; //vendour address
  final double mobile; //vendour number
  final int pricePerUnit;
  final int timestamp;
  final double? padding_horizontal;
  final double? padding_vertical;

  const Vendour_Card(
      {super.key, required this.name, required this.profileImg, required this.address, required this.mobile, required this.pricePerUnit, required this.timestamp, this.padding_horizontal,
        this.padding_vertical}); //pickup time


  @override
  Widget build(BuildContext context) {
    final double horizontal = padding_horizontal ?? context.screenWidth * 0.01;
    final double vertical = padding_vertical ?? context.screenHeight * 0.01;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                backgroundImage: (profileImg.isNotEmpty)
                    ? NetworkImage(profileImg)
                    : AssetImage('Assets/default.img'),

              ),
            ),

            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(

                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("$name"),
                  Text("$address"),
                ],
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Text("$mobile"),
                SizedBox(width: 10),
                Text("$pricePerUnit"),
                SizedBox(width: 20),
                Text("$timestamp"),
              ],
            ),
              Padding(
                padding: EdgeInsets.all(8),
              child: ElevatedButton(
              onPressed: () {
                // button action
            },
                child: const Text("Contact")

              ),



            ),
            ],
        ),

      ),
    );
  }
}