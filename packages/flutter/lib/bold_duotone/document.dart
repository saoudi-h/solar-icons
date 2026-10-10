// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTMgMTBDMyA2LjIyODc2IDMgNC4zNDMxNSA0LjE3MTU3IDMuMTcxNTdDNS4zNDMxNSAyIDcuMjI4NzYgMiAxMSAySDEzQzE2Ljc3MTIgMiAxOC42NTY5IDIgMTkuODI4NCAzLjE3MTU3QzIxIDQuMzQzMTUgMjEgNi4yMjg3NiAyMSAxMFYxNEMyMSAxNy43NzEyIDIxIDE5LjY1NjkgMTkuODI4NCAyMC44Mjg0QzE4LjY1NjkgMjIgMTYuNzcxMiAyMiAxMyAyMkgxMUM3LjIyODc2IDIyIDUuMzQzMTUgMjIgNC4xNzE1NyAyMC44Mjg0QzMgMTkuNjU2OSAzIDE3Ljc3MTIgMyAxNFYxMFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEzIDEzLjI1QzEzLjQxNDIgMTMuMjUgMTMuNzUgMTMuNTg1OCAxMy43NSAxNEMxMy43NSAxNC40MTQyIDEzLjQxNDIgMTQuNzUgMTMgMTQuNzVIOEM3LjU4NTc5IDE0Ljc1IDcuMjUgMTQuNDE0MiA3LjI1IDE0QzcuMjUgMTMuNTg1OCA3LjU4NTc5IDEzLjI1IDggMTMuMjVIMTNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNiA5LjI1QzE2LjQxNDIgOS4yNSAxNi43NSA5LjU4NTc5IDE2Ljc1IDEwQzE2Ljc1IDEwLjQxNDIgMTYuNDE0MiAxMC43NSAxNiAxMC43NUg4QzcuNTg1NzkgMTAuNzUgNy4yNSAxMC40MTQyIDcuMjUgMTBDNy4yNSA5LjU4NTc5IDcuNTg1NzkgOS4yNSA4IDkuMjVIMTZaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class DocumentBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `document` icon in the boldDuotone style.
  const DocumentBoldDuotoneIcon({
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
    name: 'document',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13 13.25C13.4142 13.25 13.75 13.5858 13.75 14C13.75 14.4142 13.4142 14.75 13 14.75H8C7.58579 14.75 7.25 14.4142 7.25 14C7.25 13.5858 7.58579 13.25 8 13.25H13Z" fill="currentColor"/>
<path d="M16 9.25C16.4142 9.25 16.75 9.58579 16.75 10C16.75 10.4142 16.4142 10.75 16 10.75H8C7.58579 10.75 7.25 10.4142 7.25 10C7.25 9.58579 7.58579 9.25 8 9.25H16Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2H13C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10V14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22H11C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14V10Z" fill="currentColor"/>''',
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
