import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';
import 'package:responsive_booking/feature/data/book_model.dart';

class BookWidget extends StatelessWidget {
  final BookModel bookModel;
  final bool isSelected;

  const BookWidget({
    super.key,
    required this.bookModel,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? AppColor.cardDark.withValues(alpha: 0.5) : null,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.network(
            bookModel.image,
            width: 28,
            height: 36,
            fit: BoxFit.cover,
            errorBuilder: (_, _, _) => Container(
              width: 28,
              height: 36,
              decoration: BoxDecoration(
                color: AppColor.cardAltDark,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Icon(
                Icons.book_outlined,
                size: 16,
                color: AppColor.textSecondaryDark,
              ),
            ),
          ),
        ),
        title: Text(
          bookModel.name,
          style: const TextStyle(color: AppColor.textPrimaryDark, fontSize: 13),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
