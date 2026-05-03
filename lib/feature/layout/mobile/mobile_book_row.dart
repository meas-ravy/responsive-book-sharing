import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/data/static_data.dart';

class MobileBookRow extends StatelessWidget {
  const MobileBookRow({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedBook = book.first;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              selectedBook.image,
              width: 42,
              height: 56,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => Container(
                width: 42,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColor.cardDark,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(
                  Icons.book,
                  color: AppColor.textSecondaryDark,
                  size: 20,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'War and Peace',
              style: const TextStyle(
                color: AppColor.textPrimaryDark,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              color: AppColor.cardDark,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              color: AppColor.textPrimaryDark,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
