import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/components/avatar_stack.dart';
import 'package:responsive_booking/feature/components/stat_card.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return StatCard(
      color: AppColor.progress,
      label: 'Progress',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              const Icon(
                Icons.menu_book_outlined,
                color: Colors.white,
                size: 22,
              ),
              const SizedBox(width: 8),
              const Text(
                '543',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              const Flexible(
                child: Text(
                  'Out of 1,225 pages',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const Text(
            '#5 among friends',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: 543 / 1225,
              backgroundColor: Colors.black26,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.black54),
              minHeight: 6,
            ),
          ),
          const SizedBox(height: 10),
          AvatarStack(),
        ],
      ),
    );
  }
}
