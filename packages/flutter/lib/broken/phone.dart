// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zLjAwMjkzIDYuOTY1ODJDMy4wOTMwOCA4LjY0NTM0IDMuODEwNzYgMTIuMjU4OSA3LjgxNTQgMTYuNDc1MUM4LjkyODU2IDE3LjY0NyAxMC4wMjM3IDE4LjUyNCAxMS4wNjMyIDE5LjE3NzIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTQuOTU5MiAyMC43OTI1QzE2LjEyMjYgMjEuMDM2MSAxNy4wNjUxIDIxLjAyMzQgMTcuNjc2MyAyMC45NjMxQzE4LjE5MTcgMjAuOTEyMiAxOC42Mzk5IDIwLjYzNDMgMTkuMDAxMSAyMC4yNTRMMjAuNDIxNyAxOC43NTg0QzIxLjM4MDYgMTcuNzQ4OSAyMS4xMTAyIDE2LjAxODIgMTkuODgzMyAxNS4zMTJMMTcuOTcyOCAxNC4yMTIzQzE3LjE2NzMgMTMuNzQ4NiAxNi4xODU4IDEzLjg4NDggMTUuNTU2MiAxNC41NDc3TDE1LjEwMDcgMTUuMDI3MkMxNS4xMDA3IDE1LjAyNzIgMTQuMDE4MiAxNi4xNjcgMTEuMDYzMSAxMy4wNTU5QzguMTA4MTQgOS45NDQ4NCA5LjE5MDczIDguODA1MDcgOS4xOTA3MyA4LjgwNTA3TDkuNDc3NTQgOC41MDMxMUMxMC4xODQxIDcuNzU5MjQgMTAuMjUwNyA2LjU2NDk3IDkuNjM0MjcgNS42OTMxTDguMzczMjggMy45MDk2MkM3LjYxMDMxIDIuODMwNSA2LjEzNTk4IDIuNjg3OTUgNS4yNjE0NyAzLjYwODY0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PhoneBrokenIcon extends StatelessWidget {
  /// Creates the `phone` icon in the broken style.
  const PhoneBrokenIcon({
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
    name: 'phone',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3.00293 6.96582C3.09308 8.64534 3.81076 12.2589 7.8154 16.4751C8.92856 17.647 10.0237 18.524 11.0632 19.1772" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.9592 20.7925C16.1226 21.0361 17.0651 21.0234 17.6763 20.9631C18.1917 20.9122 18.6399 20.6343 19.0011 20.254L20.4217 18.7584C21.3806 17.7489 21.1102 16.0182 19.8833 15.312L17.9728 14.2123C17.1673 13.7486 16.1858 13.8848 15.5562 14.5477L15.1007 15.0272C15.1007 15.0272 14.0182 16.167 11.0631 13.0559C8.10814 9.94484 9.19073 8.80507 9.19073 8.80507L9.47754 8.50311C10.1841 7.75924 10.2507 6.56497 9.63427 5.6931L8.37328 3.90962C7.61031 2.8305 6.13598 2.68795 5.26147 3.60864" stroke="currentColor" stroke-linecap="round"/>''',
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
