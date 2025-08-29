import 'package:farm_thoughts_web_app/core/provider/app_info_provider.dart';
import 'package:farm_thoughts_web_app/features/customer/provider/customer_provider.dart';
import 'package:farm_thoughts_web_app/core/provider/internet_checker_provider.dart';
import 'package:farm_thoughts_web_app/features/delivery_agent/provider/delivery_agents_provider.dart';
import 'package:farm_thoughts_web_app/features/delivery_entries/providers/delivery_entries_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

extension ProviderExtension on BuildContext {
  // Delivery Agents read provider
  DeliveryAgentsProvider get readDeliveryAgentsProvider =>
      read<DeliveryAgentsProvider>();

  // Delivery Agents watch provider
  DeliveryAgentsProvider get watchDeliveryAgentProvider =>
      watch<DeliveryAgentsProvider>();

  // App Information provider
  AppInfoProvider get watchAppInfoProvider => watch<AppInfoProvider>();
  AppInfoProvider get readAppInfoProvider => read<AppInfoProvider>();

  // Customer Provider
  CustomerProvider get watchCustomerProvider => watch<CustomerProvider>();
  CustomerProvider get readCustomerProvider => read<CustomerProvider>();

  // Internet Checker Provider
  InternetCheckerProvider get watchInternetCheckerProvider =>
      watch<InternetCheckerProvider>();
  InternetCheckerProvider get readInternetCheckerProvider =>
      read<InternetCheckerProvider>();

  // Delivery Entries Provider
  DeliveryEntriesProvider get readDeliveryEntriesProvider =>
      read<DeliveryEntriesProvider>();
  DeliveryEntriesProvider get watchDeliveryEntriesProvider =>
      watch<DeliveryEntriesProvider>();
}
