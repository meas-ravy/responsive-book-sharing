import 'package:flutter/material.dart';
import 'package:responsive_booking/core/responsive/app_responsive.dart';
import 'package:responsive_booking/feature/widget/sidebar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = AppResponsive.isMobile(context);
    return Scaffold(
      appBar: isMobile ? AppBar(title: const Text('Booking')) : null,
      drawer: isMobile ? const Drawer(child: SidebarWidget()) : null,
      body: Row(
        children: [
          if (!isMobile) const SidebarWidget(),
          const Expanded(child: Center(child: Text('Testing'))),
        ],
      ),
    );
  }
}
