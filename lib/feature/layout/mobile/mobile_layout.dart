import 'package:flutter/material.dart';
import 'package:responsive_booking/feature/components/add_friend_button.dart';
import 'package:responsive_booking/feature/components/badge_row.dart';
import 'package:responsive_booking/feature/components/leader_board_section.dart';
import 'package:responsive_booking/feature/components/level_card.dart';
import 'package:responsive_booking/feature/components/progress_card.dart';
import 'package:responsive_booking/feature/components/streak_card.dart';
import 'package:responsive_booking/feature/components/time_card.dart';
import 'package:responsive_booking/feature/layout/mobile/mobile_book_row.dart';
import 'package:responsive_booking/feature/layout/mobile/mobile_user_header.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const MobileUserHeader(),
          const MobileBookRow(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ProgressCard(),
                const SizedBox(height: 12),
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(child: TimeCard()),
                      const SizedBox(width: 12),
                      Expanded(child: StreakCard()),
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
                      Expanded(child: BadgesCard()),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                AddFriendsButton(),
                const SizedBox(height: 24),
                LeaderboardSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
