import 'package:flutter/widgets.dart';

/// Defaults for Solar icons below this widget.
///
/// An icon uses its own arguments first, then the nearest [SolarProvider], then
/// the ambient [IconTheme]. [strokeWidth] is not read from [IconTheme].
class SolarProvider extends InheritedWidget {
  /// Creates a theme that supplies icon defaults to its [child].
  const SolarProvider({
    required super.child,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    super.key,
  });

  /// Default width and height.
  final double? size;

  /// Default primary color.
  final Color? color;

  /// Default stroke width for stroked styles.
  final double? strokeWidth;

  /// Default color of the duotone accent layer.
  final Color? secondaryColor;

  /// Default opacity of the duotone accent layer, from 0 to 1.
  final double? secondaryOpacity;

  /// The nearest [SolarProvider], or null when none is present.
  static SolarProvider? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SolarProvider>();
  }

  /// The nearest [SolarProvider]. Throws when none is present.
  static SolarProvider of(BuildContext context) {
    final provider = maybeOf(context);
    if (provider == null) {
      throw StateError(
        'SolarProvider.of() called with no SolarProvider above. Wrap the icons in a SolarProvider.',
      );
    }
    return provider;
  }

  @override
  bool updateShouldNotify(SolarProvider oldWidget) {
    return size != oldWidget.size ||
        color != oldWidget.color ||
        strokeWidth != oldWidget.strokeWidth ||
        secondaryColor != oldWidget.secondaryColor ||
        secondaryOpacity != oldWidget.secondaryOpacity;
  }
}
