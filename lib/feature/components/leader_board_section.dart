import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/components/tab_button.dart';
import 'package:responsive_booking/feature/data/static_data.dart';

class LeaderboardSection extends StatelessWidget {
  const LeaderboardSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Leaderboard',
          style: TextStyle(
            color: AppColor.textPrimaryDark,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColor.cardDark,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    spacing: 6,
                    children: [
                      TabButton(label: 'Friends', isSelected: false),
                      TabButton(label: 'Bookclub', isSelected: false),
                      TabButton(label: 'Global', isSelected: true),
                    ],
                  ),
                  const Icon(
                    Icons.ios_share_outlined,
                    color: AppColor.textSecondaryDark,
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: AppColor.cardAltDark,
                    backgroundImage: friend.isNotEmpty
                        ? NetworkImage(friend.first.image)
                        : null,
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rank #2,339',
                              style: TextStyle(
                                color: AppColor.textPrimaryDark,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Top 1%',
                              style: TextStyle(
                                color: AppColor.textPrimaryDark,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '88,242 points',
                              style: TextStyle(
                                color: AppColor.textSecondaryDark,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'Out of 3,376,487 readers',
                              style: TextStyle(
                                color: AppColor.textSecondaryDark,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
