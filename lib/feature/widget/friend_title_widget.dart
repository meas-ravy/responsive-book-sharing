import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/data/friend_model.dart';

class FriendTitleWidget extends StatelessWidget {
  final FriendModel friend;

  const FriendTitleWidget({super.key, required this.friend});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      leading: CircleAvatar(
        radius: 14,
        backgroundImage: NetworkImage(friend.image),
        backgroundColor: AppColor.cardAltDark,
        onBackgroundImageError: (_, _) {},
        child: friend.image.isEmpty
            ? Text(
                friend.name[0],
                style: const TextStyle(
                  color: AppColor.textPrimaryDark,
                  fontSize: 12,
                ),
              )
            : null,
      ),
      title: Text(
        friend.name,
        style: const TextStyle(
          color: AppColor.textPrimaryDark,
          fontSize: 13,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
