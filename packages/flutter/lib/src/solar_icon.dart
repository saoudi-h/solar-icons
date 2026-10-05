import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'solar_icon_data.dart';
import 'solar_icon_style.dart';
import 'solar_theme.dart';
import 'svg_composer.dart';

/// Draws one Solar icon from [SolarIconData].
///
/// Generated widgets such as `HomeIcon` are usually easier to read. Use this
/// widget when you already have icon data, including the style payloads on
/// those generated widgets (`HomeIcon.linear`, `HomeIcon.bold`).
class SolarIcon extends StatelessWidget {
  /// Creates an icon from [data].
  const SolarIcon(
    this.data, {
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// SVG payload to draw.
  final SolarIconData data;

  /// Width and height. Falls back to [SolarTheme], then [IconTheme], then 24.
  final double? size;

  /// Primary color. Falls back to [SolarTheme], then [IconTheme].
  final Color? color;

  /// Stroke width for stroked styles. Falls back to [SolarTheme], then 1.5.
  ///
  /// Filled styles ignore this unless a shape explicitly uses a stroke.
  final double? strokeWidth;

  /// Accent color for [SolarIconStyle.boldDuotone] and
  /// [SolarIconStyle.lineDuotone]. Falls back to the primary color.
  final Color? secondaryColor;

  /// Accent opacity, from 0 to 1. Falls back to [SolarTheme], then 0.5.
  final double? secondaryOpacity;

  /// Accessibility label. When null, the icon is excluded from semantics.
  final String? semanticLabel;

  /// When true, ignores [SolarTheme] and [IconTheme] and uses the package
  /// defaults: 24px, `#1C274C`, stroke width 1.5, accent opacity 0.5.
  final bool isolated;

  @override
  Widget build(BuildContext context) {
    final resolved = _resolve(context);
    return SvgPicture.string(
      composeSolarSvg(
        data,
        color: resolved.color,
        strokeWidth: resolved.strokeWidth,
        secondaryColor: resolved.secondaryColor,
        secondaryOpacity: resolved.secondaryOpacity,
      ),
      width: resolved.size,
      height: resolved.size,
      fit: BoxFit.contain,
      clipBehavior: Clip.none,
      semanticsLabel: semanticLabel,
      excludeFromSemantics: semanticLabel == null,
    );
  }

  _ResolvedIcon _resolve(BuildContext context) {
    if (isolated) {
      final resolvedColor = color ?? const Color(0xFF1C274C);
      return _ResolvedIcon(
        size: size ?? 24,
        color: resolvedColor,
        strokeWidth: strokeWidth ?? 1.5,
        secondaryColor: secondaryColor ?? resolvedColor,
        secondaryOpacity: secondaryOpacity ?? 0.5,
      );
    }

    final iconTheme = IconTheme.of(context);
    final solar = SolarTheme.maybeOf(context);
    final resolvedColor =
        color ?? solar?.color ?? iconTheme.color ?? const Color(0xFF1C274C);
    return _ResolvedIcon(
      size: size ?? solar?.size ?? iconTheme.size ?? 24,
      color: resolvedColor,
      strokeWidth: strokeWidth ?? solar?.strokeWidth ?? 1.5,
      secondaryColor: secondaryColor ?? solar?.secondaryColor ?? resolvedColor,
      secondaryOpacity: secondaryOpacity ?? solar?.secondaryOpacity ?? 0.5,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('name', data.name))
      ..add(EnumProperty<SolarIconStyle>('style', data.style))
      ..add(DoubleProperty('size', size))
      ..add(ColorProperty('color', color))
      ..add(DoubleProperty('strokeWidth', strokeWidth))
      ..add(ColorProperty('secondaryColor', secondaryColor))
      ..add(DoubleProperty('secondaryOpacity', secondaryOpacity))
      ..add(FlagProperty('isolated', value: isolated, ifTrue: 'isolated'));
  }
}

class _ResolvedIcon {
  const _ResolvedIcon({
    required this.size,
    required this.color,
    required this.strokeWidth,
    required this.secondaryColor,
    required this.secondaryOpacity,
  });

  final double size;
  final Color color;
  final double strokeWidth;
  final Color secondaryColor;
  final double secondaryOpacity;
}
