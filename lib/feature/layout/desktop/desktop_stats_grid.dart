import 'package:flutter/material.dart';
import 'package:responsive_booking/feature/components/badge_row.dart';
import 'package:responsive_booking/feature/components/level_card.dart';
import 'package:responsive_booking/feature/components/progress_card.dart';
import 'package:responsive_booking/feature/components/streak_card.dart';
import 'package:responsive_booking/feature/components/time_card.dart';

class DesktopStatsGrid extends StatelessWidget {
  const DesktopStatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(flex: 2, child: ProgressCard()),
              const SizedBox(width: 12),
              Expanded(child: TimeCard()),
            ],
          ),
        ),
        const SizedBox(height: 12),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: LevelCard()),
              const SizedBox(width: 12),
              Expanded(child: StreakCard()),
              const SizedBox(width: 12),
              Expanded(child: BadgesCard()),
            ],
          ),
        ),
      ],
    );
  }
}
