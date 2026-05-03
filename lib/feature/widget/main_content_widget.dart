import 'package:flutter/material.dart';
import 'package:responsive_booking/core/responsive/app_responsive.dart';
import 'package:responsive_booking/feature/layout/desktop/desktop_layout.dart';
import 'package:responsive_booking/feature/layout/mobile/mobile_layout.dart';

class MainContentWidget extends StatelessWidget {
  const MainContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = AppResponsive.isMobile(context);
    return isMobile ? const MobileLayout() : const DesktopLayout();
  }
}
