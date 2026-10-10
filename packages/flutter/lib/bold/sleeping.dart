// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sleeping` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIuNzUgNkMyLjc1IDUuNTg1NzkgMi40MTQyMSA1LjI1IDIgNS4yNUMxLjU4NTc5IDUuMjUgMS4yNSA1LjU4NTc5IDEuMjUgNlYxOEMxLjI1IDE4LjQxNDIgMS41ODU3OSAxOC43NSAyIDE4Ljc1QzIuNDE0MjEgMTguNzUgMi43NSAxOC40MTQyIDIuNzUgMThWMTYuNzVIMjEuMTQyVjE4LjAwMDJDMjEuMTQyIDE4LjQxNDQgMjEuNDc3OCAxOC43NTAyIDIxLjg5MiAxOC43NTAyQzIyLjMwNjMgMTguNzUwMiAyMi42NDIgMTguNDE0NCAyMi42NDIgMTguMDAwMlYxNi4wMDAxTDIyLjY0MjkgMTUuNjQzQzIyLjY0MjkgMTMuNjQ4IDIyLjY0MjkgMTIuNjUwNiAyMi4zNjIzIDExLjg0ODdDMjEuODU5NyAxMC40MTI1IDIwLjczMDUgOS4yODMyNSAxOS4yOTQzIDguNzgwNjlDMTguNDkyNCA4LjUwMDExIDE3LjQ5NDkgOC41MDAxMSAxNS41IDguNTAwMTFIMTUuNDk3N0MxNC43IDguNTAwMTEgMTMuNjU5OSA4LjUwMDExIDEzLjMzOTQgOC42MTIyM0MxMi43NjQ5IDguODEzMjYgMTIuMzEzMyA5LjI2NDk1IDEyLjExMjIgOS44Mzk0NEMxMiAxMC4xNjAyIDEyIDEwLjU1OTIgMTIgMTEuMzU3MVYxNS4yNUgyLjc1VjZaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik03IDEzLjVDOC4zODA3MSAxMy41IDkuNSAxMi4zODA3IDkuNSAxMUM5LjUgOS42MTkyOSA4LjM4MDcxIDguNSA3IDguNUM1LjYxOTI5IDguNSA0LjUgOS42MTkyOSA0LjUgMTFDNC41IDEyLjM4MDcgNS42MTkyOSAxMy41IDcgMTMuNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class SleepingBoldIcon extends StatelessWidget {
  /// Creates the `sleeping` icon in the bold style.
  const SleepingBoldIcon({
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
    name: 'sleeping',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M2.75 6C2.75 5.58579 2.41421 5.25 2 5.25C1.58579 5.25 1.25 5.58579 1.25 6V18C1.25 18.4142 1.58579 18.75 2 18.75C2.41421 18.75 2.75 18.4142 2.75 18V16.75H21.142V18.0002C21.142 18.4144 21.4778 18.7502 21.892 18.7502C22.3063 18.7502 22.642 18.4144 22.642 18.0002V16.0001L22.6429 15.643C22.6429 13.648 22.6429 12.6506 22.3623 11.8487C21.8597 10.4125 20.7305 9.28325 19.2943 8.78069C18.4924 8.50011 17.4949 8.50011 15.5 8.50011H15.4977C14.7 8.50011 13.6599 8.50011 13.3394 8.61223C12.7649 8.81326 12.3133 9.26495 12.1122 9.83944C12 10.1602 12 10.5592 12 11.3571V15.25H2.75V6Z" fill="currentColor"/>
<path d="M7 13.5C8.38071 13.5 9.5 12.3807 9.5 11C9.5 9.61929 8.38071 8.5 7 8.5C5.61929 8.5 4.5 9.61929 4.5 11C4.5 12.3807 5.61929 13.5 7 13.5Z" fill="currentColor"/>''',
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
