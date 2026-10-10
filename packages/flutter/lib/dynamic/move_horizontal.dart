// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `move-horizontal` icon in every style.
///
/// Prefer the static widgets (e.g. `MoveHorizontalLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class MoveHorizontalIcon extends StatelessWidget {
  /// Creates the `move-horizontal` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const MoveHorizontalIcon({
    super.key,
    this.style,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw. Falls back to [SolarProvider] (unless [isolated]), then [SolarIconStyle.linear].
  final SolarIconStyle? style;

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
    name: 'move-horizontal',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17.4707 7.32823C17.7636 7.03552 18.2384 7.03546 18.5312 7.32823L22.6729 11.4698C22.9654 11.7627 22.9655 12.2376 22.6729 12.5304L18.5312 16.672C18.2385 16.9648 17.7636 16.9645 17.4707 16.672C17.1779 16.3791 17.1778 15.9043 17.4707 15.6114L20.332 12.7501H3.66895L6.53027 15.6114C6.82278 15.9043 6.82289 16.3792 6.53027 16.672C6.23749 16.9648 5.76265 16.9645 5.46973 16.672L1.32812 12.5304C1.18752 12.3898 1.10747 12.1989 1.10742 12.0001C1.10743 11.8012 1.18748 11.6105 1.32812 11.4698L5.46973 7.32823C5.76263 7.03549 6.23743 7.0354 6.53027 7.32823C6.82278 7.6211 6.8229 8.09598 6.53027 8.38878L3.66895 11.2501H20.332L17.4707 8.38878C17.1779 8.09588 17.1778 7.6211 17.4707 7.32823Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'move-horizontal',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M5.46973 7.32824C5.76263 7.0355 6.23743 7.03541 6.53027 7.32824C6.82278 7.6211 6.8229 8.09599 6.53027 8.38878L2.91895 12.0001L6.53027 15.6114C6.82278 15.9043 6.82289 16.3792 6.53027 16.672C6.23749 16.9648 5.76265 16.9645 5.46973 16.672L1.32812 12.5304C1.18752 12.3898 1.10747 12.199 1.10742 12.0001C1.10743 11.8012 1.18748 11.6105 1.32812 11.4698L5.46973 7.32824Z" fill="currentColor"/>
<path d="M17.4707 7.32824C17.7636 7.0355 18.2384 7.03539 18.5312 7.32824L22.6729 11.4698C22.9654 11.7627 22.9655 12.2376 22.6729 12.5304L18.5312 16.672C18.2385 16.9648 17.7636 16.9645 17.4707 16.672C17.1778 16.3791 17.1778 15.9043 17.4707 15.6114L21.082 12.0001L17.4707 8.38878C17.1778 8.09589 17.1778 7.62113 17.4707 7.32824Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22.1426 11.25C22.5565 11.2503 22.8925 11.586 22.8926 12C22.8926 12.4141 22.5566 12.7497 22.1426 12.75H1.8584C1.44419 12.75 1.10742 12.4142 1.10742 12C1.10742 11.5858 1.44419 11.25 1.8584 11.25H22.1426Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'move-horizontal',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22.1421 12L12 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 12L1.85791 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.99954 7.8584L1.85791 12L5.99954 16.1416" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.0005 7.8584L22.1421 12L18.0005 16.1416" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'move-horizontal',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M5.99954 7.8584L1.85791 12L5.99954 16.1416M1.85791 12L22.1422 12.0001M18.0005 16.1417L22.1422 12.0001L18.0005 7.85848" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'move-horizontal',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5.99954 7.8584L1.85791 12L5.99954 16.1416" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.0005 7.8584L22.1421 12L18.0005 16.1416" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22.1422 12.0001L1.85791 12" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'move-horizontal',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M17.4707 7.32823C17.7636 7.03552 18.2384 7.03546 18.5312 7.32823L22.6729 11.4698C22.9654 11.7627 22.9655 12.2376 22.6729 12.5304L18.5312 16.672C18.2385 16.9648 17.7636 16.9645 17.4707 16.672C17.1779 16.3791 17.1778 15.9043 17.4707 15.6114L20.332 12.7501H3.66895L6.53027 15.6114C6.82278 15.9043 6.82289 16.3792 6.53027 16.672C6.23749 16.9648 5.76265 16.9645 5.46973 16.672L1.32812 12.5304C1.18752 12.3898 1.10747 12.1989 1.10742 12.0001C1.10743 11.8012 1.18748 11.6105 1.32812 11.4698L5.46973 7.32823C5.76263 7.03549 6.23743 7.0354 6.53027 7.32823C6.82278 7.6211 6.8229 8.09598 6.53027 8.38878L3.66895 11.2501H20.332L17.4707 8.38878C17.1779 8.09588 17.1778 7.6211 17.4707 7.32823Z" fill="currentColor"/>''',
  );

  @override
  Widget build(BuildContext context) {
    final SolarIconStyle fallback = isolated
        ? SolarIconStyle.linear
        : SolarProvider.maybeOf(context)?.style ?? SolarIconStyle.linear;
    final SolarIconData data = switch (style ?? fallback) {
      SolarIconStyle.bold => bold,
      SolarIconStyle.boldDuotone => boldDuotone,
      SolarIconStyle.broken => broken,
      SolarIconStyle.linear => linear,
      SolarIconStyle.lineDuotone => lineDuotone,
      SolarIconStyle.outline => outline,
    };
    return SolarIcon(
      data,
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
