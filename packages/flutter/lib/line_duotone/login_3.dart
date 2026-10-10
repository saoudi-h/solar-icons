// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `login-3` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNOC4xNDExNCA0LjVIOEM1LjY0Mjk4IDQuNSA0LjQ2NDQ3IDQuNSAzLjczMjIzIDUuMjMyMjNDMyA1Ljk2NDQ3IDMgNy4xNDI5OCAzIDkuNVYxNC41QzMgMTYuODU3IDMgMTguMDM1NSAzLjczMjIzIDE4Ljc2NzhDNC40NjQ0NyAxOS41IDUuNjQyOTggMTkuNSA4IDE5LjVIOC4xNDExNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDE2QzggMTguODI4NCA4IDIwLjI0MjYgOC44Nzg2OCAyMS4xMjEzQzkuNzU3MzYgMjIgMTEuMTcxNiAyMiAxNCAyMkgxNUMxNy44Mjg0IDIyIDE5LjI0MjYgMjIgMjAuMTIxMyAyMS4xMjEzQzIxIDIwLjI0MjYgMjEgMTguODI4NCAyMSAxNlY4QzIxIDUuMTcxNTcgMjEgMy43NTczNiAyMC4xMjEzIDIuODc4NjhDMTkuMjQyNiAyIDE3LjgyODQgMiAxNSAySDE0QzExLjE3MTYgMiA5Ljc1NzM2IDIgOC44Nzg2OCAyLjg3ODY4QzggMy43NTczNiA4IDUuMTcxNTcgOCA4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTYgMTJMMTUgMTJNMTIuNSA5LjVMMTUgMTJMMTIuNSAxNC41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class Login3LineDuotoneIcon extends StatelessWidget {
  /// Creates the `login-3` icon in the lineDuotone style.
  const Login3LineDuotoneIcon({
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
    name: 'login-3',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 16C8 18.8284 8 20.2426 8.87868 21.1213C9.75736 22 11.1716 22 14 22H15C17.8284 22 19.2426 22 20.1213 21.1213C21 20.2426 21 18.8284 21 16V8C21 5.17157 21 3.75736 20.1213 2.87868C19.2426 2 17.8284 2 15 2H14C11.1716 2 9.75736 2 8.87868 2.87868C8 3.75736 8 5.17157 8 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 12L15 12M12.5 9.5L15 12L12.5 14.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.14114 4.5H8C5.64298 4.5 4.46447 4.5 3.73223 5.23223C3 5.96447 3 7.14298 3 9.5V14.5C3 16.857 3 18.0355 3.73223 18.7678C4.46447 19.5 5.64298 19.5 8 19.5H8.14114" stroke="currentColor" stroke-linecap="round"/>''',
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
