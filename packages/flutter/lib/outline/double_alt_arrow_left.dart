// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `double-alt-arrow-left` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNy40ODggNC40MzA1N0MxNy44MDI1IDQuNzAwMTQgMTcuODM4OSA1LjE3MzYxIDE3LjU2OTMgNS40ODgxMUwxMS45ODc3IDEyTDE3LjU2OTMgMTguNTExOUMxNy44Mzg5IDE4LjgyNjQgMTcuODAyNSAxOS4yOTk5IDE3LjQ4OCAxOS41Njk1QzE3LjE3MzUgMTkuODM5IDE2LjcgMTkuODAyNiAxNi40MzA1IDE5LjQ4ODFMMTAuNDMwNSAxMi40ODgxQzEwLjE4OTcgMTIuMjA3MiAxMC4xODk3IDExLjc5MjggMTAuNDMwNSAxMS41MTE5TDE2LjQzMDUgNC41MTE5MkMxNi43IDQuMTk3NDMgMTcuMTczNSA0LjE2MSAxNy40ODggNC40MzA1N1pNMTMuNDg4MSA0LjQzMDY3QzEzLjgwMjYgNC43MDAyNCAxMy44MzkgNS4xNzM3MiAxMy41Njk0IDUuNDg4MjFMNy45ODc4MSAxMi4wMDAxTDEzLjU2OTQgMTguNTEyQzEzLjgzOSAxOC44MjY1IDEzLjgwMjYgMTkuMyAxMy40ODgxIDE5LjU2OTZDMTMuMTczNiAxOS44MzkxIDEyLjcwMDEgMTkuODAyNyAxMi40MzA2IDE5LjQ4ODJMNi40MzA1NiAxMi40ODgyQzYuMTg5ODEgMTIuMjA3MyA2LjE4OTgxIDExLjc5MjkgNi40MzA1NiAxMS41MTJMMTIuNDMwNiA0LjUxMjAyQzEyLjcwMDEgNC4xOTc1MyAxMy4xNzM2IDQuMTYxMTEgMTMuNDg4MSA0LjQzMDY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class DoubleAltArrowLeftOutlineIcon extends StatelessWidget {
  /// Creates the `double-alt-arrow-left` icon in the outline style.
  const DoubleAltArrowLeftOutlineIcon({
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
    name: 'double-alt-arrow-left',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.488 4.43057C17.8025 4.70014 17.8389 5.17361 17.5693 5.48811L11.9877 12L17.5693 18.5119C17.8389 18.8264 17.8025 19.2999 17.488 19.5695C17.1735 19.839 16.7 19.8026 16.4305 19.4881L10.4305 12.4881C10.1897 12.2072 10.1897 11.7928 10.4305 11.5119L16.4305 4.51192C16.7 4.19743 17.1735 4.161 17.488 4.43057ZM13.4881 4.43067C13.8026 4.70024 13.839 5.17372 13.5694 5.48821L7.98781 12.0001L13.5694 18.512C13.839 18.8265 13.8026 19.3 13.4881 19.5696C13.1736 19.8391 12.7001 19.8027 12.4306 19.4882L6.43056 12.4882C6.18981 12.2073 6.18981 11.7929 6.43056 11.512L12.4306 4.51202C12.7001 4.19753 13.1736 4.16111 13.4881 4.43067Z" fill="currentColor"/>''',
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
