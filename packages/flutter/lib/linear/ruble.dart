// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ruble` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTIiIGN5PSIxMiIgcj0iMTAiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSAxNEgxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMCAxMlY4LjJDMTAgOC4wMTQyIDEwIDcuOTIxMyAxMC4wMTIzIDcuODQzNTdDMTAuMDgwMSA3LjQxNTY3IDEwLjQxNTcgNy4wODAwOCAxMC44NDM2IDcuMDEyMzFDMTAuOTIxMyA3IDExLjAxNDIgNyAxMS4yIDdIMTMuNUMxNC44ODA3IDcgMTYgOC4xMTkyOSAxNiA5LjVDMTYgMTAuODgwNyAxNC44ODA3IDEyIDEzLjUgMTJIMTBaTTEwIDEyVjE3TTEwIDEySDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class RubleLinearIcon extends StatelessWidget {
  /// Creates the `ruble` icon in the linear style.
  const RubleLinearIcon({
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
    name: 'ruble',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 14H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 12V8.2C10 8.0142 10 7.9213 10.0123 7.84357C10.0801 7.41567 10.4157 7.08008 10.8436 7.01231C10.9213 7 11.0142 7 11.2 7H13.5C14.8807 7 16 8.11929 16 9.5C16 10.8807 14.8807 12 13.5 12H10ZM10 12V17M10 12H9" stroke="currentColor" stroke-linecap="round"/>''',
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
