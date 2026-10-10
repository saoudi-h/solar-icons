// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-right-up` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNy40Njk3IDE1LjUzMDNDMTcuNjg0MiAxNS43NDQ4IDE4LjAwNjggMTUuODA5IDE4LjI4NyAxNS42OTI5QzE4LjU2NzMgMTUuNTc2OCAxOC43NSAxNS4zMDMzIDE4Ljc1IDE1VjZDMTguNzUgNS41ODU3OSAxOC40MTQyIDUuMjUgMTggNS4yNUw5LjAwMDAyIDUuMjVDOC42OTY2OCA1LjI1IDguNDIzMiA1LjQzMjczIDguMzA3MTEgNS43MTI5OUM4LjE5MTAzIDUuOTkzMjQgOC4yNTUxOSA2LjMxNTgzIDguNDY5NjkgNi41MzAzM0wxNy40Njk3IDE1LjUzMDNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTUuNDY5NjcgMTcuNDY5N0M1LjE3Njc4IDE3Ljc2MjYgNS4xNzY3OCAxOC4yMzc0IDUuNDY5NjcgMTguNTMwM0M1Ljc2MjU2IDE4LjgyMzIgNi4yMzc0NCAxOC44MjMyIDYuNTMwMzMgMTguNTMwM0wxMy41IDExLjU2MDdMMTIuNDM5MyAxMC41TDUuNDY5NjcgMTcuNDY5N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowRightUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-right-up` icon in the boldDuotone style.
  const ArrowRightUpBoldDuotoneIcon({
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
    name: 'arrow-right-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.4697 15.5303C17.6842 15.7448 18.0068 15.809 18.287 15.6929C18.5673 15.5768 18.75 15.3033 18.75 15V6C18.75 5.58579 18.4142 5.25 18 5.25L9.00002 5.25C8.69668 5.25 8.4232 5.43273 8.30711 5.71299C8.19103 5.99324 8.25519 6.31583 8.46969 6.53033L17.4697 15.5303Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.46967 17.4697C5.17678 17.7626 5.17678 18.2374 5.46967 18.5303C5.76256 18.8232 6.23744 18.8232 6.53033 18.5303L13.5 11.5607L12.4393 10.5L5.46967 17.4697Z" fill="currentColor"/>''',
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
