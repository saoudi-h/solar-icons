// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `close` icon in every style.
///
/// Prefer the static widgets (e.g. `CloseLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class CloseIcon extends StatelessWidget {
  /// Creates the `close` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const CloseIcon({
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
    name: 'close',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M18.4765 4.46967C18.7694 4.17683 19.2442 4.1768 19.5371 4.46967C19.8299 4.76255 19.8299 5.23734 19.5371 5.53022L13.0634 12.0029L19.5302 18.4697C19.823 18.7626 19.8231 19.2374 19.5302 19.5302C19.2374 19.8231 18.7626 19.823 18.4697 19.5302L12.0029 13.0634L5.53705 19.5302C5.24417 19.823 4.76938 19.823 4.47651 19.5302C4.18363 19.2373 4.18367 18.7626 4.47651 18.4697L10.9423 12.0029L4.46967 5.53022C4.17678 5.23732 4.17678 4.76256 4.46967 4.46967C4.76256 4.17678 5.23732 4.17678 5.53022 4.46967L12.0029 10.9423L18.4765 4.46967Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'close',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M4.46978 5.53033C4.17689 5.23744 4.17689 4.76256 4.46978 4.46967C4.76268 4.17678 5.23755 4.17678 5.53044 4.46967L19.5303 18.4696C19.8232 18.7624 19.8232 19.2373 19.5303 19.5302C19.2374 19.8231 18.7626 19.8231 18.4697 19.5302L4.46978 5.53033Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.53717 19.5302C5.24427 19.8231 4.7694 19.8231 4.47651 19.5302C4.18361 19.2373 4.18361 18.7624 4.47651 18.4696L18.4764 4.46967C18.7693 4.17678 19.2442 4.17678 19.5371 4.46967C19.8299 4.76256 19.8299 5.23744 19.5371 5.53033L5.53717 19.5302Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'close',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M19.0071 5L15.5071 8.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0071 12L5.00708 19" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 19L5 5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'close',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M19.0068 5L5.00684 19" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 19L5 5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'close',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M19 19L5 5" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M19.0068 5L5.00684 19" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'close',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M18.4765 4.46964C18.7694 4.17681 19.2442 4.17677 19.5371 4.46964C19.8298 4.76253 19.8298 5.23734 19.5371 5.53019L13.0634 12.0028L19.5302 18.4696C19.8229 18.7625 19.823 19.2373 19.5302 19.5302C19.2374 19.823 18.7626 19.8229 18.4697 19.5302L12.0029 13.0634L5.53705 19.5302C5.2442 19.823 4.76939 19.8229 4.47651 19.5302C4.18363 19.2373 4.18367 18.7625 4.47651 18.4696L10.9423 12.0028L4.46967 5.53019C4.17678 5.2373 4.17678 4.76253 4.46967 4.46964C4.76257 4.1768 5.23734 4.17677 5.53022 4.46964L12.0029 10.9423L18.4765 4.46964Z" fill="currentColor"/>''',
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
