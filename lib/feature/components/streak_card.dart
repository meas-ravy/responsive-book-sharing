import 'package:flutter/material.dart';
import 'package:responsive_booking/feature/components/stat_card.dart';

class StreakCard extends StatelessWidget {
  const StreakCard({super.key});
  @override
  Widget build(BuildContext context) {
    return StatCard(
      color: const Color(0xFF22C55E),
      label: 'Streak',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.bolt, color: Colors.white, size: 22),
              const Text(
                '7',
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
            'Day streak, come back\ntomorrow to keep it up!',
            style: TextStyle(color: Colors.white70, fontSize: 11, height: 1.4),
          ),
          const SizedBox(height: 4),
          const Text(
            '19% more consistent',
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
