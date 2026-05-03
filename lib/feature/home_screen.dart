import 'package:flutter/material.dart';
import 'package:responsive_booking/core/responsive/app_responsive.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/widget/activity_panel_widget.dart';
import 'package:responsive_booking/feature/widget/main_content_widget.dart';
import 'package:responsive_booking/feature/widget/sidebar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = AppResponsive.isMobile(context);
    final isDesktop = AppResponsive.isDesktop(context);

    if (isMobile) {
      return const Scaffold(
        backgroundColor: AppColor.backgroundDark,
        body: SafeArea(child: MainContentWidget()),
      );
    }

    return Scaffold(
      backgroundColor: AppColor.backgroundDark,
      body: Row(
        children: [
          const SidebarWidget(),
          const Expanded(child: MainContentWidget()),
          if (isDesktop) const ActivityPanelWidget(),
        ],
      ),
    );
  }
}
