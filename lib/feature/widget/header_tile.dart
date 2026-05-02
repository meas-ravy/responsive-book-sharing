import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';

class HeaderTile extends StatelessWidget {
  final String label;
  const HeaderTile({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 12, color: AppColor.backgroundDark),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(color: AppColor.backgroundLight),
          child: Icon(Icons.add, color: AppColor.progress),
        ),
      ],
    );
  }
}
