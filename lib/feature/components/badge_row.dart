import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/components/stat_card.dart';

class BadgesCard extends StatelessWidget {
  const BadgesCard({super.key});
  @override
  Widget build(BuildContext context) {
    return StatCard(
      color: AppColor.badges,
      label: 'Badges',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _BadgeRow(
            icons: [
              Icons.lightbulb_outline,
              Icons.verified_outlined,
              Icons.blur_circular,
            ],
          ),
          const SizedBox(height: 10),
          _BadgeRow(
            icons: [
              Icons.hourglass_empty,
              Icons.menu_book_outlined,
              Icons.camera_alt_outlined,
            ],
          ),
        ],
      ),
    );
  }
}

class _BadgeRow extends StatelessWidget {
  final List<IconData> icons;

  const _BadgeRow({required this.icons});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: icons
          .map((icon) => Icon(icon, color: Colors.white, size: 22))
          .toList(),
    );
  }
}
