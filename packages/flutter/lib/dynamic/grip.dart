// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grip` icon in every style.
///
/// Prefer the static widgets (e.g. `GripLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class GripIcon extends StatelessWidget {
  /// Creates the `grip` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const GripIcon({
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

  /// When true, ignores [SolarProvider] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'grip',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.00781 17.5C5.83624 17.5 6.50781 18.1716 6.50781 19C6.50781 19.8284 5.83624 20.5 5.00781 20.5C4.17939 20.5 3.50781 19.8284 3.50781 19C3.50781 18.1716 4.17939 17.5 5.00781 17.5Z" fill="currentColor"/>
<path d="M12.0166 17.5C12.8448 17.5003 13.5166 18.1717 13.5166 19C13.5166 19.8283 12.8448 20.4997 12.0166 20.5C11.1882 20.5 10.5166 19.8284 10.5166 19C10.5166 18.1716 11.1882 17.5 12.0166 17.5Z" fill="currentColor"/>
<path d="M19.0078 17.5C19.8362 17.5 20.5078 18.1716 20.5078 19C20.5078 19.8284 19.8362 20.5 19.0078 20.5C18.1794 20.5 17.5078 19.8284 17.5078 19C17.5078 18.1716 18.1794 17.5 19.0078 17.5Z" fill="currentColor"/>
<path d="M5.00781 10.5C5.83624 10.5 6.50781 11.1716 6.50781 12C6.50781 12.8284 5.83624 13.5 5.00781 13.5C4.17939 13.5 3.50781 12.8284 3.50781 12C3.50781 11.1716 4.17939 10.5 5.00781 10.5Z" fill="currentColor"/>
<path d="M12.0166 10.5C12.8448 10.5003 13.5166 11.1717 13.5166 12C13.5166 12.8283 12.8448 13.4997 12.0166 13.5C11.1882 13.5 10.5166 12.8284 10.5166 12C10.5166 11.1716 11.1882 10.5 12.0166 10.5Z" fill="currentColor"/>
<path d="M19.0078 10.5C19.8362 10.5 20.5078 11.1716 20.5078 12C20.5078 12.8284 19.8362 13.5 19.0078 13.5C18.1794 13.5 17.5078 12.8284 17.5078 12C17.5078 11.1716 18.1794 10.5 19.0078 10.5Z" fill="currentColor"/>
<path d="M4.99219 3.5C5.82061 3.5 6.49219 4.17157 6.49219 5C6.49219 5.82843 5.82061 6.5 4.99219 6.5C4.16376 6.5 3.49219 5.82843 3.49219 5C3.49219 4.17157 4.16376 3.5 4.99219 3.5Z" fill="currentColor"/>
<path d="M12 3.5C12.8284 3.5 13.5 4.17157 13.5 5C13.5 5.82843 12.8284 6.5 12 6.5C11.1716 6.5 10.5 5.82843 10.5 5C10.5 4.17157 11.1716 3.5 12 3.5Z" fill="currentColor"/>
<path d="M18.9922 3.5C19.8206 3.5 20.4922 4.17157 20.4922 5C20.4922 5.82843 19.8206 6.5 18.9922 6.5C18.1638 6.5 17.4922 5.82843 17.4922 5C17.4922 4.17157 18.1638 3.5 18.9922 3.5Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'grip',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M5.00781 17.5C5.83624 17.5 6.50781 18.1716 6.50781 19C6.50781 19.8284 5.83624 20.5 5.00781 20.5C4.17939 20.5 3.50781 19.8284 3.50781 19C3.50781 18.1716 4.17939 17.5 5.00781 17.5Z" fill="currentColor"/>
<path d="M12.0156 17.5C12.8441 17.5 13.5156 18.1716 13.5156 19C13.5156 19.8284 12.8441 20.5 12.0156 20.5C11.1872 20.5 10.5156 19.8284 10.5156 19C10.5156 18.1716 11.1872 17.5 12.0156 17.5Z" fill="currentColor"/>
<path d="M19.0078 17.5C19.8362 17.5 20.5078 18.1716 20.5078 19C20.5078 19.8284 19.8362 20.5 19.0078 20.5C18.1794 20.5 17.5078 19.8284 17.5078 19C17.5078 18.1716 18.1794 17.5 19.0078 17.5Z" fill="currentColor"/>
<path d="M5.00781 10.5C5.83624 10.5 6.50781 11.1716 6.50781 12C6.50781 12.8284 5.83624 13.5 5.00781 13.5C4.17939 13.5 3.50781 12.8284 3.50781 12C3.50781 11.1716 4.17939 10.5 5.00781 10.5Z" fill="currentColor"/>
<path d="M19.0078 10.5C19.8362 10.5 20.5078 11.1716 20.5078 12C20.5078 12.8284 19.8362 13.5 19.0078 13.5C18.1794 13.5 17.5078 12.8284 17.5078 12C17.5078 11.1716 18.1794 10.5 19.0078 10.5Z" fill="currentColor"/>
<path d="M4.99219 3.5C5.82061 3.5 6.49219 4.17157 6.49219 5C6.49219 5.82843 5.82061 6.5 4.99219 6.5C4.16376 6.5 3.49219 5.82843 3.49219 5C3.49219 4.17157 4.16376 3.5 4.99219 3.5Z" fill="currentColor"/>
<path d="M12 3.5C12.8284 3.5 13.5 4.17157 13.5 5C13.5 5.82843 12.8284 6.5 12 6.5C11.1716 6.5 10.5 5.82843 10.5 5C10.5 4.17157 11.1716 3.5 12 3.5Z" fill="currentColor"/>
<path d="M18.9922 3.5C19.8206 3.5 20.4922 4.17157 20.4922 5C20.4922 5.82843 19.8206 6.5 18.9922 6.5C18.1638 6.5 17.4922 5.82843 17.4922 5C17.4922 4.17157 18.1638 3.5 18.9922 3.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.0156 10.5C12.8441 10.5 13.5156 11.1716 13.5156 12C13.5156 12.8284 12.8441 13.5 12.0156 13.5C11.1872 13.5 10.5156 12.8284 10.5156 12C10.5156 11.1716 11.1872 10.5 12.0156 10.5Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'grip',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12.0161" cy="19" r="0.75" transform="rotate(90 12.0161 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12.0161" cy="12" r="0.75" transform="rotate(90 12.0161 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="5" r="0.75" transform="rotate(90 12 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="5.00781" cy="19" r="0.75" transform="rotate(90 5.00781 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="5.00781" cy="12" r="0.75" transform="rotate(90 5.00781 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="4.99219" cy="5" r="0.75" transform="rotate(90 4.99219 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19.0078" cy="19" r="0.75" transform="rotate(90 19.0078 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19.0078" cy="12" r="0.75" transform="rotate(90 19.0078 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="18.9922" cy="5" r="0.75" transform="rotate(90 18.9922 5)" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'grip',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12.0161" cy="19" r="0.75" transform="rotate(90 12.0161 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12.0161" cy="12" r="0.75" transform="rotate(90 12.0161 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="5" r="0.75" transform="rotate(90 12 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="5.00781" cy="19" r="0.75" transform="rotate(90 5.00781 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="5.00781" cy="12" r="0.75" transform="rotate(90 5.00781 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="4.99219" cy="5" r="0.75" transform="rotate(90 4.99219 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19.0078" cy="19" r="0.75" transform="rotate(90 19.0078 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19.0078" cy="12" r="0.75" transform="rotate(90 19.0078 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="18.9922" cy="5" r="0.75" transform="rotate(90 18.9922 5)" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'grip',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12.0161" cy="19" r="0.75" transform="rotate(90 12.0161 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="5" r="0.75" transform="rotate(90 12 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="5.00781" cy="19" r="0.75" transform="rotate(90 5.00781 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="5.00781" cy="12" r="0.75" transform="rotate(90 5.00781 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="4.99219" cy="5" r="0.75" transform="rotate(90 4.99219 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19.0078" cy="19" r="0.75" transform="rotate(90 19.0078 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19.0078" cy="12" r="0.75" transform="rotate(90 19.0078 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="18.9922" cy="5" r="0.75" transform="rotate(90 18.9922 5)" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12.0161" cy="12" r="0.75" transform="rotate(90 12.0161 12)" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'grip',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M5.00781 17.5C5.83624 17.5 6.50781 18.1716 6.50781 19C6.50781 19.8284 5.83624 20.5 5.00781 20.5C4.17939 20.5 3.50781 19.8284 3.50781 19C3.50781 18.1716 4.17939 17.5 5.00781 17.5Z" fill="currentColor"/>
<path d="M12.0166 17.5C12.8448 17.5003 13.5166 18.1717 13.5166 19C13.5166 19.8283 12.8448 20.4997 12.0166 20.5C11.1882 20.5 10.5166 19.8284 10.5166 19C10.5166 18.1716 11.1882 17.5 12.0166 17.5Z" fill="currentColor"/>
<path d="M19.0078 17.5C19.8362 17.5 20.5078 18.1716 20.5078 19C20.5078 19.8284 19.8362 20.5 19.0078 20.5C18.1794 20.5 17.5078 19.8284 17.5078 19C17.5078 18.1716 18.1794 17.5 19.0078 17.5Z" fill="currentColor"/>
<path d="M5.00781 10.5C5.83624 10.5 6.50781 11.1716 6.50781 12C6.50781 12.8284 5.83624 13.5 5.00781 13.5C4.17939 13.5 3.50781 12.8284 3.50781 12C3.50781 11.1716 4.17939 10.5 5.00781 10.5Z" fill="currentColor"/>
<path d="M12.0166 10.5C12.8448 10.5003 13.5166 11.1717 13.5166 12C13.5166 12.8283 12.8448 13.4997 12.0166 13.5C11.1882 13.5 10.5166 12.8284 10.5166 12C10.5166 11.1716 11.1882 10.5 12.0166 10.5Z" fill="currentColor"/>
<path d="M19.0078 10.5C19.8362 10.5 20.5078 11.1716 20.5078 12C20.5078 12.8284 19.8362 13.5 19.0078 13.5C18.1794 13.5 17.5078 12.8284 17.5078 12C17.5078 11.1716 18.1794 10.5 19.0078 10.5Z" fill="currentColor"/>
<path d="M4.99219 3.5C5.82061 3.5 6.49219 4.17157 6.49219 5C6.49219 5.82843 5.82061 6.5 4.99219 6.5C4.16376 6.5 3.49219 5.82843 3.49219 5C3.49219 4.17157 4.16376 3.5 4.99219 3.5Z" fill="currentColor"/>
<path d="M12 3.5C12.8284 3.5 13.5 4.17157 13.5 5C13.5 5.82843 12.8284 6.5 12 6.5C11.1716 6.5 10.5 5.82843 10.5 5C10.5 4.17157 11.1716 3.5 12 3.5Z" fill="currentColor"/>
<path d="M18.9922 3.5C19.8206 3.5 20.4922 4.17157 20.4922 5C20.4922 5.82843 19.8206 6.5 18.9922 6.5C18.1638 6.5 17.4922 5.82843 17.4922 5C17.4922 4.17157 18.1638 3.5 18.9922 3.5Z" fill="currentColor"/>''',
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
