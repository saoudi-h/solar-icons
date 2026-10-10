// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `exit` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuMDI4MzEgNC41SDhDNS42NDI5OCA0LjUgNC40NjQ0NyA0LjUgMy43MzIyMyA1LjIzMjIzQzMgNS45NjQ0NyAzIDcuMTQyOTggMyA5LjVWMTBNOS4wMjgzMSAxOS41SDhDNS42NDI5OCAxOS41IDQuNDY0NDcgMTkuNSAzLjczMjIzIDE4Ljc2NzhDMyAxOC4wMzU1IDMgMTYuODU3IDMgMTQuNVYxNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMy42NTc2IDIuMzQ3MzZDMTEuNDk1NSAxLjk3MDI2IDEwLjQxNDUgMS43ODE3MSA5LjcwNzI1IDIuNDA4N0M5IDMuMDM1NjkgOSA0LjE4MjU5IDkgNi40NzY0VjE3LjUyMzZDOSAxOS44MTc0IDkgMjAuOTY0MyA5LjcwNzI1IDIxLjU5MTNDMTAuNDE0NSAyMi4yMTgzIDExLjQ5NTUgMjIuMDI5NyAxMy42NTc2IDIxLjY1MjZMMTUuOTg2NCAyMS4yNDY1QzE4LjM4MDkgMjAuODI4OCAxOS41NzgxIDIwLjYyIDIwLjI4OTEgMTkuNzQxN0MyMSAxOC44NjM1IDIxIDE3LjU5MzMgMjEgMTUuMDUyOVY4Ljk0NzExQzIxIDYuNDA2NzIgMjEgNS4xMzY1MiAyMC4yODkxIDQuMjU4MjZDMTkuODE0IDMuNjcxMzMgMTkuMTIxNyAzLjM4MzM4IDE4IDMuMTMyMjgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMTFWMTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class ExitBrokenIcon extends StatelessWidget {
  /// Creates the `exit` icon in the broken style.
  const ExitBrokenIcon({
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
    name: 'exit',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9.02831 4.5H8C5.64298 4.5 4.46447 4.5 3.73223 5.23223C3 5.96447 3 7.14298 3 9.5V10M9.02831 19.5H8C5.64298 19.5 4.46447 19.5 3.73223 18.7678C3 18.0355 3 16.857 3 14.5V14" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.6576 2.34736C11.4955 1.97026 10.4145 1.78171 9.70725 2.4087C9 3.03569 9 4.18259 9 6.4764V17.5236C9 19.8174 9 20.9643 9.70725 21.5913C10.4145 22.2183 11.4955 22.0297 13.6576 21.6526L15.9864 21.2465C18.3809 20.8288 19.5781 20.62 20.2891 19.7417C21 18.8635 21 17.5933 21 15.0529V8.94711C21 6.40672 21 5.13652 20.2891 4.25826C19.814 3.67133 19.1217 3.38338 18 3.13228" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 11V13" stroke="currentColor" stroke-linecap="round"/>''',
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
