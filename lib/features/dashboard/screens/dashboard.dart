import 'package:farm_thoughts_web_app/commons/widget/status_card.dart';
import 'package:farm_thoughts_web_app/commons/widget/vendour_card.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Vendour_Card(name:"aseem", profileImg: "https://playcontestofchampions.com/wp-content/uploads/2023/04/champion-iron-man.webp", address: "no16 haji hussain st", mobile: 93445634343, pricePerUnit: 100, timestamp: 20)




    );
  }
}
