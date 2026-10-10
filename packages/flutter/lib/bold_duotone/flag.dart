// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `flag` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTYuNSAxLjc1QzYuNSAxLjMzNTc5IDYuMTY0MjEgMSA1Ljc1IDFDNS4zMzU3OSAxIDUgMS4zMzU3OSA1IDEuNzVWMjEuNzVDNSAyMi4xNjQyIDUuMzM1NzkgMjIuNSA1Ljc1IDIyLjVDNi4xNjQyMSAyMi41IDYuNSAyMi4xNjQyIDYuNSAyMS43NVYxMy42VjMuNlYxLjc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTMuMzQ4NiAzLjc4OTQ3TDEzLjE0NDkgMy43MDgwMUMxMS41ODIxIDMuMDgyODggOS44NzEyIDIuOTI1OCA4LjIyMDY3IDMuMjU1OTFMNi41IDMuNjAwMDRWMTMuNkw4LjIyMDY3IDEzLjI1NTlDOS44NzEyIDEyLjkyNTggMTEuNTgyMSAxMy4wODI5IDEzLjE0NDkgMTMuNzA4QzE0LjgzODUgMTQuMzg1NCAxNi43MDI0IDE0LjUxMTkgMTguNDcyIDE0LjA2OTVMMTguNjg2NCAxNC4wMTU5QzE5LjMxMTUgMTMuODU5NyAxOS43NSAxMy4yOTggMTkuNzUgMTIuNjUzOFY1LjI4NjczQzE5Ljc1IDQuNTA2MTcgMTkuMDE2NSAzLjkzMzQzIDE4LjI1OTIgNC4xMjI3NEMxNi42MjggNC41MzA1NSAxNC45MDk3IDQuNDEzOTMgMTMuMzQ4NiAzLjc4OTQ3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class FlagBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `flag` icon in the boldDuotone style.
  const FlagBoldDuotoneIcon({
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
    name: 'flag',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.3486 3.78947L13.1449 3.70801C11.5821 3.08288 9.8712 2.9258 8.22067 3.25591L6.5 3.60004V13.6L8.22067 13.2559C9.8712 12.9258 11.5821 13.0829 13.1449 13.708C14.8385 14.3854 16.7024 14.5119 18.472 14.0695L18.6864 14.0159C19.3115 13.8597 19.75 13.298 19.75 12.6538V5.28673C19.75 4.50617 19.0165 3.93343 18.2592 4.12274C16.628 4.53055 14.9097 4.41393 13.3486 3.78947Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M6.5 1.75C6.5 1.33579 6.16421 1 5.75 1C5.33579 1 5 1.33579 5 1.75V21.75C5 22.1642 5.33579 22.5 5.75 22.5C6.16421 22.5 6.5 22.1642 6.5 21.75V13.6V3.6V1.75Z" fill="currentColor"/>''',
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
