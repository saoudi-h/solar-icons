// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tennis` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuMzM5OTUgMTYuOTk5N0M2LjEwMTM3IDIxLjc4MjYgMTIuMjE3MyAyMy40MjE0IDE3LjAwMDIgMjAuNjZDMTguOTQ5OCAxOS41MzQ0IDIwLjM3NyAxNy44NTE0IDIxLjE5NjcgMTUuOTI4NkMyMi4zODggMTMuMTM0MSAyMi4yOTYzIDkuODMzMDQgMjAuNjYwNSA2Ljk5OTcyQzE5LjAyNDYgNC4xNjY0IDE2LjIxMTcgMi40MzY0MiAxMy4xOTYgMi4wNzA4OEMxMS4xMjA5IDEuODE5MzUgOC45NDk4MSAyLjIxMzg2IDcuMDAwMjEgMy4zMzk0NkMyLjIxNzI4IDYuMTAwODkgMC41Nzg1MjcgMTIuMjE2OCAzLjMzOTk1IDE2Ljk5OTdaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTMuMTk1OCAyLjA3MTI5QzEzLjE5NTggMi4wNzEyOSAxMi45NjQxIDUuNjcgMTUuNDY0MSAxMC4wMDAxQzE3Ljk2NDEgMTQuMzMwMyAyMS4xOTY1IDE1LjkyOSAyMS4xOTY1IDE1LjkyOU0yLjgwMzQ3IDguMDcxMjlDMi44MDM0NyA4LjA3MTI5IDYuMDM1ODggOS42NyA4LjUzNTg4IDE0LjAwMDFDMTEuMDM1OSAxOC4zMzAzIDEwLjgwNDIgMjEuOTI5IDEwLjgwNDIgMjEuOTI5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class TennisLineDuotoneIcon extends StatelessWidget {
  /// Creates the `tennis` icon in the lineDuotone style.
  const TennisLineDuotoneIcon({
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
    name: 'tennis',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3.33995 16.9997C6.10137 21.7826 12.2173 23.4214 17.0002 20.66C18.9498 19.5344 20.377 17.8514 21.1967 15.9286C22.388 13.1341 22.2963 9.83304 20.6605 6.99972C19.0246 4.1664 16.2117 2.43642 13.196 2.07088C11.1209 1.81935 8.94981 2.21386 7.00021 3.33946C2.21728 6.10089 0.578527 12.2168 3.33995 16.9997Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13.1958 2.07129C13.1958 2.07129 12.9641 5.67 15.4641 10.0001C17.9641 14.3303 21.1965 15.929 21.1965 15.929M2.80347 8.07129C2.80347 8.07129 6.03588 9.67 8.53588 14.0001C11.0359 18.3303 10.8042 21.929 10.8042 21.929" stroke="currentColor" stroke-linecap="round"/>''',
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
