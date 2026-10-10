// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sidebar-code` icon in every style.
///
/// Prefer the static widgets (e.g. `SidebarCodeLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class SidebarCodeIcon extends StatelessWidget {
  /// Creates the `sidebar-code` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const SidebarCodeIcon({
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
    name: 'sidebar-code',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2 11C2 7.22877 2 5.34315 3.17157 4.17158C4.34315 3.00001 6.22876 3.00001 10 3.00001H14H14.25L14.25 21H14H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11ZM15.75 20.9944L15.75 3.0056C18.3859 3.03321 19.8541 3.19725 20.8284 4.17158C22 5.34315 22 7.22877 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.8541 20.8028 18.3859 20.9668 15.75 20.9944ZM9.96967 15.4697C10.2626 15.1768 10.7374 15.1768 11.0303 15.4697L12.0303 16.4697C12.3232 16.7626 12.3232 17.2374 12.0303 17.5303L11.0303 18.5303C10.7374 18.8232 10.2626 18.8232 9.96967 18.5303C9.67678 18.2374 9.67678 17.7626 9.96967 17.4697L10.4393 17L9.96967 16.5303C9.67678 16.2374 9.67678 15.7626 9.96967 15.4697ZM9.70225 14.2633C9.84769 13.8755 9.65118 13.4432 9.26334 13.2978C8.8755 13.1523 8.44319 13.3488 8.29775 13.7367L6.79775 17.7367C6.65231 18.1245 6.84882 18.5568 7.23666 18.7023C7.6245 18.8477 8.05681 18.6512 8.20225 18.2633L9.70225 14.2633ZM6.53033 13.4697C6.82322 13.7626 6.82322 14.2374 6.53033 14.5303L6.06066 15L6.53033 15.4697C6.82322 15.7626 6.82322 16.2374 6.53033 16.5303C6.23744 16.8232 5.76256 16.8232 5.46967 16.5303L4.46967 15.5303C4.17678 15.2374 4.17678 14.7626 4.46967 14.4697L5.46967 13.4697C5.76256 13.1768 6.23744 13.1768 6.53033 13.4697Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'sidebar-code',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.9999 3.00562C17.6357 3.03323 19.8536 3.19742 20.828 4.17163C21.9996 5.34318 21.9999 7.2287 21.9999 10.9998V12.9998C21.9999 16.771 21.9996 18.6573 20.828 19.8289C19.8535 20.8029 17.6355 20.9673 14.9999 20.9949V3.00562Z" fill="currentColor"/>
<path d="M8.29774 13.7371C8.44318 13.3492 8.87572 13.1522 9.26356 13.2976C9.65124 13.4431 9.84745 13.8757 9.70204 14.2634L8.20204 18.2634C8.05655 18.6512 7.62401 18.8473 7.23622 18.7019C6.84876 18.5564 6.65261 18.1247 6.79774 17.7371L8.29774 13.7371Z" fill="currentColor"/>
<path d="M9.96962 15.4695C10.2625 15.1767 10.7373 15.1767 11.0302 15.4695L12.0302 16.4695C12.323 16.7623 12.323 17.2371 12.0302 17.53L11.0302 18.53C10.7373 18.8229 10.2625 18.8229 9.96962 18.53C9.67683 18.2371 9.67676 17.7623 9.96962 17.4695L10.4393 16.9998L9.96962 16.53C9.67683 16.2371 9.67676 15.7623 9.96962 15.4695Z" fill="currentColor"/>
<path d="M5.46962 13.4695C5.76249 13.1767 6.2373 13.1767 6.53017 13.4695C6.82303 13.7623 6.82296 14.2371 6.53017 14.53L6.06044 14.9998L6.53017 15.4695C6.82303 15.7623 6.82296 16.2371 6.53017 16.53C6.23727 16.8229 5.76251 16.8229 5.46962 16.53L4.46962 15.53C4.17683 15.2371 4.17676 14.7623 4.46962 14.4695L5.46962 13.4695Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M3.17157 4.1716C2 5.34318 2 7.2288 2 11V13C2 16.7713 2 18.6569 3.17157 19.8285C4.34315 21 6.22876 21 10 21H14C14.0843 21 14.9176 21.0001 15 21.0001L15 3.00006C14.9176 3.00005 14.0843 3.00003 14 3.00003H10C6.22876 3.00003 4.34315 3.00003 3.17157 4.1716Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'sidebar-code',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 11V13C2 16.7712 2 18.6569 3.17157 19.8284C4.34315 21 6.22876 21 10 21H14C17.7712 21 19.6569 21 20.8284 19.8284C22 18.6569 22 16.7712 22 13V11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3H10C6.22876 3 4.34315 3 3.17157 4.17157C2.51839 4.82475 2.22937 5.69989 2.10149 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 3L15 13M15 17L15 21" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 14L5 15L6 16M10.5 16L11.5 17L10.5 18M9 14L7.5 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'sidebar-code',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 21L15 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 14L5 15L6 16M10.5 16L11.5 17L10.5 18M9 14L7.5 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'sidebar-code',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 14L5 15L6 16M10.5 16L11.5 17L10.5 18M9 14L7.5 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15 21L15 3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'sidebar-code',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M9.70225 14.2633C9.84769 13.8755 9.65118 13.4432 9.26334 13.2978C8.8755 13.1523 8.44319 13.3488 8.29775 13.7367L6.79775 17.7367C6.65231 18.1245 6.84882 18.5568 7.23666 18.7022C7.6245 18.8477 8.05681 18.6512 8.20225 18.2633L9.70225 14.2633Z" fill="currentColor"/>
<path d="M6.53033 14.5303C6.82322 14.2374 6.82322 13.7626 6.53033 13.4697C6.23744 13.1768 5.76256 13.1768 5.46967 13.4697L4.46967 14.4697C4.17678 14.7626 4.17678 15.2374 4.46967 15.5303L5.46967 16.5303C5.76256 16.8232 6.23744 16.8232 6.53033 16.5303C6.82322 16.2374 6.82322 15.7626 6.53033 15.4697L6.06066 15L6.53033 14.5303Z" fill="currentColor"/>
<path d="M11.0303 15.4697C10.7374 15.1768 10.2626 15.1768 9.96967 15.4697C9.67678 15.7626 9.67678 16.2374 9.96967 16.5303L10.4393 17L9.96967 17.4697C9.67678 17.7626 9.67678 18.2374 9.96967 18.5303C10.2626 18.8232 10.7374 18.8232 11.0303 18.5303L12.0303 17.5303C12.3232 17.2374 12.3232 16.7626 12.0303 16.4697L11.0303 15.4697Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M9.94358 2.25H14.0564C14.3707 2.25 14.6737 2.25 14.966 2.25076C14.9773 2.25025 14.9886 2.25 15 2.25C15.0129 2.25 15.0257 2.25032 15.0384 2.25096C16.4224 2.25523 17.5607 2.27833 18.489 2.40314C19.6614 2.56076 20.6104 2.89288 21.3588 3.64124C22.1071 4.38961 22.4392 5.33856 22.5969 6.51098C22.75 7.65018 22.75 9.1058 22.75 10.9435V13.0564C22.75 14.8942 22.75 16.3498 22.5969 17.489C22.4392 18.6614 22.1071 19.6104 21.3588 20.3588C20.6104 21.1071 19.6614 21.4392 18.489 21.5969C17.5607 21.7217 16.4224 21.7448 15.0384 21.749C15.0257 21.7497 15.0129 21.75 15 21.75C14.9886 21.75 14.9773 21.7497 14.966 21.7492C14.6752 21.75 14.3737 21.75 14.0611 21.75H9.94359C8.10585 21.75 6.65018 21.75 5.51098 21.5969C4.33856 21.4392 3.38961 21.1071 2.64124 20.3588C1.89288 19.6104 1.56076 18.6614 1.40314 17.489C1.24997 16.3498 1.24998 14.8942 1.25 13.0564V10.9436C1.24998 9.10583 1.24997 7.65019 1.40314 6.51098C1.56076 5.33856 1.89288 4.38961 2.64124 3.64124C3.38961 2.89288 4.33856 2.56076 5.51098 2.40314C6.65019 2.24997 8.10583 2.24998 9.94358 2.25ZM14.25 3.75002L14.25 20.25L10 20.25C8.09318 20.25 6.73851 20.2484 5.71085 20.1102C4.70476 19.975 4.12511 19.7213 3.7019 19.2981C3.27869 18.8749 3.02503 18.2952 2.88976 17.2892C2.75159 16.2615 2.75 14.9068 2.75 13V11C2.75 9.09318 2.75159 7.73851 2.88976 6.71085C3.02503 5.70476 3.27869 5.12511 3.7019 4.7019C4.12511 4.27869 4.70476 4.02503 5.71085 3.88976C6.73851 3.75159 8.09318 3.75 10 3.75L14.25 3.75002ZM18.2892 20.1102C17.6082 20.2018 16.7836 20.2334 15.75 20.2443L15.75 3.75573C16.7836 3.76662 17.6082 3.79821 18.2892 3.88976C19.2952 4.02503 19.8749 4.27869 20.2981 4.7019C20.7213 5.12511 20.975 5.70476 21.1102 6.71085C21.2484 7.73851 21.25 9.09318 21.25 11V13C21.25 14.9068 21.2484 16.2615 21.1102 17.2892C20.975 18.2952 20.7213 18.8749 20.2981 19.2981C19.8749 19.7213 19.2952 19.975 18.2892 20.1102Z" fill="currentColor"/>''',
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
