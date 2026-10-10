// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `planet-3` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjEuMTcxMyA4LjAwNzM5SDIxQzIxIDguMDA3MzkgMTkuMDgyOSA3Ljg2OTk4IDE2LjUgOC43NTU0NEMxNS4xMjU3IDkuMjI2NTkgMTMuNSAxMC45OTk3IDEwLjQzNzIgMTAuOTk5N0M1LjkzNzE3IDEwLjk5OTcgMyA4LjAwNzM5IDMgOC4wMDczOUwyLjg3NzQ0IDcuODk3NDYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0yMS42MDU1IDE0Ljc5MDdMMjEuMjcwMSAxNUMxOS44OTAzIDE1Ljg3MSAxNy41MjEgMTcgMTQuNTA5MiAxN0MxMS4xNzIgMTcgOS40MDA2MyAxNS4yMjY5IDcuOTAzMTUgMTQuNzU1OEM1LjA4ODggMTMuODcwMyAyLjk5OTkyIDE0LjAwNzcgMi45OTk5MiAxNC4wMDc3TDIuMjA2OTEgMTQuMDMzNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxMkMyMiAxNy41MjI4IDE3LjUyMjggMjIgMTIgMjJDNi40NzcxNSAyMiAyIDE3LjUyMjggMiAxMkMyIDYuNDc3MTUgNi40NzcxNSAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Planet3LineDuotoneIcon extends StatelessWidget {
  /// Creates the `planet-3` icon in the lineDuotone style.
  const Planet3LineDuotoneIcon({
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
    name: 'planet-3',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21.1713 8.00739H21C21 8.00739 19.0829 7.86998 16.5 8.75544C15.1257 9.22659 13.5 10.9997 10.4372 10.9997C5.93717 10.9997 3 8.00739 3 8.00739L2.87744 7.89746" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M21.6055 14.7907L21.2701 15C19.8903 15.871 17.521 17 14.5092 17C11.172 17 9.40063 15.2269 7.90315 14.7558C5.0888 13.8703 2.99992 14.0077 2.99992 14.0077L2.20691 14.0336" stroke="currentColor" stroke-linecap="round"/>''',
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
