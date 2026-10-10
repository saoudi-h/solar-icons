// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `battery-charge-minimalistic` icon in every style.
///
/// Prefer the static widgets (e.g. `BatteryChargeMinimalisticLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class BatteryChargeMinimalisticIcon extends StatelessWidget {
  /// Creates the `battery-charge-minimalistic` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const BatteryChargeMinimalisticIcon({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

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
    name: 'battery-charge-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2 12C2 8.22876 2 6.34315 3.17157 5.17157C4.34315 4 6.22876 4 10 4H11.5C15.2712 4 17.1569 4 18.3284 5.17157C19.5 6.34315 19.5 8.22876 19.5 12C19.5 15.7712 19.5 17.6569 18.3284 18.8284C17.1569 20 15.2712 20 11.5 20H10C6.22876 20 4.34315 20 3.17157 18.8284C2 17.6569 2 15.7712 2 12ZM11.9801 8.42383C12.2983 8.68901 12.3413 9.16193 12.0762 9.48014L10.6013 11.25H12.5C12.791 11.25 13.0558 11.4183 13.1792 11.6819C13.3026 11.9454 13.2625 12.2566 13.0762 12.4801L10.5762 15.4801C10.311 15.7983 9.83807 15.8413 9.51986 15.5762C9.20165 15.311 9.15866 14.8381 9.42383 14.5199L10.8987 12.75H9C8.70899 12.75 8.44424 12.5817 8.32081 12.3181C8.19737 12.0546 8.23753 11.7434 8.42383 11.5199L10.9238 8.51986C11.189 8.20165 11.6619 8.15866 11.9801 8.42383Z" fill="currentColor"/>
<path d="M21.25 14C21.25 14.4142 21.5858 14.75 22 14.75C22.4142 14.75 22.75 14.4142 22.75 14V10C22.75 9.58579 22.4142 9.25 22 9.25C21.5858 9.25 21.25 9.58579 21.25 10V14Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'battery-charge-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.9235 8.51961C11.1887 8.20158 11.662 8.15879 11.9802 8.4239C12.2982 8.68911 12.341 9.1624 12.0759 9.48055L10.6013 11.2501H12.4997C12.7907 11.2501 13.0559 11.4182 13.1794 11.6817C13.3028 11.9453 13.2622 12.257 13.0759 12.4805L10.5759 15.4805C10.3107 15.7986 9.83737 15.8414 9.51922 15.5762C9.2012 15.311 9.1584 14.8377 9.42352 14.5196L10.8981 12.7501H8.99969C8.70881 12.7501 8.44449 12.5818 8.32098 12.3184C8.19754 12.0549 8.23722 11.7432 8.42352 11.5196L10.9235 8.51961Z" fill="currentColor"/>
<path d="M21.9997 9.25008C22.4139 9.25008 22.7497 9.58586 22.7497 10.0001V14.0001C22.7497 14.4143 22.4139 14.7501 21.9997 14.7501C21.5855 14.7501 21.2497 14.4143 21.2497 14.0001V10.0001C21.2497 9.58586 21.5855 9.25008 21.9997 9.25008Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.17157 5.17157C2 6.34315 2 8.22876 2 12C2 15.7712 2 17.6569 3.17157 18.8284C4.34315 20 6.22876 20 10 20H11.5C15.2712 20 17.1569 20 18.3284 18.8284C19.5 17.6569 19.5 15.7712 19.5 12C19.5 8.22876 19.5 6.34315 18.3284 5.17157C17.1569 4 15.2712 4 11.5 4H10C6.22876 4 4.34315 4 3.17157 5.17157Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'battery-charge-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 14L22 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 9L9 12H12.5L10 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 12C2 8.22876 2 6.34315 3.17157 5.17157C4.34315 4 6.22876 4 10 4H11.5C15.2712 4 17.1569 4 18.3284 5.17157C19.5 6.34315 19.5 8.22876 19.5 12C19.5 15.7712 19.5 17.6569 18.3284 18.8284C17.1569 20 15.2712 20 11.5 20H10C6.22876 20 4.34315 20 3.17157 18.8284C2.51839 18.1752 2.22937 17.3001 2.10149 16" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'battery-charge-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 8.22876 2 6.34315 3.17157 5.17157C4.34315 4 6.22876 4 10 4H11.5C15.2712 4 17.1569 4 18.3284 5.17157C19.5 6.34315 19.5 8.22876 19.5 12C19.5 15.7712 19.5 17.6569 18.3284 18.8284C17.1569 20 15.2712 20 11.5 20H10C6.22876 20 4.34315 20 3.17157 18.8284C2 17.6569 2 15.7712 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 14L22 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 9L9 12H12.5L10 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'battery-charge-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 14L22 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 9L9 12H12.5L10 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 8.22876 2 6.34315 3.17157 5.17157C4.34315 4 6.22876 4 10 4H11.5C15.2712 4 17.1569 4 18.3284 5.17157C19.5 6.34315 19.5 8.22876 19.5 12C19.5 15.7712 19.5 17.6569 18.3284 18.8284C17.1569 20 15.2712 20 11.5 20H10C6.22876 20 4.34315 20 3.17157 18.8284C2 17.6569 2 15.7712 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'battery-charge-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12.0762 9.48014C12.3413 9.16193 12.2983 8.68901 11.9801 8.42384C11.6619 8.15867 11.189 8.20166 10.9238 8.51987L8.42383 11.5199C8.23753 11.7434 8.19737 12.0546 8.3208 12.3181C8.44424 12.5817 8.70898 12.75 8.99999 12.75H10.8987L9.42383 14.5199C9.15865 14.8381 9.20165 15.311 9.51986 15.5762C9.83806 15.8413 10.311 15.7983 10.5762 15.4801L13.0762 12.4801C13.2625 12.2566 13.3026 11.9454 13.1792 11.6819C13.0558 11.4183 12.791 11.25 12.5 11.25H10.6013L12.0762 9.48014Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M9.94358 3.25H11.5564C13.3942 3.24998 14.8498 3.24997 15.989 3.40314C17.1614 3.56076 18.1104 3.89288 18.8588 4.64124C19.6071 5.38961 19.9392 6.33856 20.0969 7.51098C20.25 8.65018 20.25 10.1058 20.25 11.9435V12.0564C20.25 13.8942 20.25 15.3498 20.0969 16.489C19.9392 17.6614 19.6071 18.6104 18.8588 19.3588C18.1104 20.1071 17.1614 20.4392 15.989 20.5969C14.8498 20.75 13.3942 20.75 11.5565 20.75H9.94359C8.10585 20.75 6.65018 20.75 5.51098 20.5969C4.33856 20.4392 3.38961 20.1071 2.64124 19.3588C1.89288 18.6104 1.56076 17.6614 1.40314 16.489C1.24997 15.3498 1.24998 13.8942 1.25 12.0564V11.9436C1.24998 10.1058 1.24997 8.65019 1.40314 7.51098C1.56076 6.33856 1.89288 5.38961 2.64124 4.64124C3.38961 3.89288 4.33856 3.56076 5.51098 3.40314C6.65019 3.24997 8.10583 3.24998 9.94358 3.25ZM5.71085 4.88976C4.70476 5.02502 4.12511 5.27869 3.7019 5.7019C3.27869 6.12511 3.02502 6.70476 2.88976 7.71085C2.75159 8.73851 2.75 10.0932 2.75 12C2.75 13.9068 2.75159 15.2615 2.88976 16.2892C3.02502 17.2952 3.27869 17.8749 3.7019 18.2981C4.12511 18.7213 4.70476 18.975 5.71085 19.1102C6.73851 19.2484 8.09318 19.25 10 19.25H11.5C13.4068 19.25 14.7615 19.2484 15.7892 19.1102C16.7952 18.975 17.3749 18.7213 17.7981 18.2981C18.2213 17.8749 18.475 17.2952 18.6102 16.2892C18.7484 15.2615 18.75 13.9068 18.75 12C18.75 10.0932 18.7484 8.73851 18.6102 7.71085C18.475 6.70476 18.2213 6.12511 17.7981 5.7019C17.3749 5.27869 16.7952 5.02502 15.7892 4.88976C14.7615 4.75159 13.4068 4.75 11.5 4.75H10C8.09318 4.75 6.73851 4.75159 5.71085 4.88976Z" fill="currentColor"/>
<path d="M22 14.75C21.5858 14.75 21.25 14.4142 21.25 14L21.25 10C21.25 9.58579 21.5858 9.25 22 9.25C22.4142 9.25 22.75 9.58579 22.75 10L22.75 14C22.75 14.4142 22.4142 14.75 22 14.75Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

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
