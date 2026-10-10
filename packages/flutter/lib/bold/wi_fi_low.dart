// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-low` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjAxODMgMTguNzE0MkMxMi40MzIzIDE4LjcxNDUgMTIuNzY4MyAxOS4wNTAyIDEyLjc2ODMgMTkuNDY0MkMxMi43NjgzIDE5Ljg3ODMgMTIuNDMyMyAyMC4yMTQgMTIuMDE4MyAyMC4yMTQyQzExLjYwNDEgMjAuMjE0MiAxMS4yNjgzIDE5Ljg3ODUgMTEuMjY4MyAxOS40NjQyQzExLjI2ODMgMTkuMDUgMTEuNjA0MSAxOC43MTQyIDEyLjAxODMgMTguNzE0MloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTguMTE3ODggMTUuMzgzMkMxMC4yNTU3IDEzLjA3NjEgMTMuNzQ2OCAxMy4wNzYgMTUuODg0NSAxNS4zODMyQzE2LjE2NTcgMTUuNjg2OSAxNi4xNDc3IDE2LjE2MTIgMTUuODQ0NCAxNi40NDI4QzE1LjU0MDcgMTYuNzI0MiAxNS4wNjU0IDE2LjcwNjQgMTQuNzgzOSAxNi40MDI3QzEzLjIzOTggMTQuNzM2MiAxMC43NjE2IDE0LjczNjIgOS4yMTc0OSAxNi40MDI3QzguOTM2MDIgMTYuNzA2MyA4LjQ2MTcyIDE2LjcyNCA4LjE1NzkyIDE2LjQ0MjhDNy44NTQzIDE2LjE2MTIgNy44MzY0NSAxNS42ODcgOC4xMTc4OCAxNS4zODMyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class WiFiLowBoldIcon extends StatelessWidget {
  /// Creates the `wi-fi-low` icon in the bold style.
  const WiFiLowBoldIcon({
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
    name: 'wi-fi-low',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.0183 18.7142C12.4323 18.7145 12.7683 19.0502 12.7683 19.4642C12.7683 19.8783 12.4323 20.214 12.0183 20.2142C11.6041 20.2142 11.2683 19.8785 11.2683 19.4642C11.2683 19.05 11.6041 18.7142 12.0183 18.7142Z" fill="currentColor"/>
<path d="M8.11788 15.3832C10.2557 13.0761 13.7468 13.076 15.8845 15.3832C16.1657 15.6869 16.1477 16.1612 15.8444 16.4428C15.5407 16.7242 15.0654 16.7064 14.7839 16.4027C13.2398 14.7362 10.7616 14.7362 9.21749 16.4027C8.93602 16.7063 8.46172 16.724 8.15792 16.4428C7.8543 16.1612 7.83645 15.687 8.11788 15.3832Z" fill="currentColor"/>''',
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
