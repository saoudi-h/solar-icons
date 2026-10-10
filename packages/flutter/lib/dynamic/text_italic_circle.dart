// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `text-italic-circle` icon in every style.
///
/// Prefer the static widgets (e.g. `TextItalicCircleLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class TextItalicCircleIcon extends StatelessWidget {
  /// Creates the `text-italic-circle` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const TextItalicCircleIcon({
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
    name: 'text-italic-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2ZM10.6667 6.25H13.3162C13.3273 6.24975 13.3384 6.24975 13.3495 6.25H16C16.4142 6.25 16.75 6.58579 16.75 7C16.75 7.41421 16.4142 7.75 16 7.75H13.9095L11.6429 16.25H13.3333C13.7475 16.25 14.0833 16.5858 14.0833 17C14.0833 17.4142 13.7475 17.75 13.3333 17.75H10.6838C10.6727 17.7502 10.6616 17.7502 10.6505 17.75H8C7.58579 17.75 7.25 17.4142 7.25 17C7.25 16.5858 7.58579 16.25 8 16.25H10.0905L12.3571 7.75H10.6667C10.2525 7.75 9.91667 7.41421 9.91667 7C9.91667 6.58579 10.2525 6.25 10.6667 6.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'text-italic-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.6667 6.24994H13.3162C13.3273 6.24969 13.3384 6.24969 13.3495 6.24994H16C16.4142 6.24994 16.75 6.58573 16.75 6.99994C16.75 7.41416 16.4142 7.74994 16 7.74994H13.9095L11.6429 16.2499H13.3333C13.7475 16.2499 14.0833 16.5857 14.0833 16.9999C14.0833 17.4142 13.7475 17.7499 13.3333 17.7499H10.6838C10.6727 17.7502 10.6616 17.7502 10.6505 17.7499H8C7.58579 17.7499 7.25 17.4142 7.25 16.9999C7.25 16.5857 7.58579 16.2499 8 16.2499H10.0905L12.3571 7.74994H10.6667C10.2525 7.74994 9.91667 7.41416 9.91667 6.99994C9.91667 6.58573 10.2525 6.24994 10.6667 6.24994Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'text-italic-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 17H13.3333M10.6667 7H16M10.6667 17L13.3333 7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'text-italic-circle',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8 17H13.3333M10.6667 7H16M10.6667 17L13.3333 7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'text-italic-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 17H13.3333M10.6667 7H16M10.6667 17L13.3333 7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'text-italic-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M10.6667 6.25H13.3162C13.3273 6.24975 13.3384 6.24975 13.3495 6.25H16C16.4142 6.25 16.75 6.58579 16.75 7C16.75 7.41421 16.4142 7.75 16 7.75H13.9095L11.6429 16.25H13.3333C13.7475 16.25 14.0833 16.5858 14.0833 17C14.0833 17.4142 13.7475 17.75 13.3333 17.75H10.6838C10.6727 17.7502 10.6616 17.7502 10.6505 17.75H8C7.58579 17.75 7.25 17.4142 7.25 17C7.25 16.5858 7.58579 16.25 8 16.25H10.0905L12.3571 7.75H10.6667C10.2525 7.75 9.91667 7.41421 9.91667 7C9.91667 6.58579 10.2525 6.25 10.6667 6.25Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 6.06294 17.9371 1.25 12 1.25ZM2.75 12C2.75 6.89137 6.89137 2.75 12 2.75C17.1086 2.75 21.25 6.89137 21.25 12C21.25 17.1086 17.1086 21.25 12 21.25C6.89137 21.25 2.75 17.1086 2.75 12Z" fill="currentColor"/>''',
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
