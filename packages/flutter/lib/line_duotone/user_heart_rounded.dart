// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-heart-rounded` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iOSIgY3k9IjYiIHI9IjQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8ZWxsaXBzZSBvcGFjaXR5PSIwLjUiIGN4PSI5IiBjeT0iMTciIHJ4PSI3IiByeT0iNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNSA5LjY5OTczQzE1IDExLjExMjEgMTYuMjA1OCAxMS44NjQ4IDE3LjA4ODUgMTIuNTM4NUMxNy40IDEyLjc3NjIgMTcuNyAxMyAxOCAxM0MxOC4zIDEzIDE4LjYgMTIuNzc2MiAxOC45MTE1IDEyLjUzODVDMTkuNzk0MiAxMS44NjQ4IDIxIDExLjExMjEgMjEgOS42OTk3M0MyMSA4LjI4NzMyIDE5LjM1IDcuMjg1NjcgMTggOC42NDM1NEMxNi42NSA3LjI4NTY3IDE1IDguMjg3MzIgMTUgOS42OTk3M1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class UserHeartRoundedLineDuotoneIcon extends StatelessWidget {
  /// Creates the `user-heart-rounded` icon in the lineDuotone style.
  const UserHeartRoundedLineDuotoneIcon({
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
    name: 'user-heart-rounded',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="9" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 9.69973C15 11.1121 16.2058 11.8648 17.0885 12.5385C17.4 12.7762 17.7 13 18 13C18.3 13 18.6 12.7762 18.9115 12.5385C19.7942 11.8648 21 11.1121 21 9.69973C21 8.28732 19.35 7.28567 18 8.64354C16.65 7.28567 15 8.28732 15 9.69973Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<ellipse opacity="0.5" cx="9" cy="17" rx="7" ry="4" stroke="currentColor" stroke-linecap="round"/>''',
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
