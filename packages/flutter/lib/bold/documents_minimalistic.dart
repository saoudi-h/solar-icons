// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `documents-minimalistic` icon in the bold style.
class DocumentsMinimalisticBoldIcon extends StatelessWidget {
  /// Creates the `documents-minimalistic` icon in the bold style.
  const DocumentsMinimalisticBoldIcon({
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
    name: 'documents-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.75 2C15.5784 2 16.9924 2.00023 17.8711 2.87891C18.7498 3.75759 18.75 5.17157 18.75 8V16C18.75 18.8284 18.7498 20.2424 17.8711 21.1211C16.9924 21.9998 15.5784 22 12.75 22H10.75C7.92157 22 6.50759 21.9998 5.62891 21.1211C4.75023 20.2424 4.75 18.8284 4.75 16V8C4.75 5.17157 4.75023 3.75759 5.62891 2.87891C6.50759 2.00023 7.92157 2 10.75 2H12.75ZM8.75 16.25C8.33579 16.25 8 16.5858 8 17C8 17.4142 8.33579 17.75 8.75 17.75H11.75C12.1642 17.75 12.5 17.4142 12.5 17C12.5 16.5858 12.1642 16.25 11.75 16.25H8.75ZM8.75 12.25C8.33579 12.25 8 12.5858 8 13C8 13.4142 8.33579 13.75 8.75 13.75H14.75C15.1642 13.75 15.5 13.4142 15.5 13C15.5 12.5858 15.1642 12.25 14.75 12.25H8.75ZM8.75 8.25C8.33579 8.25 8 8.58579 8 9C8 9.41421 8.33579 9.75 8.75 9.75H14.75C15.1642 9.75 15.5 9.41421 15.5 9C15.5 8.58579 15.1642 8.25 14.75 8.25H8.75Z" fill="currentColor"/>
<path d="M1.75 4.25C2.16421 4.25 2.5 4.58579 2.5 5V19C2.5 19.4142 2.16421 19.75 1.75 19.75C1.33579 19.75 1 19.4142 1 19V5C1 4.58579 1.33579 4.25 1.75 4.25Z" fill="currentColor"/>
<path d="M21.75 4.25C22.1642 4.25 22.5 4.58579 22.5 5V19C22.5 19.4142 22.1642 19.75 21.75 19.75C21.3358 19.75 21 19.4142 21 19V5C21 4.58579 21.3358 4.25 21.75 4.25Z" fill="currentColor"/>''',
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
