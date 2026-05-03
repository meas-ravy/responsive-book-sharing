import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/components/circle_icon_button.dart';
import 'package:responsive_booking/feature/data/static_data.dart';

class DesktopBookDetail extends StatelessWidget {
  const DesktopBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedBook = book.first;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            selectedBook.image,
            width: 140,
            height: 190,
            fit: BoxFit.cover,
            errorBuilder: (_, _, _) => Container(
              width: 140,
              height: 190,
              decoration: BoxDecoration(
                color: AppColor.cardDark,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.book,
                color: AppColor.textSecondaryDark,
                size: 40,
              ),
            ),
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleIconButton(icon: Icons.add),
                  const SizedBox(width: 8),
                  CircleIconButton(icon: Icons.ios_share_outlined),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                'Harry Potter and the Deathly Hallows',
                style: TextStyle(
                  color: AppColor.textPrimaryDark,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Author J.K. Rowling',
                style: TextStyle(
                  color: AppColor.textSecondaryDark,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Related books',
                style: TextStyle(
                  color: AppColor.textSecondaryDark,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColor.textSecondaryDark,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
