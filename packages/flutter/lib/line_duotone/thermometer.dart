// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `thermometer` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjA5NTUgMTBMMTguMzk2IDExLjMwMDZNMTMuODk2IDEzLjE5OTRMMTUuMTk2NiAxNC41TTEwLjY4NjggMTYuNDA4N0wxMS45ODczIDE3LjcwOTNNNS41Nzg2NiAyMC41NTc2TDUuOTYyMjkgMjAuMTczOUM2LjM5NDkyIDE5Ljc0MTMgNy4wMDA3NiAxOS41Mjg4IDcuNjA4ODYgMTkuNTk2NEw4LjQwNzk5IDE5LjY4NTFDOS4zMjAxMyAxOS43ODY1IDEwLjIyODkgMTkuNDY3NyAxMC44Nzc4IDE4LjgxODhMMTkuODIwMiA5Ljg3NjQyQzIxLjM5MzMgOC4zMDMzNCAyMS4zOTMzIDUuNzUyODggMTkuODIwMiA0LjE3OTgxQzE4LjI0NzEgMi42MDY3MyAxNS42OTY3IDIuNjA2NzMgMTQuMTIzNiA0LjE3OTgxTDUuMTgxMjMgMTMuMTIyMkM0LjUzMjI4IDEzLjc3MTEgNC4yMTM1IDE0LjY3OTkgNC4zMTQ4NSAxNS41OTJMNC40MDM2NCAxNi4zOTExQzQuNDcxMjEgMTYuOTk5MiA0LjI1ODY5IDE3LjYwNTEgMy44MjYwNiAxOC4wMzc3TDMuNDQyNDMgMTguNDIxM0MyLjg1MjUyIDE5LjAxMTIgMi44NTI1MiAxOS45Njc3IDMuNDQyNDMgMjAuNTU3NkM0LjAzMjMzIDIxLjE0NzUgNC45ODg3NSAyMS4xNDc1IDUuNTc4NjYgMjAuNTU3NloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik05IDE1TDE1LjUgOC41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class ThermometerLineDuotoneIcon extends StatelessWidget {
  /// Creates the `thermometer` icon in the lineDuotone style.
  const ThermometerLineDuotoneIcon({
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
    name: 'thermometer',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M17.0955 10L18.396 11.3006M13.896 13.1994L15.1966 14.5M10.6868 16.4087L11.9873 17.7093M5.57866 20.5576L5.96229 20.1739C6.39492 19.7413 7.00076 19.5288 7.60886 19.5964L8.40799 19.6851C9.32013 19.7865 10.2289 19.4677 10.8778 18.8188L19.8202 9.87642C21.3933 8.30334 21.3933 5.75288 19.8202 4.17981C18.2471 2.60673 15.6967 2.60673 14.1236 4.17981L5.18123 13.1222C4.53228 13.7711 4.2135 14.6799 4.31485 15.592L4.40364 16.3911C4.47121 16.9992 4.25869 17.6051 3.82606 18.0377L3.44243 18.4213C2.85252 19.0112 2.85252 19.9677 3.44243 20.5576C4.03233 21.1475 4.98875 21.1475 5.57866 20.5576Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9 15L15.5 8.5" stroke="currentColor" stroke-linecap="round"/>''',
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
