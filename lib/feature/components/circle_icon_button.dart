import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;

  const CircleIconButton({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 34,
      decoration: const BoxDecoration(
        color: AppColor.cardDark,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: AppColor.textPrimaryDark, size: 16),
    );
  }
}
