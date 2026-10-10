// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `stop-circle` icon in every style.
///
/// Prefer the static widgets (e.g. `StopCircleLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class StopCircleIcon extends StatelessWidget {
  /// Creates the `stop-circle` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const StopCircleIcon({
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
    name: 'stop-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22ZM8.58579 8.58579C8 9.17157 8 10.1144 8 12C8 13.8856 8 14.8284 8.58579 15.4142C9.17157 16 10.1144 16 12 16C13.8856 16 14.8284 16 15.4142 15.4142C16 14.8284 16 13.8856 16 12C16 10.1144 16 9.17157 15.4142 8.58579C14.8284 8 13.8856 8 12 8C10.1144 8 9.17157 8 8.58579 8.58579Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'stop-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.58579 8.58579C8 9.17157 8 10.1144 8 12C8 13.8856 8 14.8284 8.58579 15.4142C9.17157 16 10.1144 16 12 16C13.8856 16 14.8284 16 15.4142 15.4142C16 14.8284 16 13.8856 16 12C16 10.1144 16 9.17157 15.4142 8.58579C14.8284 8 13.8856 8 12 8C10.1144 8 9.17157 8 8.58579 8.58579Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'stop-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15.7076 9C15.6314 8.84322 15.5353 8.70688 15.4142 8.58579C14.8284 8 13.8856 8 12 8C10.1144 8 9.17157 8 8.58579 8.58579C8 9.17157 8 10.1144 8 12C8 13.8856 8 14.8284 8.58579 15.4142C9.17157 16 10.1144 16 12 16C13.8856 16 14.8284 16 15.4142 15.4142C15.8858 14.9427 15.9777 14.2398 15.9957 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'stop-circle',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 12C8 10.1144 8 9.17157 8.58579 8.58579C9.17157 8 10.1144 8 12 8C13.8856 8 14.8284 8 15.4142 8.58579C16 9.17157 16 10.1144 16 12C16 13.8856 16 14.8284 15.4142 15.4142C14.8284 16 13.8856 16 12 16C10.1144 16 9.17157 16 8.58579 15.4142C8 14.8284 8 13.8856 8 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'stop-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 12C8 10.1144 8 9.17157 8.58579 8.58579C9.17157 8 10.1144 8 12 8C13.8856 8 14.8284 8 15.4142 8.58579C16 9.17157 16 10.1144 16 12C16 13.8856 16 14.8284 15.4142 15.4142C14.8284 16 13.8856 16 12 16C10.1144 16 9.17157 16 8.58579 15.4142C8 14.8284 8 13.8856 8 12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'stop-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM11.948 7.25H12.052C12.9505 7.24997 13.6997 7.24995 14.2945 7.32991C14.9223 7.41432 15.4891 7.59999 15.9445 8.05546C16.4 8.51093 16.5857 9.07773 16.6701 9.70552C16.7501 10.3003 16.75 11.0495 16.75 11.948V12.052C16.75 12.9505 16.7501 13.6997 16.6701 14.2945C16.5857 14.9223 16.4 15.4891 15.9445 15.9445C15.4891 16.4 14.9223 16.5857 14.2945 16.6701C13.6997 16.7501 12.9505 16.75 12.052 16.75H11.948C11.0495 16.75 10.3003 16.7501 9.70552 16.6701C9.07773 16.5857 8.51093 16.4 8.05546 15.9445C7.59999 15.4891 7.41432 14.9223 7.32991 14.2945C7.24995 13.6997 7.24997 12.9505 7.25 12.052V11.948C7.24997 11.0495 7.24995 10.3003 7.32991 9.70552C7.41432 9.07773 7.59999 8.51093 8.05546 8.05546C8.51093 7.59999 9.07773 7.41432 9.70552 7.32991C10.3003 7.24995 11.0495 7.24997 11.948 7.25ZM9.90539 8.81654C9.44393 8.87858 9.24643 8.9858 9.11612 9.11612C8.9858 9.24643 8.87858 9.44393 8.81654 9.90539C8.75159 10.3884 8.75 11.036 8.75 12C8.75 12.964 8.75159 13.6116 8.81654 14.0946C8.87858 14.5561 8.9858 14.7536 9.11612 14.8839C9.24643 15.0142 9.44393 15.1214 9.90539 15.1835C10.3884 15.2484 11.036 15.25 12 15.25C12.964 15.25 13.6116 15.2484 14.0946 15.1835C14.5561 15.1214 14.7536 15.0142 14.8839 14.8839C15.0142 14.7536 15.1214 14.5561 15.1835 14.0946C15.2484 13.6116 15.25 12.964 15.25 12C15.25 11.036 15.2484 10.3884 15.1835 9.90539C15.1214 9.44393 15.0142 9.24643 14.8839 9.11612C14.7536 8.9858 14.5561 8.87858 14.0946 8.81654C13.6116 8.75159 12.964 8.75 12 8.75C11.036 8.75 10.3884 8.75159 9.90539 8.81654Z" fill="currentColor"/>''',
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
