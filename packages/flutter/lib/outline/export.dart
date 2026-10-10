// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `export` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0LjQ2OTcgNy41MzAzM0MxNC43NjI2IDcuODIzMjIgMTUuMjM3NCA3LjgyMzIyIDE1LjUzMDMgNy41MzAzM0MxNS44MjMyIDcuMjM3NDQgMTUuODIzMiA2Ljc2MjU2IDE1LjUzMDMgNi40Njk2N0wxMi41MzAzIDMuNDY5NjdDMTIuMjM3NCAzLjE3Njc4IDExLjc2MjYgMy4xNzY3OCAxMS40Njk3IDMuNDY5NjdMOC40Njk2NyA2LjQ2OTY3QzguMTc2NzggNi43NjI1NiA4LjE3Njc4IDcuMjM3NDQgOC40Njk2NyA3LjUzMDMzQzguNzYyNTYgNy44MjMyMiA5LjIzNzQ0IDcuODIzMjIgOS41MzAzMyA3LjUzMDMzTDExLjI1IDUuODEwNjZWMTRDMTEuMjUgMTQuNDE0MiAxMS41ODU4IDE0Ljc1IDEyIDE0Ljc1QzEyLjQxNDIgMTQuNzUgMTIuNzUgMTQuNDE0MiAxMi43NSAxNFY1LjgxMDY2TDE0LjQ2OTcgNy41MzAzM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIwLjc1IDEyQzIwLjc1IDExLjU4NTggMjAuNDE0MiAxMS4yNSAyMCAxMS4yNUMxOS41ODU4IDExLjI1IDE5LjI1IDExLjU4NTggMTkuMjUgMTJDMTkuMjUgMTYuMDA0MSAxNi4wMDQxIDE5LjI1IDEyIDE5LjI1QzcuOTk1OTMgMTkuMjUgNC43NSAxNi4wMDQxIDQuNzUgMTJDNC43NSAxMS41ODU4IDQuNDE0MjEgMTEuMjUgNCAxMS4yNUMzLjU4NTc5IDExLjI1IDMuMjUgMTEuNTg1OCAzLjI1IDEyQzMuMjUgMTYuODMyNSA3LjE2NzUxIDIwLjc1IDEyIDIwLjc1QzE2LjgzMjUgMjAuNzUgMjAuNzUgMTYuODMyNSAyMC43NSAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ExportOutlineIcon extends StatelessWidget {
  /// Creates the `export` icon in the outline style.
  const ExportOutlineIcon({
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
    name: 'export',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M14.4697 7.53033C14.7626 7.82322 15.2374 7.82322 15.5303 7.53033C15.8232 7.23744 15.8232 6.76256 15.5303 6.46967L12.5303 3.46967C12.2374 3.17678 11.7626 3.17678 11.4697 3.46967L8.46967 6.46967C8.17678 6.76256 8.17678 7.23744 8.46967 7.53033C8.76256 7.82322 9.23744 7.82322 9.53033 7.53033L11.25 5.81066V14C11.25 14.4142 11.5858 14.75 12 14.75C12.4142 14.75 12.75 14.4142 12.75 14V5.81066L14.4697 7.53033Z" fill="currentColor"/>
<path d="M20.75 12C20.75 11.5858 20.4142 11.25 20 11.25C19.5858 11.25 19.25 11.5858 19.25 12C19.25 16.0041 16.0041 19.25 12 19.25C7.99593 19.25 4.75 16.0041 4.75 12C4.75 11.5858 4.41421 11.25 4 11.25C3.58579 11.25 3.25 11.5858 3.25 12C3.25 16.8325 7.16751 20.75 12 20.75C16.8325 20.75 20.75 16.8325 20.75 12Z" fill="currentColor"/>''',
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
