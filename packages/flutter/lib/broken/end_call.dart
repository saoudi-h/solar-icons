// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `end-call` icon in the broken style.
class EndCallBrokenIcon extends StatelessWidget {
  /// Creates the `end-call` icon in the broken style.
  const EndCallBrokenIcon({
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
    name: 'end-call',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21.2762 10.1735C20.1114 9.10176 17.2607 7.14901 11.8501 7.0064C10.3461 6.96676 9.04813 7.11389 7.93408 7.37433" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.9994 13.9606C22.0298 15.1711 20.9656 16.0691 19.7532 15.856L17.7494 15.5036C16.7699 15.3314 16.0277 14.4812 16.0031 13.5031L15.9931 13.1061C15.9931 13.1061 15.9555 11.6075 11.963 11.5023C7.97053 11.3971 8.00817 12.8956 8.00817 12.8956L8.024 13.5261C8.04588 14.3976 7.48956 15.1513 6.65417 15.3818L4.67298 15.9286C3.40069 16.2797 2.08365 15.2949 2.05032 13.9676L2.00094 12.0012C1.98838 11.5012 2.10047 11.0116 2.40621 10.6297C2.76875 10.1769 3.38071 9.53282 4.30675 8.9126" stroke="currentColor" stroke-linecap="round"/>''',
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
