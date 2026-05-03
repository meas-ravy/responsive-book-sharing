import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/components/stat_card.dart';

class LevelCard extends StatelessWidget {
  const LevelCard({super.key});
  @override
  Widget build(BuildContext context) {
    return StatCard(
      color: AppColor.level,
      label: 'Level',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.shield_outlined, color: Colors.white, size: 20),
              const SizedBox(width: 4),
              const Text(
                '2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Text(
            '145 reader points\nto level up!',
            style: TextStyle(color: Colors.white70, fontSize: 11, height: 1.4),
          ),
          const SizedBox(height: 4),
          const Text(
            'Top 5% for this book',
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
