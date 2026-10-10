// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `archive` icon in the bold style.
class ArchiveBoldIcon extends StatelessWidget {
  /// Creates the `archive` icon in the bold style.
  const ArchiveBoldIcon({
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
    name: 'archive',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M20.5 13C20.5 16.7712 20.4997 18.6566 19.3281 19.8281C18.1565 20.9996 16.2712 21 12.5 21H11.5C7.72882 21 5.84345 20.9996 4.67188 19.8281C3.50031 18.6566 3.5 16.7712 3.5 13V8.49805C3.64472 8.50004 3.78966 8.50006 3.93066 8.5H20.0693C20.2103 8.50006 20.3553 8.50004 20.5 8.49805V13ZM10.5 10.5C10.0341 10.5 9.80096 10.5001 9.61719 10.5762C9.37225 10.6777 9.17765 10.8722 9.07617 11.1172C9.00005 11.301 9 11.5341 9 12C9 12.4659 9.00006 12.6991 9.07617 12.8828C9.17768 13.1277 9.37228 13.3224 9.61719 13.4238C9.80096 13.4999 10.0341 13.5 10.5 13.5H13.5C13.9659 13.5 14.199 13.4999 14.3828 13.4238C14.6277 13.3224 14.8223 13.1277 14.9238 12.8828C14.9999 12.6991 15 12.4659 15 12C15 11.5341 14.9999 11.301 14.9238 11.1172C14.8224 10.8722 14.6278 10.6777 14.3828 10.5762C14.199 10.5001 13.9659 10.5 13.5 10.5H10.5Z" fill="currentColor"/>
<path d="M20 3C20.9428 3 21.4141 3.00008 21.707 3.29297C21.9999 3.58586 22 4.05719 22 5C22 5.94281 21.9999 6.41414 21.707 6.70703C21.4141 6.99992 20.9428 7 20 7H4C3.05719 7 2.58586 6.99992 2.29297 6.70703C2.00008 6.41414 2 5.94281 2 5C2 4.05719 2.00008 3.58586 2.29297 3.29297C2.58586 3.00008 3.05719 3 4 3H20Z" fill="currentColor"/>''',
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
