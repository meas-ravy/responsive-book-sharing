import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/data/static_data.dart';

class AvatarStack extends StatelessWidget {
  const AvatarStack({super.key});

  @override
  Widget build(BuildContext context) {
    final avatars = friend.take(5).toList();
    return SizedBox(
      height: 28,
      width: avatars.length * 20.0 + 8,
      child: Stack(
        children: List.generate(avatars.length, (i) {
          return Positioned(
            left: i * 20.0,
            child: CircleAvatar(
              radius: 14,
              backgroundColor: AppColor.cardAltDark,
              backgroundImage: avatars[i].image.isNotEmpty
                  ? NetworkImage(avatars[i].image)
                  : null,
              child: avatars[i].image.isEmpty
                  ? Text(
                      avatars[i].name[0],
                      style: const TextStyle(fontSize: 10),
                    )
                  : null,
            ),
          );
        }),
      ),
    );
  }
}
