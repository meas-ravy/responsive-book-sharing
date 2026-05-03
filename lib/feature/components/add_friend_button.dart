import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';

class AddFriendsButton extends StatelessWidget {
  const AddFriendsButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 14),
            decoration: BoxDecoration(
              color: AppColor.cardDark,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, color: AppColor.textPrimaryDark, size: 18),
                SizedBox(width: 6),
                Text(
                  'Add friends',
                  style: TextStyle(
                    color: AppColor.textPrimaryDark,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: AppColor.cardDark,
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Icon(
            Icons.ios_share_outlined,
            color: AppColor.textPrimaryDark,
            size: 18,
          ),
        ),
      ],
    );
  }
}
