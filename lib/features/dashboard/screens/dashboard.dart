import 'package:farm_thoughts_web_app/commons/widgets/k_statistics_card.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            KStatisticsCard(),
            KStatisticsCard(),
            KStatisticsCard(),
          ],
        ),
      ),
    );
  }
}
