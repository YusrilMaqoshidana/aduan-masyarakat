import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersetujuanAdminController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final List<Tab> tabs = <Tab>[
    const Tab(text: 'Accept'),
    const Tab(text: 'Reject'),
  ];
  final List<Widget> tabViews = <Widget>[
    const Center(child: Text('Tidak ada data accept')),
    const Center(child: Text('Tidak ada data reject')),
  ];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
