import 'package:farm_thoughts_web_app/features/customer/screens/widgets/customer_calender.dart';
import 'package:farm_thoughts_web_app/features/customer/screens/widgets/customer_top_bar.dart';
import 'package:flutter/material.dart';

class CustomerDashboard extends StatelessWidget {
  const CustomerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomerTopBar(),
          Expanded(
            child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(color: Colors.green),
                ),
              ),
              Expanded(
                flex: 1,
                  child: Container(
                      color: Colors.white,
                    padding: EdgeInsets.all(8),
                    child: CustomerCalender(),

                  )
              ),
            ],
          ),
          ),

        ],
      ),
    );
  }
}
