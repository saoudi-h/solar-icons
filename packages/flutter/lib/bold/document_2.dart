// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `document-2` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00IDVWMTlDNCAyMC42NTY5IDUuMzQzMTUgMjIgNyAyMkgxN0MxOC42NTY5IDIyIDIwIDIwLjY1NjkgMjAgMTlWOUMyMCA3LjM0MzE1IDE4LjY1NjkgNiAxNyA2SDVDNC40NDc3MiA2IDQgNS41NTIyOCA0IDVaTTcuMjUgMTJDNy4yNSAxMS41ODU4IDcuNTg1NzkgMTEuMjUgOCAxMS4yNUgxNkMxNi40MTQyIDExLjI1IDE2Ljc1IDExLjU4NTggMTYuNzUgMTJDMTYuNzUgMTIuNDE0MiAxNi40MTQyIDEyLjc1IDE2IDEyLjc1SDhDNy41ODU3OSAxMi43NSA3LjI1IDEyLjQxNDIgNy4yNSAxMlpNNy4yNSAxNS41QzcuMjUgMTUuMDg1OCA3LjU4NTc5IDE0Ljc1IDggMTQuNzVIMTMuNUMxMy45MTQyIDE0Ljc1IDE0LjI1IDE1LjA4NTggMTQuMjUgMTUuNUMxNC4yNSAxNS45MTQyIDEzLjkxNDIgMTYuMjUgMTMuNSAxNi4yNUg4QzcuNTg1NzkgMTYuMjUgNy4yNSAxNS45MTQyIDcuMjUgMTUuNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTQuNDA4NzkgNC4wODcxQzQuNzU3MjcgNC4yNDMzOCA1IDQuNTkzMzQgNSA1SDE3QzE3LjM0NTMgNSAxNy42ODA0IDUuMDQzNzUgMTggNS4xMjYwMlY0LjMwNjA0QzE4IDMuMDg4OTQgMTYuOTIyIDIuMTU0MDIgMTUuNzE3MiAyLjMyNjE0TDQuOTE5NTkgMy44Njg2NUM0LjcyNzEyIDMuODk2MTUgNC41NTI3MSAzLjk3Mzc0IDQuNDA4NzkgNC4wODcxWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class Document2BoldIcon extends StatelessWidget {
  /// Creates the `document-2` icon in the bold style.
  const Document2BoldIcon({
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
    name: 'document-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4 5V19C4 20.6569 5.34315 22 7 22H17C18.6569 22 20 20.6569 20 19V9C20 7.34315 18.6569 6 17 6H5C4.44772 6 4 5.55228 4 5ZM7.25 12C7.25 11.5858 7.58579 11.25 8 11.25H16C16.4142 11.25 16.75 11.5858 16.75 12C16.75 12.4142 16.4142 12.75 16 12.75H8C7.58579 12.75 7.25 12.4142 7.25 12ZM7.25 15.5C7.25 15.0858 7.58579 14.75 8 14.75H13.5C13.9142 14.75 14.25 15.0858 14.25 15.5C14.25 15.9142 13.9142 16.25 13.5 16.25H8C7.58579 16.25 7.25 15.9142 7.25 15.5Z" fill="currentColor"/>
<path d="M4.40879 4.0871C4.75727 4.24338 5 4.59334 5 5H17C17.3453 5 17.6804 5.04375 18 5.12602V4.30604C18 3.08894 16.922 2.15402 15.7172 2.32614L4.91959 3.86865C4.72712 3.89615 4.55271 3.97374 4.40879 4.0871Z" fill="currentColor"/>''',
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
