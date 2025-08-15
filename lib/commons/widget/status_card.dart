import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
}
class StatusCard extends StatelessWidget {
  final String name;
  final String profileImg;
  final double mobile;
  final int deliveredQuantity;
  final EdgeInsetsGeometry? padding;

  const StatusCard(
      {super.key, required this.name, required this.profileImg, required this.mobile, required this.deliveredQuantity, this.padding } );

  @override
  Widget build(BuildContext context) {
    final CardMargin = padding ??  EdgeInsets.symmetric(
      horizontal: context.screenWidth * 0.01,
      vertical: context.screenHeight * 0.005,
    );

    return Card(

      margin: CardMargin,
      child: ListTile(
          leading: CircleAvatar(
            backgroundImage: (profileImg.isNotEmpty)
                ? NetworkImage(profileImg)
                : AssetImage('Assets/default.img')
          ),
        title: Text('$name'),
        subtitle: Text('$mobile'),
        trailing:Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Text(
            "litres"
                ),
                Text(
                "$deliveredQuantity"
                ),



            ],
          )
          ],
        ),

        )



    );
  }
}