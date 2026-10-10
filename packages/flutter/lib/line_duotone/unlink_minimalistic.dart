// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `unlink-minimalistic` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTAgNS4wNDg3N0wxMC4zNjcgNC43MDU2M0MxMi43OTk1IDIuNDMxNDYgMTYuNzQzMiAyLjQzMTQ2IDE5LjE3NTcgNC43MDU2M0MyMS42MDgxIDYuOTc5OCAyMS42MDgxIDEwLjY2NyAxOS4xNzU3IDEyLjk0MTFMMTYuOTczNSAxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE0IDE4LjkyNzhMMTMuNjM0NSAxOS4yNzczQzExLjIxMjMgMjEuNTkzNyA3LjI1NDM0IDIxLjU2NDQgNC44MzIwOSAxOS4yNDhDMi40MzM3NiAxNi45NTQ2IDIuMzc2MzkgMTMuMjE1MyA0Ljc0MDk1IDEwLjg5TDUuNjQ1OTQgMTAiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNi41ODczOSAzTDcuNSA1LjIwNTIxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTMuNTAyMzggNi4wODY1OEw5LjA1MDIxIDguNzk0NTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class UnlinkMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `unlink-minimalistic` icon in the lineDuotone style.
  const UnlinkMinimalisticLineDuotoneIcon({
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
    name: 'unlink-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M6.58739 3L7.5 5.20521" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.50238 6.08658L9.05021 8.79453" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M10 5.04877L10.367 4.70563C12.7995 2.43146 16.7432 2.43146 19.1757 4.70563C21.6081 6.9798 21.6081 10.667 19.1757 12.9411L16.9735 15" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14 18.9278L13.6345 19.2773C11.2123 21.5937 7.25434 21.5644 4.83209 19.248C2.43376 16.9546 2.37639 13.2153 4.74095 10.89L5.64594 10" stroke="currentColor" stroke-linecap="round"/>''',
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
