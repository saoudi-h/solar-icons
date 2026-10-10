// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bookmark-off` icon in the boldDuotone style.
class BookmarkOffBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bookmark-off` icon in the boldDuotone style.
  const BookmarkOffBoldDuotoneIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

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

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'bookmark-off',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.4697 1.46979C21.7626 1.1769 22.2373 1.1769 22.5302 1.46979C22.823 1.76269 22.8231 2.23748 22.5302 2.53034L2.53022 22.5303C2.23736 22.8232 1.76257 22.8231 1.46967 22.5303C1.17678 22.2374 1.17678 21.7627 1.46967 21.4698L3.11322 19.8253C3.00203 18.952 2.99994 17.7416 2.99994 16.0909V11.0977C2.99994 6.80911 3.00028 4.6644 4.3183 3.3321C5.63634 2.0001 7.75763 2.00007 11.9999 2.00007C16.2021 2.00007 18.3228 2.00045 19.6435 3.29499L21.4697 1.46979Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.5603 17.575C10.9707 17.6938 10.4612 18.1445 9.44214 19.0458L9.44213 19.0458C7.5139 20.7513 6.39205 21.7436 5.49902 21.9565L20.8877 6.56787C21 7.73817 21 9.2102 21 11.0975V16.0909C21 19.1875 21 20.7357 20.2659 21.4123C19.9158 21.7349 19.4738 21.9376 19.0031 21.9915C18.016 22.1045 16.8633 21.0849 14.5579 19.0458L14.5578 19.0458C13.5388 18.1445 13.0292 17.6938 12.4397 17.575C12.1494 17.5166 11.8506 17.5166 11.5603 17.575Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => data;

  @override
  Widget build(BuildContext context) {
    return SolarIcon(
      _data,
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
