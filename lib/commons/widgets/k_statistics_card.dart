import 'package:farm_thoughts_web_app/core/constants/app_assets.dart';
import 'package:farm_thoughts_web_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KStatisticsCard extends StatelessWidget {
  const KStatisticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.only(right: 30),
        color: AppColors.primary,
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(AppAssets.orangeVector, height: 100),
                Positioned(
                  left: 35,
                  child: SvgPicture.asset(AppAssets.milkBottle, width: 30),
                ),
              ],
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "Total Milk Delivered",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Text(
                  "30,000",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
