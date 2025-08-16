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
  final double? padding_horizontal;
  final double? padding_vertical;


  const StatusCard({
    super.key,
    required this.name,
    required this.profileImg,
    required this.mobile,
    required this.deliveredQuantity,
    this.padding_horizontal,
    this.padding_vertical,
  });

  @override
  Widget build(BuildContext context) {
    final double horizontal = padding_horizontal ?? context.screenWidth * 0.03;
    final double vertical = padding_vertical ?? context.screenHeight * 0.01;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: (profileImg.isNotEmpty)
              ? NetworkImage(profileImg)
              : AssetImage('Assets/default.img'),
        ),
        title: Text('$name'),
        subtitle: Text('$mobile'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text("litres"), Text("$deliveredQuantity")],
            ),
          ],
        ),
      ),
    );
  }
}
