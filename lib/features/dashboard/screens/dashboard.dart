import 'package:farm_thoughts_web_app/commons/widget/status_card.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StatusCard(
          name: 'aseem',
          profileImg: 'https://playcontestofchampions.com/wp-content/uploads/2023/04/champion-iron-man.webp',

          mobile: 93455679393,
          deliveredQuantity: 10)



    );
  }
}
