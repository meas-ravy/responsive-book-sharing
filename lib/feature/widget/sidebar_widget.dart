import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: AppColor.backgroundLight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: AppColor.badges,
                ),
              ),
              Text('Jake WillSmite'),
            ],
          ),
        ],
      ),
    );
  }
}
