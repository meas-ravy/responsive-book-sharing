import 'dart:ui';

abstract class AppColor {
  // accent color
  static const Color progress = Color(0xFFEAB308);
  static const Color time = Color(0xFF6366F1);
  static const Color level = Color(0xFF8B5CF6);
  static const Color streak = Color(0xFF38BDF8);
  static const Color badges = Color(0xFF38BDF8);

  // ── Light mode ──────────────────────────────────────────────
  static const Color backgroundLight = Color(0xFFF2F2F7);
  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color cardAltLight = Color(0xFFF7F7F7);
  static const Color textPrimaryLight = Color(0xFF18181B);
  static const Color textSecondaryLight = Color(0xFF71717A);
  static const Color dividerLight = Color(0xFFE4E4E7);

  // ── Dark mode ───────────────────────────────────────────────
  static const Color backgroundDark = Color(0xFF1C1C1E);
  static const Color cardDark = Color(0xFF2C2C2E);
  static const Color cardAltDark = Color(0xFF3A3A3C);
  static const Color textPrimaryDark = Color(0xFFFAFAFA);
  static const Color textSecondaryDark = Color(0xFFA1A1AA);
  static const Color dividerDark = Color(0xFF3F3F46);
}
