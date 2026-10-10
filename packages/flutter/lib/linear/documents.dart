// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `documents` icon in the linear style.
class DocumentsLinearIcon extends StatelessWidget {
  /// Creates the `documents` icon in the linear style.
  const DocumentsLinearIcon({
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
    name: 'documents',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M5 8C5 6.18448 5 4.95163 5.23238 4.06909C5.36203 3.5767 5.56401 3.19335 5.87868 2.87868C6.75736 2 8.17157 2 11 2H13C15.8284 2 17.2426 2 18.1213 2.87868C19 3.75736 19 5.17157 19 8V16C19 18.8284 19 20.2426 18.1213 21.1213C17.2426 22 15.8284 22 13 22H11C8.17157 22 6.75736 22 5.87868 21.1213C5.5639 20.8065 5.36188 20.423 5.23224 19.9304C5 19.0479 5 17.8152 5 16V8Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.23224 19.9301L5 19.9239C4.02491 19.828 3.36857 19.6112 2.87868 19.1213C2 18.2426 2 16.8284 2 14V10C2 7.17158 2 5.75736 2.87868 4.87868C3.36857 4.3888 4.02491 4.17204 5 4.07612C5.0722 4.07367 5.14995 4.07122 5.23238 4.06885" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.7678 19.9301L19 19.9239C19.9751 19.828 20.6314 19.6112 21.1213 19.1213C22 18.2426 22 16.8284 22 14V10C22 7.17158 22 5.75736 21.1213 4.87868C20.6314 4.3888 19.9751 4.17204 19 4.07612C18.9278 4.07367 18.85 4.07122 18.7676 4.06885" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 13H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 9H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 17H12" stroke="currentColor" stroke-linecap="round"/>''',
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
