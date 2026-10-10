// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-right` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMjUgMTJDMy4yNSAxMS41ODU4IDMuNTg1NzkgMTEuMjUgNCAxMS4yNUgxMy4yNVYxMi43NUg0QzMuNTg1NzkgMTIuNzUgMy4yNSAxMi40MTQyIDMuMjUgMTJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMy4yNSAxMi43NVYxOEMxMy4yNSAxOC4zMDM0IDEzLjQzMjcgMTguNTc2OCAxMy43MTMgMTguNjkyOUMxMy45OTMyIDE4LjgwOSAxNC4zMTU4IDE4Ljc0NDkgMTQuNTMwMyAxOC41MzA0TDIwLjUzMDMgMTIuNTMwNEMyMC42NzEgMTIuMzg5NyAyMC43NSAxMi4xOTg5IDIwLjc1IDEyQzIwLjc1IDExLjgwMTEgMjAuNjcxIDExLjYxMDMgMjAuNTMwMyAxMS40Njk3TDE0LjUzMDMgNS40Njk2OUMxNC4zMTU4IDUuMjU1MTkgMTMuOTkzMiA1LjE5MTAzIDEzLjcxMyA1LjMwNzExQzEzLjQzMjcgNS40MjMyIDEzLjI1IDUuNjk2NjggMTMuMjUgNi4wMDAwMlYxMS4yNVYxMi43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowRightBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-right` icon in the boldDuotone style.
  const ArrowRightBoldDuotoneIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

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

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'arrow-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.25 12.75V18C13.25 18.3034 13.4327 18.5768 13.713 18.6929C13.9932 18.809 14.3158 18.7449 14.5303 18.5304L20.5303 12.5304C20.671 12.3897 20.75 12.1989 20.75 12C20.75 11.8011 20.671 11.6103 20.5303 11.4697L14.5303 5.46969C14.3158 5.25519 13.9932 5.19103 13.713 5.30711C13.4327 5.4232 13.25 5.69668 13.25 6.00002V11.25V12.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M3.25 12C3.25 11.5858 3.58579 11.25 4 11.25H13.25V12.75H4C3.58579 12.75 3.25 12.4142 3.25 12Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => data;

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
