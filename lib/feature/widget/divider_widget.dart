import 'package:flutter/material.dart';
import 'package:responsive_booking/core/theme/app_color.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(thickness: 1, height: 1, color: AppColor.backgroundLight);
  }
}
