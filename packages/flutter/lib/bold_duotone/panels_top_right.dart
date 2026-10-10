// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panels-top-right` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjEuOTczNiA5LjVWOC43NUMyMS44OTkzIDYuMTEwNjQgMjEuNjE1NCA0LjU0NTEgMjAuNTM1MSAzLjQ2NDg0QzE5LjA3MDcgMi4wMDA0MSAxNi43MTQgMiAxMiAyQzcuMjg1OTcgMiA0LjkyOTI4IDIuMDAwMzggMy40NjQ4MiAzLjQ2NDg0QzIuMzg0NTkgNC41NDUxIDIuMTAwNyA2LjExMDY2IDIuMDI2MzUgOC43NUwxLjk5OTk4IDkuNUgxNVYyMkwxNS43NSAyMS45NTYxQzE4LjA5MDMgMjEuODU4OSAxOS41MjQ5IDIxLjU0NTQgMjAuNTM1MSAyMC41MzUyQzIxLjk5OTYgMTkuMDcwNyAyMiAxNi43MTQgMjIgMTJDMjIgMTEuMzc2NiAyMi4wMDA0IDEwLjc5NDQgMjEuOTk3IDEwLjI1TDIxLjk3MzYgOS41WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xNSA5LjVWMjJMMTUuNzUgMjEuOTU2MUMxOC4wOTAzIDIxLjg1ODkgMTkuNTI0OSAyMS41NDU0IDIwLjUzNTEgMjAuNTM1MkMyMS45OTk2IDE5LjA3MDcgMjIgMTYuNzE0IDIyIDEyQzIyIDExLjM3NjYgMjIuMDAwNCAxMC43OTQ0IDIxLjk5NyAxMC4yNUwyMS45NzM2IDkuNUgxNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIuMDAyOTMgMTAuMjVDMS45OTk1NCAxMC43OTQ0IDIgMTEuMzc2NiAyIDEyQzIgMTYuNzE0IDIuMDAwMzggMTkuMDcwNyAzLjQ2NDg0IDIwLjUzNTJDNC45MjkzMSAyMS45OTk2IDcuMjg1OTYgMjIgMTIgMjJDMTIuODE4NSAyMiAxNC4zMTU5IDIxLjk5OTkgMTUgMjEuOTkyMlY5LjVIMkwyLjAwMjkzIDEwLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class PanelsTopRightBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `panels-top-right` icon in the boldDuotone style.
  const PanelsTopRightBoldDuotoneIcon({
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
    name: 'panels-top-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M2.00293 10.25C1.99954 10.7944 2 11.3766 2 12C2 16.714 2.00038 19.0707 3.46484 20.5352C4.92931 21.9996 7.28596 22 12 22C12.8185 22 14.3159 21.9999 15 21.9922V9.5H2L2.00293 10.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M21.9736 9.5V8.75C21.8993 6.11064 21.6154 4.5451 20.5351 3.46484C19.0707 2.00041 16.714 2 12 2C7.28597 2 4.92928 2.00038 3.46482 3.46484C2.38459 4.5451 2.1007 6.11066 2.02635 8.75L1.99998 9.5H15V22L15.75 21.9561C18.0903 21.8589 19.5249 21.5454 20.5351 20.5352C21.9996 19.0707 22 16.714 22 12C22 11.3766 22.0004 10.7944 21.997 10.25L21.9736 9.5Z" fill="currentColor"/>

<path opacity="0.5" d="M15 9.5V22L15.75 21.9561C18.0903 21.8589 19.5249 21.5454 20.5351 20.5352C21.9996 19.0707 22 16.714 22 12C22 11.3766 22.0004 10.7944 21.997 10.25L21.9736 9.5H15Z" fill="currentColor"/>''',
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
