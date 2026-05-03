import 'package:flutter/material.dart';
import 'package:responsive_booking/feature/components/stat_card.dart';

class TimeCard extends StatelessWidget {
  const TimeCard({super.key});
  @override
  Widget build(BuildContext context) {
    return StatCard(
      color: const Color(0xFFEA580C),
      label: 'Time',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.timer_outlined, color: Colors.white, size: 22),
              const SizedBox(width: 6),
              const Text(
                '6:24',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          const Text(
            'Global avg. read time\nfor your progress 7:28',
            style: TextStyle(color: Colors.white70, fontSize: 11, height: 1.4),
          ),
          const SizedBox(height: 4),
          const Text(
            '23% faster',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
