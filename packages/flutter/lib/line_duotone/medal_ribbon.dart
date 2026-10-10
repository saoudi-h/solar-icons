// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `medal-ribbon` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTIiIGN5PSI5IiByPSI3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNy4zNTExMSAxNUw2LjcxNDI0IDE3LjMyM0M2LjA4NTkgMTkuNjE0OCA1Ljc3MTczIDIwLjc2MDcgNi4xOTA5NyAyMS4zODgxQzYuMzM3OSAyMS42MDc5IDYuNTM1IDIxLjc4NDQgNi43NjM3MiAyMS45MDA4QzcuNDE2MzUgMjIuMjMzMSA4LjQyNDAxIDIxLjcwODEgMTAuNDM5MyAyMC42NThDMTEuMTA5OSAyMC4zMDg2IDExLjQ0NTIgMjAuMTMzOSAxMS44MDE0IDIwLjA5NTlDMTEuOTMzNSAyMC4wODE4IDEyLjA2NjUgMjAuMDgxOCAxMi4xOTg2IDIwLjA5NTlDMTIuNTU0OCAyMC4xMzM5IDEyLjg5MDEgMjAuMzA4NiAxMy41NjA3IDIwLjY1OEMxNS41NzYgMjEuNzA4MSAxNi41ODM3IDIyLjIzMzEgMTcuMjM2MyAyMS45MDA4QzE3LjQ2NSAyMS43ODQ0IDE3LjY2MjEgMjEuNjA3OSAxNy44MDkgMjEuMzg4MUMxOC4yMjgzIDIwLjc2MDcgMTcuOTE0MSAxOS42MTQ4IDE3LjI4NTggMTcuMzIzTDE2LjY0ODkgMTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class MedalRibbonLineDuotoneIcon extends StatelessWidget {
  /// Creates the `medal-ribbon` icon in the lineDuotone style.
  const MedalRibbonLineDuotoneIcon({
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
    name: 'medal-ribbon',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="9" r="7" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M7.35111 15L6.71424 17.323C6.0859 19.6148 5.77173 20.7607 6.19097 21.3881C6.3379 21.6079 6.535 21.7844 6.76372 21.9008C7.41635 22.2331 8.42401 21.7081 10.4393 20.658C11.1099 20.3086 11.4452 20.1339 11.8014 20.0959C11.9335 20.0818 12.0665 20.0818 12.1986 20.0959C12.5548 20.1339 12.8901 20.3086 13.5607 20.658C15.576 21.7081 16.5837 22.2331 17.2363 21.9008C17.465 21.7844 17.6621 21.6079 17.809 21.3881C18.2283 20.7607 17.9141 19.6148 17.2858 17.323L16.6489 15" stroke="currentColor" stroke-linecap="round"/>''',
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
