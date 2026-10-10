// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `exit` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNOS4wMjgzMSA0LjVIOEM1LjY0Mjk4IDQuNSA0LjQ2NDQ3IDQuNSAzLjczMjIzIDUuMjMyMjNDMyA1Ljk2NDQ3IDMgNy4xNDI5OCAzIDkuNVYxNC41QzMgMTYuODU3IDMgMTguMDM1NSAzLjczMjIzIDE4Ljc2NzhDNC40NjQ0NyAxOS41IDUuNjQyOTggMTkuNSA4IDE5LjVIOS4wMjgzMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDYuNDc2NEM5IDQuMTgyNTkgOSAzLjAzNTY5IDkuNzA3MjUgMi40MDg3QzEwLjQxNDUgMS43ODE3MSAxMS40OTU1IDEuOTcwMjYgMTMuNjU3NiAyLjM0NzM2TDE1Ljk4NjQgMi43NTM1NEMxOC4zODA5IDMuMTcxMTggMTkuNTc4MSAzLjM3OTk5IDIwLjI4OTEgNC4yNTgyNkMyMSA1LjEzNjUyIDIxIDYuNDA2NzIgMjEgOC45NDcxMVYxNS4wNTI5QzIxIDE3LjU5MzMgMjEgMTguODYzNSAyMC4yODkxIDE5Ljc0MTdDMTkuNTc4MSAyMC42MiAxOC4zODA5IDIwLjgyODggMTUuOTg2NCAyMS4yNDY1TDEzLjY1NzYgMjEuNjUyNkMxMS40OTU1IDIyLjAyOTcgMTAuNDE0NSAyMi4yMTgzIDkuNzA3MjUgMjEuNTkxM0M5IDIwLjk2NDMgOSAxOS44MTc0IDkgMTcuNTIzNlY2LjQ3NjRaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMTFWMTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class ExitLineDuotoneIcon extends StatelessWidget {
  /// Creates the `exit` icon in the lineDuotone style.
  const ExitLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 6.4764C9 4.18259 9 3.03569 9.70725 2.4087C10.4145 1.78171 11.4955 1.97026 13.6576 2.34736L15.9864 2.75354C18.3809 3.17118 19.5781 3.37999 20.2891 4.25826C21 5.13652 21 6.40672 21 8.94711V15.0529C21 17.5933 21 18.8635 20.2891 19.7417C19.5781 20.62 18.3809 20.8288 15.9864 21.2465L13.6576 21.6526C11.4955 22.0297 10.4145 22.2183 9.70725 21.5913C9 20.9643 9 19.8174 9 17.5236V6.4764Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.02831 4.5H8C5.64298 4.5 4.46447 4.5 3.73223 5.23223C3 5.96447 3 7.14298 3 9.5V14.5C3 16.857 3 18.0355 3.73223 18.7678C4.46447 19.5 5.64298 19.5 8 19.5H9.02831" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 11V13" stroke="currentColor" stroke-linecap="round"/>''',
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
