// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `calendar-minimalistic` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDE0VjEyQzIyIDExLjE2MSAyMiAxMC40MTUzIDIxLjk4NzEgOS43NUgyLjAxMjlDMiAxMC40MTUzIDIgMTEuMTYxIDIgMTJWMTRDMiAxNy43NzEyIDIgMTkuNjU2OSAzLjE3MTU3IDIwLjgyODRDNC4zNDMxNSAyMiA2LjIyODc2IDIyIDEwIDIySDE0QzE3Ljc3MTIgMjIgMTkuNjU2OSAyMiAyMC44Mjg0IDIwLjgyODRDMjIgMTkuNjU2OSAyMiAxNy43NzEyIDIyIDE0WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNNy43NSAyLjVDNy43NSAyLjA4NTc5IDcuNDE0MjEgMS43NSA3IDEuNzVDNi41ODU3OSAxLjc1IDYuMjUgMi4wODU3OSA2LjI1IDIuNVY0LjA3OTI2QzQuODEwNjcgNC4xOTQ1MSAzLjg2NTc3IDQuNDc3MzcgMy4xNzE1NyA1LjE3MTU3QzIuNDc3MzcgNS44NjU3NyAyLjE5NDUxIDYuODEwNjcgMi4wNzkyNiA4LjI1SDIxLjkyMDdDMjEuODA1NSA2LjgxMDY3IDIxLjUyMjYgNS44NjU3NyAyMC44Mjg0IDUuMTcxNTdDMjAuMTM0MiA0LjQ3NzM3IDE5LjE4OTMgNC4xOTQ1MSAxNy43NSA0LjA3OTI2VjIuNUMxNy43NSAyLjA4NTc5IDE3LjQxNDIgMS43NSAxNyAxLjc1QzE2LjU4NTggMS43NSAxNi4yNSAyLjA4NTc5IDE2LjI1IDIuNVY0LjAxMjlDMTUuNTg0NyA0IDE0LjgzOSA0IDE0IDRIMTBDOS4xNjA5NyA0IDguNDE1MjcgNCA3Ljc1IDQuMDEyOVYyLjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class CalendarMinimalisticBoldIcon extends StatelessWidget {
  /// Creates the `calendar-minimalistic` icon in the bold style.
  const CalendarMinimalisticBoldIcon({
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
    name: 'calendar-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M22 14V12C22 11.161 22 10.4153 21.9871 9.75H2.0129C2 10.4153 2 11.161 2 12V14C2 17.7712 2 19.6569 3.17157 20.8284C4.34315 22 6.22876 22 10 22H14C17.7712 22 19.6569 22 20.8284 20.8284C22 19.6569 22 17.7712 22 14Z" fill="currentColor"/>
<path d="M7.75 2.5C7.75 2.08579 7.41421 1.75 7 1.75C6.58579 1.75 6.25 2.08579 6.25 2.5V4.07926C4.81067 4.19451 3.86577 4.47737 3.17157 5.17157C2.47737 5.86577 2.19451 6.81067 2.07926 8.25H21.9207C21.8055 6.81067 21.5226 5.86577 20.8284 5.17157C20.1342 4.47737 19.1893 4.19451 17.75 4.07926V2.5C17.75 2.08579 17.4142 1.75 17 1.75C16.5858 1.75 16.25 2.08579 16.25 2.5V4.0129C15.5847 4 14.839 4 14 4H10C9.16097 4 8.41527 4 7.75 4.0129V2.5Z" fill="currentColor"/>''',
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
