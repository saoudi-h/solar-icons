import 'solar_icon_style.dart';

/// Immutable SVG payload for one Solar icon in one style.
final class SolarIconData {
  /// Creates icon data from normalized SVG fragments.
  ///
  /// [body] and [accent] use `currentColor` and omit the default
  /// `stroke-width="1.5"`. [accent] is the duotone layer, when the style has
  /// one.
  const SolarIconData({
    required this.name,
    required this.style,
    required this.body,
    this.accent,
  });

  /// Kebab-case catalogue name, such as `arrow-right`.
  final String name;

  /// Style this payload draws.
  final SolarIconStyle style;

  /// Primary SVG markup, without the outer `<svg>` element.
  final String body;

  /// Duotone accent markup, without the outer `<svg>` element.
  final String? accent;
}
