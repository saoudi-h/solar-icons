// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `magnifier-zoom-out` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS41IDIuNzVDNi42Njc1MSAyLjc1IDIuNzUgNi42Njc1MSAyLjc1IDExLjVDMi43NSAxNi4zMzI1IDYuNjY3NTEgMjAuMjUgMTEuNSAyMC4yNUMxNi4zMzI1IDIwLjI1IDIwLjI1IDE2LjMzMjUgMjAuMjUgMTEuNUMyMC4yNSA2LjY2NzUxIDE2LjMzMjUgMi43NSAxMS41IDIuNzVaTTEuMjUgMTEuNUMxLjI1IDUuODM5MDggNS44MzkwOCAxLjI1IDExLjUgMS4yNUMxNy4xNjA5IDEuMjUgMjEuNzUgNS44MzkwOCAyMS43NSAxMS41QzIxLjc1IDE0LjA2MDUgMjAuODExMSAxNi40MDE3IDE5LjI1ODkgMTguMTk4MkwyMi41MzAzIDIxLjQ2OTdDMjIuODIzMiAyMS43NjI2IDIyLjgyMzIgMjIuMjM3NCAyMi41MzAzIDIyLjUzMDNDMjIuMjM3NCAyMi44MjMyIDIxLjc2MjYgMjIuODIzMiAyMS40Njk3IDIyLjUzMDNMMTguMTk4MiAxOS4yNTg5QzE2LjQwMTcgMjAuODExMSAxNC4wNjA1IDIxLjc1IDExLjUgMjEuNzVDNS44MzkwOCAyMS43NSAxLjI1IDE3LjE2MDkgMS4yNSAxMS41Wk04LjI1IDExLjVDOC4yNSAxMS4wODU4IDguNTg1NzkgMTAuNzUgOSAxMC43NUgxNEMxNC40MTQyIDEwLjc1IDE0Ljc1IDExLjA4NTggMTQuNzUgMTEuNUMxNC43NSAxMS45MTQyIDE0LjQxNDIgMTIuMjUgMTQgMTIuMjVIOUM4LjU4NTc5IDEyLjI1IDguMjUgMTEuOTE0MiA4LjI1IDExLjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MagnifierZoomOutOutlineIcon extends StatelessWidget {
  /// Creates the `magnifier-zoom-out` icon in the outline style.
  const MagnifierZoomOutOutlineIcon({
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
    name: 'magnifier-zoom-out',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 2.75C6.66751 2.75 2.75 6.66751 2.75 11.5C2.75 16.3325 6.66751 20.25 11.5 20.25C16.3325 20.25 20.25 16.3325 20.25 11.5C20.25 6.66751 16.3325 2.75 11.5 2.75ZM1.25 11.5C1.25 5.83908 5.83908 1.25 11.5 1.25C17.1609 1.25 21.75 5.83908 21.75 11.5C21.75 14.0605 20.8111 16.4017 19.2589 18.1982L22.5303 21.4697C22.8232 21.7626 22.8232 22.2374 22.5303 22.5303C22.2374 22.8232 21.7626 22.8232 21.4697 22.5303L18.1982 19.2589C16.4017 20.8111 14.0605 21.75 11.5 21.75C5.83908 21.75 1.25 17.1609 1.25 11.5ZM8.25 11.5C8.25 11.0858 8.58579 10.75 9 10.75H14C14.4142 10.75 14.75 11.0858 14.75 11.5C14.75 11.9142 14.4142 12.25 14 12.25H9C8.58579 12.25 8.25 11.9142 8.25 11.5Z" fill="currentColor"/>''',
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
