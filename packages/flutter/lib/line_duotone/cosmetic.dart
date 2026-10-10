// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cosmetic` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExIDEwLjVDMTEgNy40NjI0MyAxMy40NjI0IDUgMTYuNSA1QzE5LjUzNzYgNSAyMiA3LjQ2MjQzIDIyIDEwLjVDMjIgMTMuNTM3NiAxOS41Mzc2IDE2IDE2LjUgMTZDMTMuNDYyNCAxNiAxMSAxMy41Mzc2IDExIDEwLjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTYuNSAyMFYxNk0xNi41IDIwSDE5LjVNMTYuNSAyMEgxMy41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTggMTFWMTdDOCAxOC42NTY5IDYuNjU2ODUgMjAgNSAyMEMzLjM0MzE1IDIwIDIgMTguNjU2OSAyIDE3VjExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIgMTFIOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTMgMTFIN1Y1LjYxNzk5QzcgNC44NzQ2MSA2LjIxNzY5IDQuMzkxMTEgNS41NTI3OSA0LjcyMzU2TDMuNTUyNzkgNS43MjM1NkMzLjIxNCA1Ljg5Mjk1IDMgNi4yMzkyMiAzIDYuNjE3OTlWMTFaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class CosmeticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `cosmetic` icon in the lineDuotone style.
  const CosmeticLineDuotoneIcon({
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
    name: 'cosmetic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11 10.5C11 7.46243 13.4624 5 16.5 5C19.5376 5 22 7.46243 22 10.5C22 13.5376 19.5376 16 16.5 16C13.4624 16 11 13.5376 11 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 11V17C8 18.6569 6.65685 20 5 20C3.34315 20 2 18.6569 2 17V11" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11H8" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16.5 20V16M16.5 20H19.5M16.5 20H13.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M3 11H7V5.61799C7 4.87461 6.21769 4.39111 5.55279 4.72356L3.55279 5.72356C3.214 5.89295 3 6.23922 3 6.61799V11Z" stroke="currentColor" stroke-linecap="round"/>''',
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
