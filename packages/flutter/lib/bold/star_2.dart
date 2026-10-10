// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `star-2` icon in the bold style.
class Star2BoldIcon extends StatelessWidget {
  /// Creates the `star-2` icon in the bold style.
  const Star2BoldIcon({
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
    name: 'star-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 3.25C12.4142 3.25 12.75 3.58579 12.75 4V6.4C12.75 6.81421 12.4142 7.15 12 7.15C11.5858 7.15 11.25 6.81421 11.25 6.4V4C11.25 3.58579 11.5858 3.25 12 3.25ZM18.1872 5.81282C18.4801 6.10571 18.4801 6.58058 18.1872 6.87348L16.4901 8.57053C16.1972 8.86343 15.7224 8.86343 15.4295 8.57053C15.1366 8.27764 15.1366 7.80277 15.4295 7.50987L17.1265 5.81282C17.4194 5.51992 17.8943 5.51992 18.1872 5.81282ZM5.8126 5.81299C6.1055 5.5201 6.58037 5.5201 6.87326 5.81299L8.57032 7.51005C8.86321 7.80294 8.86321 8.27782 8.57032 8.57071C8.27743 8.8636 7.80255 8.8636 7.50966 8.57071L5.8126 6.87365C5.51971 6.58076 5.51971 6.10589 5.8126 5.81299ZM3.25 12C3.25 11.5858 3.58579 11.25 4 11.25H6.4C6.81421 11.25 7.15 11.5858 7.15 12C7.15 12.4142 6.81421 12.75 6.4 12.75H4C3.58579 12.75 3.25 12.4142 3.25 12ZM16.85 12C16.85 11.5858 17.1858 11.25 17.6 11.25H20C20.4142 11.25 20.75 11.5858 20.75 12C20.75 12.4142 20.4142 12.75 20 12.75H17.6C17.1858 12.75 16.85 12.4142 16.85 12ZM8.57053 15.4295C8.86343 15.7224 8.86343 16.1972 8.57053 16.4901L6.87348 18.1872C6.58058 18.4801 6.10571 18.4801 5.81282 18.1872C5.51992 17.8943 5.51992 17.4194 5.81282 17.1265L7.50987 15.4295C7.80276 15.1366 8.27764 15.1366 8.57053 15.4295ZM15.4293 15.4296C15.7221 15.1368 16.197 15.1368 16.4899 15.4296L18.187 17.1267C18.4799 17.4196 18.4799 17.8945 18.187 18.1874C17.8941 18.4803 17.4192 18.4803 17.1263 18.1874L15.4293 16.4903C15.1364 16.1974 15.1364 15.7225 15.4293 15.4296ZM12 16.85C12.4142 16.85 12.75 17.1858 12.75 17.6V20C12.75 20.4142 12.4142 20.75 12 20.75C11.5858 20.75 11.25 20.4142 11.25 20V17.6C11.25 17.1858 11.5858 16.85 12 16.85Z" fill="currentColor"/>''',
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
