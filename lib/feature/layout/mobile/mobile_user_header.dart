import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/data/static_data.dart';

class MobileUserHeader extends StatelessWidget {
  const MobileUserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
      child: Column(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: AppColor.progress,
            backgroundImage: user.first.image.isNotEmpty
                ? NetworkImage(user.first.image)
                : null,
            child: user.first.image.isEmpty
                ? Text(
                    user.first.name[0],
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                : null,
          ),
          const SizedBox(height: 6),
          Text(
            "${user.first.name}'s reader stats",
            style: const TextStyle(
              color: AppColor.textPrimaryDark,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
