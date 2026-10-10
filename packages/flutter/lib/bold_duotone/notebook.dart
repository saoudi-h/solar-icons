// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `notebook` icon in the boldDuotone style.
class NotebookBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `notebook` icon in the boldDuotone style.
  const NotebookBoldDuotoneIcon({
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
    name: 'notebook',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.75 22.0112H7.25V2.01221H8.75V22.0112Z" fill="currentColor"/>
<path d="M4 15.2505C4.41421 15.2505 4.75 15.5863 4.75 16.0005C4.74974 16.4145 4.41405 16.7505 4 16.7505H2C1.58595 16.7505 1.25026 16.4145 1.25 16.0005C1.25 15.5863 1.58579 15.2505 2 15.2505H4Z" fill="currentColor"/>
<path d="M4 11.2505C4.41421 11.2505 4.75 11.5863 4.75 12.0005C4.74974 12.4145 4.41405 12.7505 4 12.7505H2C1.58595 12.7505 1.25026 12.4145 1.25 12.0005C1.25 11.5863 1.58579 11.2505 2 11.2505H4Z" fill="currentColor"/>
<path d="M16.5 9.25049C16.9142 9.25049 17.25 9.58627 17.25 10.0005C17.2497 10.4145 16.9141 10.7505 16.5 10.7505H11.5C11.0859 10.7505 10.7503 10.4145 10.75 10.0005C10.75 9.58627 11.0858 9.25049 11.5 9.25049H16.5Z" fill="currentColor"/>
<path d="M4 7.25049C4.41421 7.25049 4.75 7.58627 4.75 8.00049C4.74974 8.41448 4.41405 8.75049 4 8.75049H2C1.58595 8.75049 1.25026 8.41448 1.25 8.00049C1.25 7.58627 1.58579 7.25049 2 7.25049H4Z" fill="currentColor"/>
<path d="M16.5 5.75049C16.9142 5.75049 17.25 6.08627 17.25 6.50049C17.2497 6.91448 16.9141 7.25049 16.5 7.25049H11.5C11.0859 7.25049 10.7503 6.91448 10.75 6.50049C10.75 6.08627 11.0858 5.75049 11.5 5.75049H16.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 8C3 5.17157 3 3.75736 3.87868 2.87868C4.75736 2 6.17157 2 9 2H15C17.8284 2 19.2426 2 20.1213 2.87868C21 3.75736 21 5.17157 21 8V16C21 18.8284 21 20.2426 20.1213 21.1213C19.2426 22 17.8284 22 15 22H9C6.17157 22 4.75736 22 3.87868 21.1213C3 20.2426 3 18.8284 3 16V8Z" fill="currentColor"/>''',
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
