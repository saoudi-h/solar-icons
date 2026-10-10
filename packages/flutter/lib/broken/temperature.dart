// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `temperature` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE1IDZWNUMxNSAzLjM0MzE1IDEzLjY1NjkgMiAxMiAyQzEwLjM0MzEgMiA5IDMuMzQzMTUgOSA1VjExLjM0NzdDOSAxMS42ODU3IDguODI1MDUgMTEuOTk1NyA4LjU2MTQxIDEyLjIwNzJDNy4zMDQ2NSAxMy4yMTUyIDYuNSAxNC43NjM2IDYuNSAxNi41QzYuNSAxOS41Mzc2IDguOTYyNDMgMjIgMTIgMjJDMTUuMDM3NiAyMiAxNy41IDE5LjUzNzYgMTcuNSAxNi41QzE3LjUgMTQuNzYzNiAxNi42OTU0IDEzLjIxNTIgMTUuNDM4NiAxMi4yMDcyQzE1LjE3NDkgMTEuOTk1NyAxNSAxMS42ODU3IDE1IDExLjM0NzdWMTAiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTQuNDk5OCAxNi41QzE0LjQ5OTggMTcuODgwNyAxMy4zODA1IDE5IDExLjk5OTggMTlDMTAuNjE5IDE5IDkuNDk5NzYgMTcuODgwNyA5LjQ5OTc2IDE2LjVDOS40OTk3NiAxNS4xMTkzIDEwLjYxOSAxNCAxMS45OTk4IDE0QzEzLjM4MDUgMTQgMTQuNDk5OCAxNS4xMTkzIDE0LjQ5OTggMTYuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMTRWMTJNMTIgNVY4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class TemperatureBrokenIcon extends StatelessWidget {
  /// Creates the `temperature` icon in the broken style.
  const TemperatureBrokenIcon({
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
    name: 'temperature',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 6V5C15 3.34315 13.6569 2 12 2C10.3431 2 9 3.34315 9 5V11.3477C9 11.6857 8.82505 11.9957 8.56141 12.2072C7.30465 13.2152 6.5 14.7636 6.5 16.5C6.5 19.5376 8.96243 22 12 22C15.0376 22 17.5 19.5376 17.5 16.5C17.5 14.7636 16.6954 13.2152 15.4386 12.2072C15.1749 11.9957 15 11.6857 15 11.3477V10" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.4998 16.5C14.4998 17.8807 13.3805 19 11.9998 19C10.619 19 9.49976 17.8807 9.49976 16.5C9.49976 15.1193 10.619 14 11.9998 14C13.3805 14 14.4998 15.1193 14.4998 16.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 14V12M12 5V8" stroke="currentColor" stroke-linecap="round"/>''',
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
