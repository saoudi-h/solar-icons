// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bookmark-off` icon in every style.
///
/// Prefer the static widgets (e.g. `BookmarkOffLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class BookmarkOffIcon extends StatelessWidget {
  /// Creates the `bookmark-off` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const BookmarkOffIcon({
    super.key,
    this.style,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw. Falls back to [SolarProvider] (unless [isolated]), then [SolarIconStyle.linear].
  final SolarIconStyle? style;

  /// Width and height.
  final double? size;

  /// Primary color.
  final Color? color;

  /// Stroke width for stroked styles.
  final double? strokeWidth;

  /// Accent color for duotone styles.
  final Color? secondaryColor;

  /// Accent opacity for duotone styles, from 0 to 1.
  final double? secondaryOpacity;

  /// Accessibility label.
  final String? semanticLabel;

  /// When true, ignores [SolarProvider] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'bookmark-off',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21.4696 1.46964C21.7625 1.17677 22.2373 1.17681 22.5302 1.46964C22.823 1.76254 22.8231 2.23731 22.5302 2.53019L2.53019 22.5302C2.23731 22.8231 1.76254 22.823 1.46964 22.5302C1.17681 22.2373 1.17677 21.7625 1.46964 21.4696L3.1132 19.8251C3.00201 18.9519 2.99991 17.7413 2.99991 16.0907V11.0976C2.99991 6.809 3.00026 4.66424 4.31827 3.33195C5.63631 1.99996 7.75764 1.99991 11.9999 1.99991C16.202 1.99991 18.3227 2.00041 19.6435 3.29484L21.4696 1.46964ZM20.8876 6.56827C20.9999 7.73848 20.9999 9.21056 20.9999 11.0976V16.0907C20.9999 19.1873 20.9996 20.7355 20.2655 21.412C19.9154 21.7346 19.4736 21.9373 19.0028 21.9911C18.0158 22.104 16.8628 21.0848 14.5575 19.0458C13.5386 18.1445 13.0289 17.6939 12.4394 17.5751C12.1492 17.5167 11.8506 17.5167 11.5605 17.5751C10.971 17.6939 10.4613 18.1445 9.4423 19.0458C7.51415 20.7512 6.39195 21.743 5.49894 21.956L20.8876 6.56827Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'bookmark-off',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.4697 1.46979C21.7626 1.1769 22.2373 1.1769 22.5302 1.46979C22.823 1.76269 22.8231 2.23748 22.5302 2.53034L2.53022 22.5303C2.23736 22.8232 1.76257 22.8231 1.46967 22.5303C1.17678 22.2374 1.17678 21.7627 1.46967 21.4698L3.11322 19.8253C3.00203 18.952 2.99994 17.7416 2.99994 16.0909V11.0977C2.99994 6.80911 3.00028 4.6644 4.3183 3.3321C5.63634 2.0001 7.75763 2.00007 11.9999 2.00007C16.2021 2.00007 18.3228 2.00045 19.6435 3.29499L21.4697 1.46979Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.5603 17.575C10.9707 17.6938 10.4612 18.1445 9.44214 19.0458L9.44213 19.0458C7.5139 20.7513 6.39205 21.7436 5.49902 21.9565L20.8877 6.56787C21 7.73817 21 9.2102 21 11.0975V16.0909C21 19.1875 21 20.7357 20.2659 21.4123C19.9158 21.7349 19.4738 21.9376 19.0031 21.9915C18.016 22.1045 16.8633 21.0849 14.5579 19.0458L14.5578 19.0458C13.5388 18.1445 13.0292 17.6938 12.4397 17.575C12.1494 17.5166 11.8506 17.5166 11.5603 17.575Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'bookmark-off',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 2L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.29916 20.7009C3 19.8314 3 18.3867 3 16.0909V11.0975" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.1212 3.87889C19.9941 3.68194 19.8486 3.50064 19.682 3.3323C18.364 2 16.2427 2 12.0001 2C7.75743 2 5.63611 2 4.31809 3.3323C3.50786 4.15131 3.1957 5.27717 3.07544 7.01938" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.49902 21.9565C6.39205 21.7436 7.51391 20.7513 9.44214 19.0458C10.4612 18.1445 10.9707 17.6938 11.5603 17.575C11.8506 17.5166 12.1494 17.5166 12.4397 17.575C13.0292 17.6938 13.5388 18.1445 14.5578 19.0458C16.8632 21.0849 18.016 22.1045 19.0031 21.9915C19.4738 21.9376 19.9158 21.7349 20.2659 21.4123C21 20.7357 21 19.1875 21 16.0909V11.0975C21 9.21019 21 7.73817 20.8877 6.56787" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'bookmark-off',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 2L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.29916 20.7008C3 19.8314 3 18.3867 3 16.0909V11.0975C3 6.80891 3 4.6646 4.31802 3.3323C5.63604 2 7.75736 2 12 2C16.2426 2 18.364 2 19.682 3.3323C19.8485 3.50064 19.994 3.68194 20.1211 3.87889" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.49902 21.9565C6.39205 21.7436 7.51391 20.7513 9.44214 19.0458C10.4612 18.1445 10.9707 17.6938 11.5603 17.575C11.8506 17.5166 12.1494 17.5166 12.4397 17.575C13.0292 17.6938 13.5388 18.1445 14.5578 19.0458C16.8632 21.0849 18.016 22.1045 19.0031 21.9915C19.4738 21.9376 19.9158 21.7349 20.2659 21.4123C21 20.7357 21 19.1875 21 16.0909V11.0975C21 9.21019 21 7.73817 20.8877 6.56787" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'bookmark-off',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 2L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.29916 20.7008C3 19.8314 3 18.3867 3 16.0909V11.0975C3 6.80891 3 4.6646 4.31802 3.3323C5.63604 2 7.75736 2 12 2C16.2426 2 18.364 2 19.682 3.3323C19.8485 3.50064 19.994 3.68194 20.1211 3.87889" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.49902 21.9565C6.39205 21.7436 7.51391 20.7513 9.44214 19.0458C10.4612 18.1445 10.9707 17.6938 11.5603 17.575C11.8506 17.5166 12.1494 17.5166 12.4397 17.575C13.0292 17.6938 13.5388 18.1445 14.5578 19.0458C16.8632 21.0849 18.016 22.1045 19.0031 21.9915C19.4738 21.9376 19.9158 21.7349 20.2659 21.4123C21 20.7357 21 19.1875 21 16.0909V11.0975C21 9.21019 21 7.73817 20.8877 6.56787" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'bookmark-off',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21.4697 1.46973C21.7626 1.17686 22.2373 1.17684 22.5302 1.46973C22.8231 1.76261 22.8231 2.23739 22.5302 2.53027L2.53022 22.5303C2.23733 22.8232 1.76257 22.8231 1.46967 22.5303C1.17678 22.2374 1.17678 21.7626 1.46967 21.4697L2.46088 20.4775C2.36465 20.0354 2.31576 19.529 2.28803 18.9678C2.24951 18.1883 2.24994 17.2318 2.24994 16.0908V11.0977C2.24994 8.97458 2.24804 7.30739 2.42084 6.00781C2.59646 4.68742 2.96496 3.63372 3.7851 2.80469C4.60623 1.9748 5.65114 1.60187 6.96088 1.42383C8.24852 1.24884 9.90008 1.25 11.9999 1.25C14.0998 1.25 15.7514 1.24883 17.039 1.42383C18.3273 1.59896 19.3589 1.96303 20.1738 2.76465L21.4697 1.46973ZM11.9999 2.75C9.85723 2.75 8.3262 2.75208 7.16303 2.91016C6.02273 3.06516 5.3482 3.35751 4.85151 3.85938C4.35365 4.36263 4.06204 5.04815 3.90815 6.20508C3.7515 7.38282 3.74994 8.93237 3.74994 11.0977V16.0908C3.74994 17.2455 3.74981 18.1594 3.78608 18.8936C3.79024 18.9778 3.79661 19.0588 3.8017 19.1367L19.1122 3.82617C18.6189 3.34536 17.9507 3.06157 16.8369 2.91016C15.6737 2.75208 14.1427 2.75 11.9999 2.75Z" fill="currentColor"/>
<path d="M20.8163 5.82227C21.2285 5.78291 21.5942 6.08488 21.6337 6.49707C21.7502 7.71117 21.7499 9.22503 21.7499 11.0977V16.0918C21.7499 17.6216 21.7513 18.8313 21.6542 19.7393C21.5593 20.627 21.3553 21.4282 20.7744 21.9639C20.308 22.3936 19.7173 22.6653 19.0878 22.7373C18.3006 22.8272 17.5648 22.4513 16.8408 21.9385C16.1 21.4137 15.1993 20.6156 14.0605 19.6084C13.5406 19.1486 13.1882 18.8378 12.8945 18.623C12.611 18.4158 12.4379 18.34 12.2919 18.3105C12.0994 18.2718 11.9005 18.2718 11.708 18.3105C11.5619 18.34 11.3881 18.4156 11.1044 18.623C10.8108 18.8378 10.4591 19.1488 9.9394 19.6084C8.98298 20.4543 8.19784 21.1483 7.53998 21.6553C6.89472 22.1525 6.28412 22.5407 5.67279 22.6865C5.2701 22.7824 4.86574 22.5334 4.76947 22.1309C4.67949 21.7533 4.89225 21.3743 5.25092 21.249L5.43647 21.1953C5.70957 21.1027 6.08186 20.8853 6.62494 20.4668C7.23315 19.9981 7.97389 19.3435 8.94526 18.4844C9.44411 18.0431 9.8566 17.6776 10.2197 17.4121C10.5926 17.1394 10.9687 16.9292 11.4121 16.8398C11.8001 16.7617 12.1998 16.7617 12.5878 16.8398C13.0312 16.9292 13.4073 17.1394 13.7802 17.4121C14.1433 17.6776 14.5558 18.0432 15.0546 18.4844C16.2207 19.5157 17.0494 20.2474 17.708 20.7139C18.383 21.192 18.7183 21.2699 18.9179 21.2471C19.2298 21.2114 19.524 21.0767 19.7578 20.8613C19.9104 20.7206 20.0734 20.4088 20.1621 19.5801C20.2485 18.771 20.2499 17.6576 20.2499 16.0918V11.0977C20.2499 9.19669 20.2486 7.76579 20.1406 6.63965C20.1012 6.2275 20.4042 5.86183 20.8163 5.82227Z" fill="currentColor"/>''',
  );

  @override
  Widget build(BuildContext context) {
    final SolarIconStyle fallback = isolated
        ? SolarIconStyle.linear
        : SolarProvider.maybeOf(context)?.style ?? SolarIconStyle.linear;
    final SolarIconData data = switch (style ?? fallback) {
      SolarIconStyle.bold => bold,
      SolarIconStyle.boldDuotone => boldDuotone,
      SolarIconStyle.broken => broken,
      SolarIconStyle.linear => linear,
      SolarIconStyle.lineDuotone => lineDuotone,
      SolarIconStyle.outline => outline,
    };
    return SolarIcon(
      data,
      size: size,
      color: color,
      strokeWidth: strokeWidth,
      secondaryColor: secondaryColor,
      secondaryOpacity: secondaryOpacity,
      semanticLabel: semanticLabel,
      isolated: isolated,
    );
  }
}
