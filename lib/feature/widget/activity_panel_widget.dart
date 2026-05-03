import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/data/activity_model.dart';
import 'package:responsive_booking/feature/data/static_data.dart';

class ActivityPanelWidget extends StatelessWidget {
  const ActivityPanelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: AppColor.backgroundDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
              child: Text(
                'Activity',
                style: TextStyle(
                  color: AppColor.textPrimaryDark,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              itemCount: activities.length,
              separatorBuilder: (_, _) => const SizedBox(height: 8),
              itemBuilder: (_, index) =>
                  _ActivityCard(activity: activities[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class _ActivityCard extends StatelessWidget {
  final ActivityModel activity;

  const _ActivityCard({required this.activity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColor.cardDark,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: AppColor.cardAltDark,
                backgroundImage: activity.userImage.isNotEmpty
                    ? NetworkImage(activity.userImage)
                    : null,
                onBackgroundImageError: activity.userImage.isNotEmpty
                    ? (_, _) {}
                    : null,
                child: activity.userImage.isEmpty
                    ? Text(
                        activity.userName[0],
                        style: const TextStyle(
                          color: AppColor.textPrimaryDark,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    : null,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  activity.userName,
                  style: const TextStyle(
                    color: AppColor.textPrimaryDark,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                activity.timeAgo,
                style: const TextStyle(
                  color: AppColor.textSecondaryDark,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            activity.message,
            style: const TextStyle(
              color: AppColor.textPrimaryDark,
              fontSize: 13,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Reply',
            style: TextStyle(
              color: AppColor.textSecondaryDark.withValues(alpha: 0.8),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
