// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `exit` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuMDI4MzEgNC41SDhDNS42NDI5OCA0LjUgNC40NjQ0NyA0LjUgMy43MzIyMyA1LjIzMjIzQzMgNS45NjQ0NyAzIDcuMTQyOTggMyA5LjVWMTQuNUMzIDE2Ljg1NyAzIDE4LjAzNTUgMy43MzIyMyAxOC43Njc4QzQuNDY0NDcgMTkuNSA1LjY0Mjk4IDE5LjUgOCAxOS41SDkuMDI4MzEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSA2LjQ3NjRDOSA0LjE4MjU5IDkgMy4wMzU2OSA5LjcwNzI1IDIuNDA4N0MxMC40MTQ1IDEuNzgxNzEgMTEuNDk1NSAxLjk3MDI2IDEzLjY1NzYgMi4zNDczNkwxNS45ODY0IDIuNzUzNTRDMTguMzgwOSAzLjE3MTE4IDE5LjU3ODEgMy4zNzk5OSAyMC4yODkxIDQuMjU4MjZDMjEgNS4xMzY1MiAyMSA2LjQwNjcyIDIxIDguOTQ3MTFWMTUuMDUyOUMyMSAxNy41OTMzIDIxIDE4Ljg2MzUgMjAuMjg5MSAxOS43NDE3QzE5LjU3ODEgMjAuNjIgMTguMzgwOSAyMC44Mjg4IDE1Ljk4NjQgMjEuMjQ2NUwxMy42NTc2IDIxLjY1MjZDMTEuNDk1NSAyMi4wMjk3IDEwLjQxNDUgMjIuMjE4MyA5LjcwNzI1IDIxLjU5MTNDOSAyMC45NjQzIDkgMTkuODE3NCA5IDE3LjUyMzZWNi40NzY0WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAxMVYxMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ExitLinearIcon extends StatelessWidget {
  /// Creates the `exit` icon in the linear style.
  const ExitLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9.02831 4.5H8C5.64298 4.5 4.46447 4.5 3.73223 5.23223C3 5.96447 3 7.14298 3 9.5V14.5C3 16.857 3 18.0355 3.73223 18.7678C4.46447 19.5 5.64298 19.5 8 19.5H9.02831" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 6.4764C9 4.18259 9 3.03569 9.70725 2.4087C10.4145 1.78171 11.4955 1.97026 13.6576 2.34736L15.9864 2.75354C18.3809 3.17118 19.5781 3.37999 20.2891 4.25826C21 5.13652 21 6.40672 21 8.94711V15.0529C21 17.5933 21 18.8635 20.2891 19.7417C19.5781 20.62 18.3809 20.8288 15.9864 21.2465L13.6576 21.6526C11.4955 22.0297 10.4145 22.2183 9.70725 21.5913C9 20.9643 9 19.8174 9 17.5236V6.4764Z" stroke="currentColor" stroke-linecap="round"/>
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
