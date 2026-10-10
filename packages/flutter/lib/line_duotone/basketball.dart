// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `basketball` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuMzM5NDYgMTYuOTk5N0M2LjEwMDg5IDIxLjc4MjYgMTIuMjE2OCAyMy40MjE0IDE2Ljk5OTcgMjAuNjZDMTguOTQ5MyAxOS41MzQ0IDIwLjM3NjUgMTcuODUxNCAyMS4xOTYyIDE1LjkyODZDMjIuMzg3NSAxMy4xMzQxIDIyLjI5NTggOS44MzMwNCAyMC42NiA2Ljk5OTcyQzE5LjAyNDIgNC4xNjY0IDE2LjIxMTIgMi40MzY0MiAxMy4xOTU1IDIuMDcwODhDMTEuMTIwNCAxLjgxOTM1IDguOTQ5MzIgMi4yMTM4NiA2Ljk5OTcyIDMuMzM5NDZDMi4yMTY3OSA2LjEwMDg5IDAuNTc4MDM5IDEyLjIxNjggMy4zMzk0NiAxNi45OTk3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE2Ljk0OTcgMjAuNTczMkMxNi45NDk3IDIwLjU3MzIgMTYuMDEwNyAxMy45ODIxIDE0LjAwMDQgMTAuNTAwMUMxMS45OSA3LjAxODAzIDcuMDUwMTggMy40MjY4MSA3LjA1MDE4IDMuNDI2ODFNNy41NzcxMSAyMC44MTc1QzkuMDU4NzQgMTYuMzQ3NyAxNi40NTI1IDExLjM5MzEgMjEuODYzNSAxMi41ODAxTTE2LjQxMzkgMy4yMDg5OEMxNC45MjYgNy42MzAwNCA3LjY3NDI0IDEyLjUxMjMgMi4yODg1NyAxMS40NTE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class BasketballLineDuotoneIcon extends StatelessWidget {
  /// Creates the `basketball` icon in the lineDuotone style.
  const BasketballLineDuotoneIcon({
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
    name: 'basketball',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3.33946 16.9997C6.10089 21.7826 12.2168 23.4214 16.9997 20.66C18.9493 19.5344 20.3765 17.8514 21.1962 15.9286C22.3875 13.1341 22.2958 9.83304 20.66 6.99972C19.0242 4.1664 16.2112 2.43642 13.1955 2.07088C11.1204 1.81935 8.94932 2.21386 6.99972 3.33946C2.21679 6.10089 0.578039 12.2168 3.33946 16.9997Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16.9497 20.5732C16.9497 20.5732 16.0107 13.9821 14.0004 10.5001C11.99 7.01803 7.05018 3.42681 7.05018 3.42681M7.57711 20.8175C9.05874 16.3477 16.4525 11.3931 21.8635 12.5801M16.4139 3.20898C14.926 7.63004 7.67424 12.5123 2.28857 11.4516" stroke="currentColor" stroke-linecap="round"/>''',
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
