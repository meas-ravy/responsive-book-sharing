import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/data/static_data.dart';

class BookDetailSection extends StatelessWidget {
  final bool isMobile;

  const BookDetailSection({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    final selectedBook = book.first;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            selectedBook.image,
            width: isMobile ? 90 : 140,
            height: isMobile ? 120 : 190,
            fit: BoxFit.cover,
            errorBuilder: (_, _, _) => Container(
              width: isMobile ? 90 : 140,
              height: isMobile ? 120 : 190,
              decoration: BoxDecoration(
                color: AppColor.cardDark,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.book,
                color: AppColor.textSecondaryDark,
                size: 40,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  // _IconButton(icon: Icons.add),
                  // const SizedBox(width: 8),
                  // _IconButton(icon: Icons.ios_share_outlined),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'Harry Potter and the Deathly Hallows',
                style: TextStyle(
                  color: AppColor.textPrimaryDark,
                  fontSize: isMobile ? 20 : 28,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Author J.K. Rowling',
                style: TextStyle(
                  color: AppColor.textSecondaryDark,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Related books',
                style: TextStyle(
                  color: AppColor.textSecondaryDark,
                  fontSize: 13,
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
