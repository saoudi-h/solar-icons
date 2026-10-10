// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `add` icon.
class AddIcon extends StatelessWidget {
  /// Creates the `add` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const AddIcon({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

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

  /// When true, ignores [SolarTheme] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'add',
    style: SolarIconStyle.bold,
    body: r'''<path d="M12.0205 3.25C12.4347 3.25005 12.7705 3.58582 12.7705 4V11.25H20C20.4142 11.25 20.75 11.5858 20.75 12C20.75 12.4142 20.4142 12.75 20 12.75H12.7705V20C12.7705 20.4142 12.4347 20.75 12.0205 20.75C11.6063 20.75 11.2705 20.4142 11.2705 20V12.75H4C3.58579 12.75 3.25 12.4142 3.25 12C3.25 11.5858 3.58579 11.25 4 11.25H11.2705V4C11.2705 3.58579 11.6063 3.25 12.0205 3.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'add',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M20 11.25C20.4142 11.25 20.75 11.5858 20.75 12C20.75 12.4142 20.4142 12.75 20 12.75L4 12.75C3.58579 12.75 3.25 12.4142 3.25 12C3.25 11.5858 3.58579 11.25 4 11.25L20 11.25Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" d="M12.7705 20C12.7705 20.4142 12.4347 20.75 12.0205 20.75C11.6063 20.75 11.2705 20.4142 11.2705 20L11.2705 4C11.2705 3.58579 11.6063 3.25 12.0205 3.25C12.4347 3.25005 12.7705 3.58582 12.7705 4L12.7705 20Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'add',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4 12L12 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 12L20 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0204 4L12.0205 20.0003" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'add',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 12L20 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0204 4L12.0205 20.0003" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'add',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M4 12L20 12" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<path opacity="0.5" d="M12.0204 4L12.0205 20.0003" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'add',
    style: SolarIconStyle.outline,
    body: r'''<path d="M12.0205 3.25C12.4347 3.25005 12.7705 3.58582 12.7705 4V11.25H20C20.4142 11.25 20.75 11.5858 20.75 12C20.75 12.4142 20.4142 12.75 20 12.75H12.7705V20C12.7705 20.4142 12.4347 20.75 12.0205 20.75C11.6063 20.75 11.2705 20.4142 11.2705 20V12.75H4C3.58579 12.75 3.25 12.4142 3.25 12C3.25 11.5858 3.58579 11.25 4 11.25H11.2705V4C11.2705 3.58579 11.6063 3.25 12.0205 3.25Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

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
