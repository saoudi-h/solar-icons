// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `balloon` icon in the bold style.
class BalloonBoldIcon extends StatelessWidget {
  /// Creates the `balloon` icon in the bold style.
  const BalloonBoldIcon({
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
    name: 'balloon',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M14.1668 18.2146C14.4987 19.2768 13.8103 20.3458 12.7498 20.5613V21.9998C12.7497 22.4139 12.4139 22.7498 11.9998 22.7498C11.5856 22.7497 11.2499 22.4139 11.2498 21.9998V20.5613C10.1893 20.3458 9.50091 19.2768 9.83277 18.2146L9.8396 18.1931C10.5039 18.3868 11.2042 18.4939 11.9314 18.4998C12.7022 18.506 13.4489 18.3974 14.1589 18.1912C14.1615 18.1989 14.1644 18.2069 14.1668 18.2146Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9392 1.99976C16.0812 2.03319 19.4663 5.41831 19.4998 9.56031C19.5332 13.7023 16.0812 17.5332 11.9392 17.4998C7.79723 17.4663 4.53319 13.5812 4.49976 9.43921C4.46635 5.29724 7.79724 1.96635 11.9392 1.99976ZM12.5056 5.24976C12.0915 5.24652 11.7531 5.57977 11.7498 5.9939C11.7465 6.40801 12.0798 6.74642 12.4939 6.74976C13.7279 6.75982 14.7397 7.77166 14.7498 9.00562C14.7531 9.41976 15.0915 9.753 15.5056 9.74976C15.9198 9.74642 16.253 9.40801 16.2498 8.9939C16.2332 6.94083 14.5587 5.26633 12.5056 5.24976Z" fill="currentColor"/>''',
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
