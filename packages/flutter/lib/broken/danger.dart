// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `danger` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDdWMTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOS4yMTYwMyAzQzEwLjM5NTggMi4zMzMzMyAxMS4xNzAzIDIgMTIgMkMxMy4xMTM4IDIgMTQuMTI4MiAyLjYwMDcgMTYuMTU2OSAzLjgwMjExTDE2Ljg0MzEgNC4yMDg0NkMxOC44NzE4IDUuNDA5ODcgMTkuODg2MiA2LjAxMDU3IDIwLjQ0MzEgN0MyMSA3Ljk4OTQzIDIxIDkuMTkwODQgMjEgMTEuNTkzN1YxMi40MDYzQzIxIDE0LjgwOTIgMjEgMTYuMDEwNiAyMC40NDMxIDE3QzE5Ljg4NjIgMTcuOTg5NCAxOC44NzE4IDE4LjU5MDEgMTYuODQzMSAxOS43OTE1TDE2LjE1NjkgMjAuMTk3OUMxNC4xMjgyIDIxLjM5OTMgMTMuMTEzOCAyMiAxMiAyMkMxMC44ODYyIDIyIDkuODcxOCAyMS4zOTkzIDcuODQzMDggMjAuMTk3OUw3LjE1NjkyIDE5Ljc5MTVDNS4xMjgyIDE4LjU5MDEgNC4xMTM4NCAxNy45ODk0IDMuNTU2OTIgMTdDMyAxNi4wMTA2IDMgMTQuODA5MiAzIDEyLjQwNjNWMTEuNTkzN0MzIDkuMTkwODQgMyA3Ljk4OTQzIDMuNTU2OTIgN0MzLjk5NTk5IDYuMjE5OTUgNC43MTkzOCA1LjY4MTUxIDYgNC44OTk4NCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAxNkgxMi4wMDAxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class DangerBrokenIcon extends StatelessWidget {
  /// Creates the `danger` icon in the broken style.
  const DangerBrokenIcon({
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
    name: 'danger',
    style: SolarIconStyle.broken,
    body: r'''<path d="M12 7V13" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.21603 3C10.3958 2.33333 11.1703 2 12 2C13.1138 2 14.1282 2.6007 16.1569 3.80211L16.8431 4.20846C18.8718 5.40987 19.8862 6.01057 20.4431 7C21 7.98943 21 9.19084 21 11.5937V12.4063C21 14.8092 21 16.0106 20.4431 17C19.8862 17.9894 18.8718 18.5901 16.8431 19.7915L16.1569 20.1979C14.1282 21.3993 13.1138 22 12 22C10.8862 22 9.8718 21.3993 7.84308 20.1979L7.15692 19.7915C5.1282 18.5901 4.11384 17.9894 3.55692 17C3 16.0106 3 14.8092 3 12.4063V11.5937C3 9.19084 3 7.98943 3.55692 7C3.99599 6.21995 4.71938 5.68151 6 4.89984" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 16H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
