import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';

class TabButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const TabButton({required this.label, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: isSelected ? AppColor.cardAltDark : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected
              ? AppColor.textPrimaryDark
              : AppColor.textSecondaryDark,
          fontSize: 13,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
    );
  }
}
