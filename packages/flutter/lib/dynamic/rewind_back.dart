// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-back` icon in every style.
///
/// Prefer the static widgets (e.g. `RewindBackLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class RewindBackIcon extends StatelessWidget {
  /// Creates the `rewind-back` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const RewindBackIcon({
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
    name: 'rewind-back',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21.9998 17.5737L21.9998 6.42632C21.9998 4.57895 20.3991 3.41122 19.0966 4.30838L13 8.76844L13 7.12303C13 5.50658 11.5327 4.48482 10.3388 5.26983L2.92136 10.1468C1.69288 10.9545 1.69288 13.0455 2.92135 13.8532L10.3388 18.7302C11.5327 19.5152 13 18.4934 13 16.877V15.2316L19.0966 19.6916C20.3991 20.5888 21.9998 19.4211 21.9998 17.5737Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'rewind-back',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13 7.12303L13 16.877C13 18.4934 11.5327 19.5152 10.3388 18.7302L2.92135 13.8532C1.69288 13.0455 1.69288 10.9545 2.92136 10.1468L10.3388 5.26983C11.5327 4.48482 13 5.50658 13 7.12303Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M21.9998 6.42632L21.9998 17.5737C21.9998 19.4211 20.3991 20.5888 19.0966 19.6916L13 15.2316V8.76844L19.0966 4.30838C20.3991 3.41122 21.9998 4.57895 21.9998 6.42632Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'rewind-back',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13.0002 15.2316L19.0969 19.6916C20.3994 20.5888 22 19.4211 22 17.5737L22 15M13.0002 8.76844L19.0969 4.30838C20.3994 3.41122 22 4.57894 22 6.42631L22 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.63008 7.70832L10.3388 5.26983C11.5327 4.48482 13 5.50658 13 7.12303V16.877C13 18.4934 11.5327 19.5152 10.3388 18.7302L2.92135 13.8532C1.69288 13.0455 1.69288 10.9545 2.92136 10.1468L3.84854 9.53719" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'rewind-back',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M13 8.76844L19.0966 4.30838C20.3991 3.41122 21.9998 4.57895 21.9998 6.42632L21.9998 17.5737C21.9998 19.4211 20.3991 20.5888 19.0966 19.6916L13 15.2316" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.92136 10.1468C1.69288 10.9545 1.69288 13.0455 2.92135 13.8532L10.3388 18.7302C11.5327 19.5152 13 18.4934 13 16.877L13 7.12303C13 5.50658 11.5327 4.48482 10.3388 5.26983L2.92136 10.1468Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'rewind-back',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2.92136 10.1468C1.69288 10.9545 1.69288 13.0455 2.92135 13.8532L10.3388 18.7302C11.5327 19.5152 13 18.4934 13 16.877V7.12303C13 5.50658 11.5327 4.48482 10.3388 5.26983L2.92136 10.1468Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13.0002 8.76844L19.0969 4.30838C20.3994 3.41122 22 4.57895 22 6.42632L22 17.5737C22 19.4211 20.3994 20.5888 19.0969 19.6916L13.0002 15.2316" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'rewind-back',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22.7498 6.42642C22.7498 5.28953 22.2555 4.2991 21.4787 3.73235C20.6815 3.15078 19.6076 3.04585 18.6712 3.69083L18.6624 3.69687L13.75 7.2906V7.12313C13.75 6.08735 13.2773 5.18999 12.5457 4.68051C11.7998 4.16104 10.8013 4.06826 9.92676 4.64326L2.50932 9.52023C1.639 10.0925 1.25 11.0822 1.25 12.0001C1.25 12.918 1.63899 13.9077 2.50931 14.48L9.92676 19.3569C10.8013 19.9319 11.7998 19.8392 12.5457 19.3197C13.2773 18.8102 13.75 17.9129 13.75 16.8771V16.7096L18.6624 20.3033L18.6712 20.3094C19.6076 20.9544 20.6815 20.8494 21.4787 20.2679C22.2555 19.7011 22.7498 18.7107 22.7498 17.5738L22.7498 6.42642ZM13.75 14.8511L19.5298 19.0794C19.8935 19.3258 20.2682 19.2942 20.5946 19.0561C20.9437 18.8014 21.2498 18.2843 21.2498 17.5738L21.2498 6.42642C21.2498 5.71593 20.9437 5.19882 20.5946 4.94415C20.2682 4.706 19.8935 4.67439 19.5299 4.92083L13.75 9.14914L13.75 14.8511ZM10.7508 5.89661C11.0703 5.68659 11.4024 5.71218 11.6885 5.91145C11.989 6.12071 12.25 6.54246 12.25 7.12313L12.25 16.8771C12.25 17.4577 11.989 17.8795 11.6885 18.0888C11.4024 18.288 11.0703 18.3136 10.7508 18.1036L3.33339 13.2266C2.97524 12.9911 2.75 12.5316 2.75 12.0001C2.75 11.4686 2.97524 11.0091 3.3334 10.7736L10.7508 5.89661Z" fill="currentColor"/>''',
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
