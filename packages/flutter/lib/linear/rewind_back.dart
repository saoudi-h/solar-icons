// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-back` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEzIDguNzY4NDRMMTkuMDk2NiA0LjMwODM4QzIwLjM5OTEgMy40MTEyMiAyMS45OTk4IDQuNTc4OTUgMjEuOTk5OCA2LjQyNjMyTDIxLjk5OTggMTcuNTczN0MyMS45OTk4IDE5LjQyMTEgMjAuMzk5MSAyMC41ODg4IDE5LjA5NjYgMTkuNjkxNkwxMyAxNS4yMzE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIuOTIxMzYgMTAuMTQ2OEMxLjY5Mjg4IDEwLjk1NDUgMS42OTI4OCAxMy4wNDU1IDIuOTIxMzUgMTMuODUzMkwxMC4zMzg4IDE4LjczMDJDMTEuNTMyNyAxOS41MTUyIDEzIDE4LjQ5MzQgMTMgMTYuODc3TDEzIDcuMTIzMDNDMTMgNS41MDY1OCAxMS41MzI3IDQuNDg0ODIgMTAuMzM4OCA1LjI2OTgzTDIuOTIxMzYgMTAuMTQ2OFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class RewindBackLinearIcon extends StatelessWidget {
  /// Creates the `rewind-back` icon in the linear style.
  const RewindBackLinearIcon({
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
    name: 'rewind-back',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M13 8.76844L19.0966 4.30838C20.3991 3.41122 21.9998 4.57895 21.9998 6.42632L21.9998 17.5737C21.9998 19.4211 20.3991 20.5888 19.0966 19.6916L13 15.2316" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.92136 10.1468C1.69288 10.9545 1.69288 13.0455 2.92135 13.8532L10.3388 18.7302C11.5327 19.5152 13 18.4934 13 16.877L13 7.12303C13 5.50658 11.5327 4.48482 10.3388 5.26983L2.92136 10.1468Z" stroke="currentColor" stroke-linecap="round"/>''',
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
