import 'package:flutter/material.dart';
import 'package:responsive_booking/feature/components/leader_board_section.dart';
import 'package:responsive_booking/feature/layout/desktop/desktop_book_detail.dart';
import 'package:responsive_booking/feature/layout/desktop/desktop_stats_grid.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DesktopBookDetail(),
          const SizedBox(height: 24),
          const DesktopStatsGrid(),
          const SizedBox(height: 24),
          LeaderboardSection(),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
