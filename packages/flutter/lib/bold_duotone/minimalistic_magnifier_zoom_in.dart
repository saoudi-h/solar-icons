// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTEuNSIgY3k9IjExLjUiIHI9IjkuNSIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTkuNDY5NyAxOS40Njk3QzE5Ljc2MjYgMTkuMTc2OCAyMC4yMzc0IDE5LjE3NjggMjAuNTMwMyAxOS40Njk3TDIyLjUzMDMgMjEuNDY5N0MyMi44MjMxIDIxLjc2MjYgMjIuODIzMSAyMi4yMzc0IDIyLjUzMDMgMjIuNTMwM0MyMi4yMzc0IDIyLjgyMzEgMjEuNzYyNiAyMi44MjMxIDIxLjQ2OTcgMjIuNTMwM0wxOS40Njk3IDIwLjUzMDNDMTkuMTc2OCAyMC4yMzc0IDE5LjE3NjggMTkuNzYyNiAxOS40Njk3IDE5LjQ2OTdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMS41IDguMjVDMTEuOTE0MiA4LjI1IDEyLjI1IDguNTg1NzkgMTIuMjUgOVYxMC43NUgxNEMxNC40MTQyIDEwLjc1IDE0Ljc1IDExLjA4NTggMTQuNzUgMTEuNUMxNC43NSAxMS45MTQyIDE0LjQxNDIgMTIuMjUgMTQgMTIuMjVIMTIuMjVWMTRDMTIuMjUgMTQuNDE0MiAxMS45MTQyIDE0Ljc1IDExLjUgMTQuNzVDMTEuMDg1OCAxNC43NSAxMC43NSAxNC40MTQyIDEwLjc1IDE0VjEyLjI1SDlDOC41ODU3OSAxMi4yNSA4LjI1IDExLjkxNDIgOC4yNSAxMS41QzguMjUgMTEuMDg1OCA4LjU4NTc5IDEwLjc1IDkgMTAuNzVIMTAuNzVWOUMxMC43NSA4LjU4NTc5IDExLjA4NTggOC4yNSAxMS41IDguMjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MinimalisticMagnifierZoomInBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `minimalistic-magnifier-zoom-in` icon in the boldDuotone style.
  const MinimalisticMagnifierZoomInBoldDuotoneIcon({
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
    name: 'minimalistic-magnifier-zoom-in',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M19.4697 19.4697C19.7626 19.1768 20.2374 19.1768 20.5303 19.4697L22.5303 21.4697C22.8231 21.7626 22.8231 22.2374 22.5303 22.5303C22.2374 22.8231 21.7626 22.8231 21.4697 22.5303L19.4697 20.5303C19.1768 20.2374 19.1768 19.7626 19.4697 19.4697Z" fill="currentColor"/>
<path d="M11.5 8.25C11.9142 8.25 12.25 8.58579 12.25 9V10.75H14C14.4142 10.75 14.75 11.0858 14.75 11.5C14.75 11.9142 14.4142 12.25 14 12.25H12.25V14C12.25 14.4142 11.9142 14.75 11.5 14.75C11.0858 14.75 10.75 14.4142 10.75 14V12.25H9C8.58579 12.25 8.25 11.9142 8.25 11.5C8.25 11.0858 8.58579 10.75 9 10.75H10.75V9C10.75 8.58579 11.0858 8.25 11.5 8.25Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" fill="currentColor"/>''',
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
