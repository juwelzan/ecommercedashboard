import 'package:flutter/material.dart';

// ============================================================
//  AppTheme -- Cyber Punk  |  2026-03-21
//
//  Surface hierarchy (each shade is DIFFERENT):
//  surfaceContainerLowest  --> scaffoldBackgroundColor (darkest)
//  surface                 --> AppBar, BottomSheet, Dialog, NavigationBar
//  surfaceContainer        --> Card.color, list rows
//  surfaceContainerHigh    --> elevated chips, action areas
//  surfaceContainerHighest --> TextField fillColor, Chip bg
//  primaryContainer        --> NavigationBar indicator, FAB bg
//
//  SemanticColors — 5 roles per status (fixed: same visual weight dark & light):
//  xxxText          --> icon / badge / label text
//  onXxx            --> text ON solid colored button
//  xxxContainer     --> opaque banner / card background
//  onXxxContainer   --> text inside the container
//  xxxBg            --> Color.fromARGB (~10% opacity tint)
//
//  Error uses ColorScheme (built-in):
//  cs.error / cs.errorContainer / cs.onErrorContainer
//  sc.errorBg --> Color.fromARGB (~10% red tint)
//
//  Usage:
//  MaterialApp(theme: AppTheme.light, darkTheme: AppTheme.dark, themeMode: ThemeMode.system)
//  final cs = Theme.of(context).colorScheme;
//  final sc = SemanticColors.of(context);
// ============================================================

// ================================================================
//  SemanticColors — ThemeExtension
//  Each alert type has 5 color roles:
//
//  xxxText          — icon, badge, label text color
//  onXxx            — text ON a solid colored button/chip
//  xxxContainer     — opaque card/banner background color
//  onXxxContainer   — text/icon inside the container
//  xxxBg            — Color.fromARGB (alpha ~25/255 = ~10%)
//                     Ultra-subtle tint: place behind any element
//
//  Usage:
//  final sc = SemanticColors.of(context);
//
//  // Success icon:
//  Icon(Icons.check_circle, color: sc.successText)
//
//  // Success banner (opaque):
//  Container(color: sc.successContainer,
//    child: Text("Done", style: TextStyle(color: sc.onSuccessContainer)))
//
//  // Subtle tinted background behind any widget:
//  Container(color: sc.successBg, child: ...)
//  Container(color: sc.warningBg, child: ...)
//  Container(color: sc.errorBg,   child: ...)  // cs.error for text
// ================================================================

@immutable
class SemanticColors extends ThemeExtension<SemanticColors> {
  const SemanticColors({
    // Success
    required this.successText,
    required this.onSuccess,
    required this.successContainer,
    required this.onSuccessContainer,
    required this.successBg,
    // Warning
    required this.warningText,
    required this.onWarning,
    required this.warningContainer,
    required this.onWarningContainer,
    required this.warningBg,
    // Info
    required this.infoText,
    required this.onInfo,
    required this.infoContainer,
    required this.onInfoContainer,
    required this.infoBg,
    // Error bg helper
    required this.errorBg,
  });

  // ── Success ────────────────────────────────────────────────────
  final Color successText; // icon · badge · label text
  final Color onSuccess; // text ON solid success button
  final Color successContainer; // opaque banner / card bg
  final Color onSuccessContainer; // text inside container
  final Color successBg; // ~10% tint — place behind any widget

  // ── Warning ────────────────────────────────────────────────────
  final Color warningText; // icon · badge · label text
  final Color onWarning;
  final Color warningContainer; // opaque banner / card bg
  final Color onWarningContainer;
  final Color warningBg; // ~10% tint

  // ── Info ───────────────────────────────────────────────────────
  final Color infoText; // icon · badge · label text
  final Color onInfo;
  final Color infoContainer; // opaque banner / card bg
  final Color onInfoContainer;
  final Color infoBg; // ~10% tint

  // ── Error bg (use cs.error from ColorScheme for text) ──────────
  final Color errorBg; // ~10% tint — subtle error bg

  static SemanticColors of(BuildContext context) =>
      Theme.of(context).extension<SemanticColors>()!;

  @override
  SemanticColors copyWith({
    Color? successText,
    Color? onSuccess,
    Color? successContainer,
    Color? onSuccessContainer,
    Color? successBg,
    Color? warningText,
    Color? onWarning,
    Color? warningContainer,
    Color? onWarningContainer,
    Color? warningBg,
    Color? infoText,
    Color? onInfo,
    Color? infoContainer,
    Color? onInfoContainer,
    Color? infoBg,
    Color? errorBg,
  }) => SemanticColors(
    successText: successText ?? this.successText,
    onSuccess: onSuccess ?? this.onSuccess,
    successContainer: successContainer ?? this.successContainer,
    onSuccessContainer: onSuccessContainer ?? this.onSuccessContainer,
    successBg: successBg ?? this.successBg,
    warningText: warningText ?? this.warningText,
    onWarning: onWarning ?? this.onWarning,
    warningContainer: warningContainer ?? this.warningContainer,
    onWarningContainer: onWarningContainer ?? this.onWarningContainer,
    warningBg: warningBg ?? this.warningBg,
    infoText: infoText ?? this.infoText,
    onInfo: onInfo ?? this.onInfo,
    infoContainer: infoContainer ?? this.infoContainer,
    onInfoContainer: onInfoContainer ?? this.onInfoContainer,
    infoBg: infoBg ?? this.infoBg,
    errorBg: errorBg ?? this.errorBg,
  );

  @override
  SemanticColors lerp(SemanticColors? other, double t) {
    if (other is! SemanticColors) return this;
    return SemanticColors(
      successText: Color.lerp(successText, other.successText, t)!,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t)!,
      successContainer: Color.lerp(
        successContainer,
        other.successContainer,
        t,
      )!,
      onSuccessContainer: Color.lerp(
        onSuccessContainer,
        other.onSuccessContainer,
        t,
      )!,
      successBg: Color.lerp(successBg, other.successBg, t)!,
      warningText: Color.lerp(warningText, other.warningText, t)!,
      onWarning: Color.lerp(onWarning, other.onWarning, t)!,
      warningContainer: Color.lerp(
        warningContainer,
        other.warningContainer,
        t,
      )!,
      onWarningContainer: Color.lerp(
        onWarningContainer,
        other.onWarningContainer,
        t,
      )!,
      warningBg: Color.lerp(warningBg, other.warningBg, t)!,
      infoText: Color.lerp(infoText, other.infoText, t)!,
      onInfo: Color.lerp(onInfo, other.onInfo, t)!,
      infoContainer: Color.lerp(infoContainer, other.infoContainer, t)!,
      onInfoContainer: Color.lerp(onInfoContainer, other.onInfoContainer, t)!,
      infoBg: Color.lerp(infoBg, other.infoBg, t)!,
      errorBg: Color.lerp(errorBg, other.errorBg, t)!,
    );
  }
}

class AppTheme {
  AppTheme._();

  static const ColorScheme _lightScheme = ColorScheme(
    brightness: Brightness.light,
    surface: Color(0xFFFFFFFF), // AppBar BottomSheet Dialog NavBar
    onSurface: Color(0xFF080018),
    onSurfaceVariant: Color(0xFF3A1070),
    surfaceContainerLowest: Color(0xFFFAFAFF), // scaffoldBackgroundColor
    surfaceContainerLow: Color(0xFFF8F5FF),
    surfaceContainer: Color(0xFFF0E8FF), // Card.color
    surfaceContainerHigh: Color(0xFFE8D8FF), // elevated chips
    surfaceContainerHighest: Color(0xFFEEE8FF), // TextField fill
    inverseSurface: Color(0xFF100020),
    onInverseSurface: Color(0xFFF0E8FF),
    primary: Color(0xFF6600AA), // ElevatedButton bg
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFF0D8FF), // NavBar indicator FAB
    onPrimaryContainer: Color(0xFF30006A),
    inversePrimary: Color(0xFFFFE600),
    secondary: Color(0xFFCC0050),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFFFD8E8),
    onSecondaryContainer: Color(0xFF5C0020),
    tertiary: Color(0xFF007A80),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFCCF8FC),
    onTertiaryContainer: Color(0xFF003038),
    outline: Color(0xFF8050C0), // TextField enabledBorder
    outlineVariant: Color(0xFFD0B8F0), // Divider
    error: Color(0xFFB00030),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD8), // error alert bg
    onErrorContainer: Color(0xFF410002),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
  );

  static const ColorScheme _darkScheme = ColorScheme(
    brightness: Brightness.dark,
    surface: Color(0xFF0E0020), // AppBar BottomSheet Dialog NavBar
    onSurface: Color(0xFFF0E8FF),
    onSurfaceVariant: Color(0xFFC0A8E0),
    surfaceContainerLowest: Color(0xFF060010), // scaffoldBackgroundColor
    surfaceContainerLow: Color(0xFF0A0018),
    surfaceContainer: Color(0xFF120028), // Card.color
    surfaceContainerHigh: Color(0xFF1C0038), // elevated chips
    surfaceContainerHighest: Color(0xFF160030), // TextField fill
    inverseSurface: Color(0xFFF0E8FF),
    onInverseSurface: Color(0xFF100020),
    primary: Color(0xFFFFE600), // ElevatedButton bg
    onPrimary: Color(0xFF1A1600),
    primaryContainer: Color(0xFF2E2800), // NavBar indicator FAB
    onPrimaryContainer: Color(0xFFFFF280),
    inversePrimary: Color(0xFFAAA000),
    secondary: Color(0xFFFF2D78),
    onSecondary: Color(0xFF5C0020),
    secondaryContainer: Color(0xFF7A0030),
    onSecondaryContainer: Color(0xFFFFAACC),
    tertiary: Color(0xFF00F5FF),
    onTertiary: Color(0xFF003038),
    tertiaryContainer: Color(0xFF004A50),
    onTertiaryContainer: Color(0xFF88F8FF),
    outline: Color(0xFF8050C0), // TextField enabledBorder
    outlineVariant: Color(0xFF301060), // Divider
    error: Color(0xFFFF2D78),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFF7A0030), // error alert bg
    onErrorContainer: Color(0xFFFFAACC),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
  );

  // ── SemanticColors (light) ─────────────────────────────────────────────
  // Consistent visual weight in both dark & light mode.
  // xxxText   → icon / badge / label text color
  // onXxx     → text ON a solid colored button
  // xxxContainer → opaque card / banner background
  // onXxxContainer → text inside container
  // xxxBg     → Color.fromARGB — ultra-low-opacity tint (place behind anything)
  static const SemanticColors _lightSem = SemanticColors(
    // ── Success ────────────────────────────────────────────────────
    successText: Color(0xFF2E7D32),
    onSuccess: Color(0xFFFFFFFF),
    successContainer: Color(0xFFE8F5E9),
    onSuccessContainer: Color(0xFF1B5E20),
    successBg: Color.fromARGB(25, 76, 175, 80),
    // ── Warning ────────────────────────────────────────────────────
    warningText: Color(0xFFE65100),
    onWarning: Color(0xFFFFFFFF),
    warningContainer: Color(0xFFFFF3E0),
    onWarningContainer: Color(0xFFBF360C),
    warningBg: Color.fromARGB(25, 255, 152, 0),
    // ── Info ───────────────────────────────────────────────────────
    infoText: Color(0xFF0277BD),
    onInfo: Color(0xFFFFFFFF),
    infoContainer: Color(0xFFE3F2FD),
    onInfoContainer: Color(0xFF01579B),
    infoBg: Color.fromARGB(25, 33, 150, 243),
    // ── Error bg helper (text = cs.error from ColorScheme) ─────────
    errorBg: Color.fromARGB(25, 244, 67, 54),
  );

  // ── SemanticColors (dark) ─────────────────────────────────────────────
  // Consistent visual weight in both dark & light mode.
  // xxxText   → icon / badge / label text color
  // onXxx     → text ON a solid colored button
  // xxxContainer → opaque card / banner background
  // onXxxContainer → text inside container
  // xxxBg     → Color.fromARGB — ultra-low-opacity tint (place behind anything)
  static const SemanticColors _darkSem = SemanticColors(
    // ── Success ────────────────────────────────────────────────────
    successText: Color(0xFF69F0AE),
    onSuccess: Color(0xFF003018),
    successContainer: Color(0xFF1A3D28),
    onSuccessContainer: Color(0xFF69F0AE),
    successBg: Color.fromARGB(25, 76, 175, 80),
    // ── Warning ────────────────────────────────────────────────────
    warningText: Color(0xFFFFD740),
    onWarning: Color(0xFF3A2800),
    warningContainer: Color(0xFF3D2C00),
    onWarningContainer: Color(0xFFFFD740),
    warningBg: Color.fromARGB(25, 255, 152, 0),
    // ── Info ───────────────────────────────────────────────────────
    infoText: Color(0xFF40C4FF),
    onInfo: Color(0xFF003347),
    infoContainer: Color(0xFF00293D),
    onInfoContainer: Color(0xFF40C4FF),
    infoBg: Color.fromARGB(25, 33, 150, 243),
    // ── Error bg helper (text = cs.error from ColorScheme) ─────────
    errorBg: Color.fromARGB(25, 244, 67, 54),
  );

  static ThemeData get light {
    final cs = _lightScheme;
    return ThemeData(
      useMaterial3: true,
      colorScheme: cs,
      scaffoldBackgroundColor: cs.surfaceContainerLowest,
      appBarTheme: AppBarTheme(
        backgroundColor: cs.surface,
        foregroundColor: cs.onSurface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: TextStyle(
          color: cs.onSurface,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: IconThemeData(color: cs.onSurface),
      ),
      cardTheme: CardThemeData(
        color: cs.surfaceContainer,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: cs.outlineVariant, width: 0.8),
        ),
      ),
      dividerTheme: DividerThemeData(color: cs.outlineVariant, thickness: 1),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: cs.surfaceContainerHighest,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: cs.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: cs.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: cs.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: cs.error, width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: cs.error, width: 2),
        ),
        labelStyle: TextStyle(color: cs.onSurfaceVariant),
        hintStyle: TextStyle(color: cs.onSurfaceVariant),
        errorStyle: TextStyle(color: cs.error, fontSize: 12),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: cs.primary,
          side: BorderSide(color: cs.outline),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: cs.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 3,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: cs.surface,
        indicatorColor: cs.primaryContainer,
        surfaceTintColor: Colors.transparent,
        elevation: 3,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        iconTheme: WidgetStateProperty.resolveWith((st) {
          if (st.contains(WidgetState.selected)) {
            return IconThemeData(color: cs.onPrimaryContainer, size: 24);
          }
          return IconThemeData(color: cs.onSurfaceVariant, size: 24);
        }),
        labelTextStyle: WidgetStateProperty.resolveWith((st) {
          if (st.contains(WidgetState.selected)) {
            return TextStyle(
              color: cs.onPrimaryContainer,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            );
          }
          return TextStyle(color: cs.onSurfaceVariant, fontSize: 12);
        }),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: cs.surface,
        selectedItemColor: cs.primary,
        unselectedItemColor: cs.onSurfaceVariant,
        type: BottomNavigationBarType.fixed,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: cs.surfaceContainerHighest,
        selectedColor: cs.primaryContainer,
        labelStyle: TextStyle(color: cs.onSurfaceVariant, fontSize: 13),
        secondaryLabelStyle: TextStyle(
          color: cs.onPrimaryContainer,
          fontSize: 13,
        ),
        side: BorderSide(color: cs.outlineVariant),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: cs.surface,
        surfaceTintColor: Colors.transparent,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        titleTextStyle: TextStyle(
          color: cs.onSurface,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        contentTextStyle: TextStyle(
          color: cs.onSurfaceVariant,
          fontSize: 14,
          height: 1.5,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: cs.surface,
        surfaceTintColor: Colors.transparent,
        showDragHandle: true,
        dragHandleColor: cs.outlineVariant,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      ),
      drawerTheme: DrawerThemeData(backgroundColor: cs.surface, elevation: 1),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: cs.inverseSurface,
        contentTextStyle: TextStyle(color: cs.onInverseSurface),
        actionTextColor: cs.inversePrimary,
        behavior: SnackBarBehavior.floating,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      switchTheme: SwitchThemeData(
        trackColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected)
              ? cs.primary
              : cs.surfaceContainerHighest,
        ),
        thumbColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? cs.onPrimary : cs.outline,
        ),
        trackOutlineColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected)
              ? Colors.transparent
              : cs.outline,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected)
              ? cs.primary
              : Colors.transparent,
        ),
        checkColor: WidgetStateProperty.all(cs.onPrimary),
        side: BorderSide(color: cs.outline, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? cs.primary : cs.outline,
        ),
      ),
      listTileTheme: ListTileThemeData(
        tileColor: Colors.transparent,
        iconColor: cs.onSurfaceVariant,
        textColor: cs.onSurface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      ),
      tabBarTheme: TabBarThemeData(
        labelColor: cs.primary,
        unselectedLabelColor: cs.onSurfaceVariant,
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: cs.primary, width: 2),
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: cs.primary,
        linearTrackColor: cs.surfaceContainerHigh,
        circularTrackColor: cs.surfaceContainerHigh,
      ),
      extensions: [_lightSem],
    );
  }

  static ThemeData get dark {
    final cs = _darkScheme;
    return ThemeData(
      useMaterial3: true,
      colorScheme: cs,
      scaffoldBackgroundColor: cs.surfaceContainerLowest,
      appBarTheme: AppBarTheme(
        backgroundColor: cs.surface,
        foregroundColor: cs.onSurface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: TextStyle(
          color: cs.onSurface,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: IconThemeData(color: cs.onSurface),
      ),
      cardTheme: CardThemeData(
        color: cs.surfaceContainer,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: cs.outlineVariant, width: 0.8),
        ),
      ),
      dividerTheme: DividerThemeData(color: cs.outlineVariant, thickness: 1),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: cs.surfaceContainerHighest,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: cs.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: cs.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: cs.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: cs.error, width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: cs.error, width: 2),
        ),
        labelStyle: TextStyle(color: cs.onSurfaceVariant),
        hintStyle: TextStyle(color: cs.onSurfaceVariant),
        errorStyle: TextStyle(color: cs.error, fontSize: 12),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: cs.primary,
          side: BorderSide(color: cs.outline),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: cs.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 3,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: cs.surface,
        indicatorColor: cs.primaryContainer,
        surfaceTintColor: Colors.transparent,
        elevation: 3,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        iconTheme: WidgetStateProperty.resolveWith((st) {
          if (st.contains(WidgetState.selected)) {
            return IconThemeData(color: cs.onPrimaryContainer, size: 24);
          }
          return IconThemeData(color: cs.onSurfaceVariant, size: 24);
        }),
        labelTextStyle: WidgetStateProperty.resolveWith((st) {
          if (st.contains(WidgetState.selected)) {
            return TextStyle(
              color: cs.onPrimaryContainer,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            );
          }
          return TextStyle(color: cs.onSurfaceVariant, fontSize: 12);
        }),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: cs.surface,
        selectedItemColor: cs.primary,
        unselectedItemColor: cs.onSurfaceVariant,
        type: BottomNavigationBarType.fixed,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: cs.surfaceContainerHighest,
        selectedColor: cs.primaryContainer,
        labelStyle: TextStyle(color: cs.onSurfaceVariant, fontSize: 13),
        secondaryLabelStyle: TextStyle(
          color: cs.onPrimaryContainer,
          fontSize: 13,
        ),
        side: BorderSide(color: cs.outlineVariant),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: cs.surface,
        surfaceTintColor: Colors.transparent,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        titleTextStyle: TextStyle(
          color: cs.onSurface,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        contentTextStyle: TextStyle(
          color: cs.onSurfaceVariant,
          fontSize: 14,
          height: 1.5,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: cs.surface,
        surfaceTintColor: Colors.transparent,
        showDragHandle: true,
        dragHandleColor: cs.outlineVariant,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      ),
      drawerTheme: DrawerThemeData(backgroundColor: cs.surface, elevation: 1),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: cs.inverseSurface,
        contentTextStyle: TextStyle(color: cs.onInverseSurface),
        actionTextColor: cs.inversePrimary,
        behavior: SnackBarBehavior.floating,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      switchTheme: SwitchThemeData(
        trackColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected)
              ? cs.primary
              : cs.surfaceContainerHighest,
        ),
        thumbColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? cs.onPrimary : cs.outline,
        ),
        trackOutlineColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected)
              ? Colors.transparent
              : cs.outline,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected)
              ? cs.primary
              : Colors.transparent,
        ),
        checkColor: WidgetStateProperty.all(cs.onPrimary),
        side: BorderSide(color: cs.outline, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? cs.primary : cs.outline,
        ),
      ),
      listTileTheme: ListTileThemeData(
        tileColor: Colors.transparent,
        iconColor: cs.onSurfaceVariant,
        textColor: cs.onSurface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      ),
      tabBarTheme: TabBarThemeData(
        labelColor: cs.primary,
        unselectedLabelColor: cs.onSurfaceVariant,
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: cs.primary, width: 2),
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: cs.primary,
        linearTrackColor: cs.surfaceContainerHigh,
        circularTrackColor: cs.surfaceContainerHigh,
      ),
      extensions: [_darkSem],
    );
  }
}

// ── USAGE EXAMPLES ──────────────────────────────────────────
// final cs = Theme.of(context).colorScheme;
// final sc = SemanticColors.of(context);
//
// // Scaffold / AppBar / Card
// scaffoldBg:      cs.surfaceContainerLowest
// AppBar bg:       cs.surface
// Card bg:         cs.surfaceContainer
// TextField fill:  cs.surfaceContainerHighest
// NavBar indicator:cs.primaryContainer
//
// // Icon / Badge
// Icon(Icons.check_circle, color: sc.successText)
// Icon(Icons.warning, color: sc.warningText)
// Icon(Icons.info, color: sc.infoText)
// Icon(Icons.error, color: cs.error)
//
// // Opaque banner/card
// Container(color: sc.successContainer,
//   child: Text("Done", style: TextStyle(color: sc.onSuccessContainer)))
// Container(color: sc.warningContainer,
//   child: Text("Warning", style: TextStyle(color: sc.onWarningContainer)))
// Container(color: sc.infoContainer,
//   child: Text("Update", style: TextStyle(color: sc.onInfoContainer)))
// Container(color: cs.errorContainer,
//   child: Text("Error", style: TextStyle(color: cs.onErrorContainer)))
//
// // Subtle ~10% tint behind any widget
// Container(color: sc.successBg, child: ...)
// Container(color: sc.warningBg, child: ...)
// Container(color: sc.infoBg,    child: ...)
// Container(color: sc.errorBg,   child: ...)  // use cs.error for text
