// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMiAxNFYxMkMyMiAxMS4xNjEgMjIgMTAuNDE1MyAyMS45ODcxIDkuNzVIMi4wMTI5QzIgMTAuNDE1MyAyIDExLjE2MSAyIDEyVjE0QzIgMTcuNzcxMiAyIDE5LjY1NjkgMy4xNzE1NyAyMC44Mjg0QzQuMzQzMTUgMjIgNi4yMjg3NiAyMiAxMCAyMkgxNEMxNy43NzEyIDIyIDE5LjY1NjkgMjIgMjAuODI4NCAyMC44Mjg0QzIyIDE5LjY1NjkgMjIgMTcuNzcxMiAyMiAxNFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTcuNzUgMi41QzcuNzUgMi4wODU3OSA3LjQxNDIxIDEuNzUgNyAxLjc1QzYuNTg1NzkgMS43NSA2LjI1IDIuMDg1NzkgNi4yNSAyLjVWNC4wNzkyNkM0LjgxMDY3IDQuMTk0NTEgMy44NjU3NyA0LjQ3NzM3IDMuMTcxNTcgNS4xNzE1N0MyLjQ3NzM3IDUuODY1NzcgMi4xOTQ1MSA2LjgxMDY3IDIuMDc5MjYgOC4yNUgyMS45MjA3QzIxLjgwNTUgNi44MTA2NyAyMS41MjI2IDUuODY1NzcgMjAuODI4NCA1LjE3MTU3QzIwLjEzNDIgNC40NzczNyAxOS4xODkzIDQuMTk0NTEgMTcuNzUgNC4wNzkyNlYyLjVDMTcuNzUgMi4wODU3OSAxNy40MTQyIDEuNzUgMTcgMS43NUMxNi41ODU4IDEuNzUgMTYuMjUgMi4wODU3OSAxNi4yNSAyLjVWNC4wMTI5QzE1LjU4NDcgNCAxNC44MzkgNCAxNCA0SDEwQzkuMTYwOTcgNCA4LjQxNTI3IDQgNy43NSA0LjAxMjlWMi41WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
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
