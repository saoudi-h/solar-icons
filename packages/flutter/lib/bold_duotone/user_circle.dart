// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-circle` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzYuNDc3MTUgMjIgMiAxNy41MjI4IDIgMTJDMiA2LjQ3NzE1IDYuNDc3MTUgMiAxMiAyQzE3LjUyMjggMiAyMiA2LjQ3NzE1IDIyIDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTYuODA3IDE5LjAxMTJDMTUuNDM5OCAxOS45NTA0IDEzLjc4NDEgMjAuNSAxMiAyMC41QzEwLjIxNTkgMjAuNSA4LjU2MDIzIDE5Ljk1MDMgNy4xOTMgMTkuMDExMUM2LjU4OTE1IDE4LjU5NjMgNi4zMzEwOSAxNy44MDYyIDYuNjgyMTkgMTcuMTYzMkM3LjQxMDAxIDE1LjgzMDIgOC45MDk3MyAxNSAxMiAxNUMxNS4wOTAzIDE1IDE2LjU5IDE1LjgzMDMgMTcuMzE3OCAxNy4xNjMyQzE3LjY2ODkgMTcuODA2MiAxNy40MTA4IDE4LjU5NjQgMTYuODA3IDE5LjAxMTJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiAxMkMxMy42NTY5IDEyIDE1IDEwLjY1NjkgMTUgOUMxNSA3LjM0MzE1IDEzLjY1NjkgNiAxMiA2QzEwLjM0MzIgNiA5LjAwMDA0IDcuMzQzMTUgOS4wMDAwNCA5QzkuMDAwMDQgMTAuNjU2OSAxMC4zNDMyIDEyIDEyIDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class UserCircleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `user-circle` icon in the boldDuotone style.
  const UserCircleBoldDuotoneIcon({
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
    name: 'user-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.807 19.0112C15.4398 19.9504 13.7841 20.5 12 20.5C10.2159 20.5 8.56023 19.9503 7.193 19.0111C6.58915 18.5963 6.33109 17.8062 6.68219 17.1632C7.41001 15.8302 8.90973 15 12 15C15.0903 15 16.59 15.8303 17.3178 17.1632C17.6689 17.8062 17.4108 18.5964 16.807 19.0112Z" fill="currentColor"/>
<path d="M12 12C13.6569 12 15 10.6569 15 9C15 7.34315 13.6569 6 12 6C10.3432 6 9.00004 7.34315 9.00004 9C9.00004 10.6569 10.3432 12 12 12Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" fill="currentColor"/>''',
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
