// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05Ljc4MjcyIDMuNDk5NjVDMTEuMjAzNyAyLjgzMzQ1IDEyLjc5NjIgMi44MzM0NSAxNC4yMTcyIDMuNDk5NjVMMjAuOTA4NCA2LjYzNjY0QzIyLjM2MzkgNy4zMTg5OSAyMi4zNjM5IDkuNjgxMDUgMjAuOTA4NCAxMC4zNjM0TDE0LjIxNzMgMTMuNTAwNEMxMi43OTYzIDE0LjE2NjUgMTEuMjAzOCAxNC4xNjY1IDkuNzgyODEgMTMuNTAwNEwzLjA5MTYgMTAuMzYzNEMxLjYzNjEzIDkuNjgxMDEgMS42MzYxNCA3LjMxODk1IDMuMDkxNiA2LjYzNjU5TDkuNzgyNzIgMy40OTk2NVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMiA4LjVWMTQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTkgMTEuNVYxNi42MjU0QzE5IDE3LjYzMzQgMTguNDk2NSAxOC41NzcyIDE3LjYxNDcgMTkuMDY1NkMxNi4xNDYzIDE5Ljg3ODcgMTMuNzk2IDIxIDEyIDIxQzEwLjIwNCAyMSA3Ljg1MzcgMTkuODc4NyA2LjM4NTMzIDE5LjA2NTZDNS41MDM1IDE4LjU3NzIgNSAxNy42MzM0IDUgMTYuNjI1NFYxMS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SquareAcademicCapLinearIcon extends StatelessWidget {
  /// Creates the `square-academic-cap` icon in the linear style.
  const SquareAcademicCapLinearIcon({
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
    name: 'square-academic-cap',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9.78272 3.49965C11.2037 2.83345 12.7962 2.83345 14.2172 3.49965L20.9084 6.63664C22.3639 7.31899 22.3639 9.68105 20.9084 10.3634L14.2173 13.5004C12.7963 14.1665 11.2038 14.1665 9.78281 13.5004L3.0916 10.3634C1.63613 9.68101 1.63614 7.31895 3.0916 6.63659L9.78272 3.49965Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 8.5V14" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 11.5V16.6254C19 17.6334 18.4965 18.5772 17.6147 19.0656C16.1463 19.8787 13.796 21 12 21C10.204 21 7.8537 19.8787 6.38533 19.0656C5.5035 18.5772 5 17.6334 5 16.6254V11.5" stroke="currentColor" stroke-linecap="round"/>''',
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
