import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/data/static_data.dart';
import 'package:responsive_booking/feature/widget/book_widget.dart';
import 'package:responsive_booking/feature/widget/friend_title_widget.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: AppColor.backgroundDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: AppColor.progress,
                    backgroundImage: NetworkImage(user.first.image),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      user.first.name,
                      style: const TextStyle(
                        color: AppColor.textPrimaryDark,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(color: AppColor.dividerDark, height: 1),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const _SectionHeader(label: 'Books'),
                const SizedBox(height: 10),
                ...book.map(
                  (b) => BookWidget(bookModel: b, isSelected: b.id == 'book_1'),
                ),
                const Divider(color: AppColor.dividerDark, height: 1),
                const _SectionHeader(label: 'Friends'),
                ...friend.map((f) => FriendTitleWidget(friend: f)),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  child: Text(
                    'See more',
                    style: TextStyle(
                      color: AppColor.textSecondaryDark.withValues(alpha: 0.7),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: AppColor.dividerDark, height: 1),
          SafeArea(
            top: false,
            child: ListTile(
              leading: const Icon(
                Icons.settings_outlined,
                color: AppColor.textSecondaryDark,
                size: 18,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                  color: AppColor.textSecondaryDark,
                  fontSize: 14,
                ),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String label;

  const _SectionHeader({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: AppColor.textSecondaryDark,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: AppColor.textSecondaryDark,

              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(Icons.add, size: 13),
          ),
          //  const Icon(Icons.add, color: AppColor.textSecondaryDark, size: 16),
        ],
      ),
    );
  }
}
