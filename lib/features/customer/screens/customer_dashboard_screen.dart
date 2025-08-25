import 'package:farm_thoughts_web_app/commons/widgets/k_calender.dart';
import 'package:farm_thoughts_web_app/features/dashboard/widgets/dashboard_top_bar.dart';
import 'package:flutter/material.dart';

class CustomerDashboardScreen extends StatefulWidget {
  const CustomerDashboardScreen({super.key});

  @override
  State<CustomerDashboardScreen> createState() =>
      _CustomerDashboardScreenState();
}

class _CustomerDashboardScreenState extends State<CustomerDashboardScreen> {
  // Controllers
  final TextEditingController customerSearchController =
      TextEditingController();

  @override
  void dispose() {
    customerSearchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DashboardTopBar(
              searchTextEditingController: customerSearchController,
              userImageUrl: "",
            ),
          ),
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
                    child: KCalender(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
