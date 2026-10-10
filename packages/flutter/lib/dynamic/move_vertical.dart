// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `move-vertical` icon in every style.
///
/// Prefer the static widgets (e.g. `MoveVerticalLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class MoveVerticalIcon extends StatelessWidget {
  /// Creates the `move-vertical` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const MoveVerticalIcon({
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
    name: 'move-vertical',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16.6721 17.4714C16.9648 17.7643 16.9649 18.2391 16.6721 18.532L12.5305 22.6736C12.2377 22.9661 11.7628 22.9662 11.47 22.6736L7.32839 18.532C7.03561 18.2392 7.03583 17.7644 7.32839 17.4714C7.62129 17.1786 8.09607 17.1786 8.38894 17.4714L11.2503 20.3328L11.2503 3.66968L8.38894 6.53101C8.09607 6.82351 7.62118 6.82362 7.32839 6.53101C7.03561 6.23822 7.03583 5.76338 7.32839 5.47046L11.47 1.32886C11.6106 1.18826 11.8014 1.1082 12.0003 1.10815C12.1992 1.10816 12.3899 1.18821 12.5305 1.32886L16.6721 5.47046C16.9649 5.76336 16.965 6.23816 16.6721 6.53101C16.3793 6.82351 15.9044 6.82364 15.6116 6.53101L12.7503 3.66968L12.7503 20.3328L15.6116 17.4714C15.9045 17.1786 16.3793 17.1786 16.6721 17.4714Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'move-vertical',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.672 5.46973C16.9647 5.76263 16.9648 6.23743 16.672 6.53027C16.3791 6.82278 15.9043 6.8229 15.6115 6.53027L12.0001 2.91895L8.38881 6.53027C8.09594 6.82278 7.62105 6.82289 7.32826 6.53027C7.03548 6.23749 7.0357 5.76265 7.32826 5.46973L11.4699 1.32812C11.6105 1.18752 11.8013 1.10747 12.0001 1.10742C12.199 1.10743 12.3898 1.18748 12.5304 1.32812L16.672 5.46973Z" fill="currentColor"/>
<path d="M16.672 17.4707C16.9647 17.7636 16.9648 18.2384 16.672 18.5312L12.5304 22.6729C12.2375 22.9654 11.7627 22.9655 11.4699 22.6729L7.32826 18.5312C7.03548 18.2385 7.0357 17.7636 7.32826 17.4707C7.62115 17.1778 8.09592 17.1778 8.38881 17.4707L12.0001 21.082L15.6115 17.4707C15.9044 17.1778 16.3791 17.1778 16.672 17.4707Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.75 22.1426C12.7497 22.5565 12.414 22.8925 12 22.8926C11.5859 22.8926 11.2503 22.5566 11.25 22.1426L11.25 1.8584C11.25 1.44419 11.5858 1.10742 12 1.10742C12.4142 1.10742 12.75 1.44419 12.75 1.8584L12.75 22.1426Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'move-vertical',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 22.1421L12 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 8L12 1.85791" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.1416 5.99954L12 1.85791L7.85835 5.99954" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.1416 18.0005L12 22.1421L7.85835 18.0005" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'move-vertical',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16.1416 5.99954L12 1.85791L7.85835 5.99954M12 1.85791L11.9999 22.1422M7.85827 18.0005L11.9999 22.1422L16.1415 18.0005" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'move-vertical',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M16.1416 5.99954L12 1.85791L7.85835 5.99954" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.1416 18.0005L12 22.1421L7.85835 18.0005" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.9999 22.1422L12 1.85791" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'move-vertical',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M16.6721 17.4714C16.9648 17.7643 16.9649 18.2391 16.6721 18.532L12.5305 22.6736C12.2377 22.9661 11.7628 22.9662 11.47 22.6736L7.32839 18.532C7.03561 18.2392 7.03583 17.7644 7.32839 17.4714C7.62129 17.1786 8.09607 17.1786 8.38894 17.4714L11.2503 20.3328L11.2503 3.66968L8.38894 6.53101C8.09607 6.82351 7.62118 6.82362 7.32839 6.53101C7.03561 6.23822 7.03583 5.76338 7.32839 5.47046L11.47 1.32886C11.6106 1.18826 11.8014 1.1082 12.0003 1.10815C12.1992 1.10816 12.3899 1.18821 12.5305 1.32886L16.6721 5.47046C16.9649 5.76336 16.965 6.23816 16.6721 6.53101C16.3793 6.82351 15.9044 6.82364 15.6116 6.53101L12.7503 3.66968L12.7503 20.3328L15.6116 17.4714C15.9045 17.1786 16.3793 17.1786 16.6721 17.4714Z" fill="currentColor"/>''',
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
