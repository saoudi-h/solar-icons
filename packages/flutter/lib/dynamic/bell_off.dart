// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bell-off` icon in every style.
///
/// Prefer the static widgets (e.g. `BellOffLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class BellOffIcon extends StatelessWidget {
  /// Creates the `bell-off` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const BellOffIcon({
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
    name: 'bell-off',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8.35179 20.2418C9.19288 21.311 10.5142 22 12 22C13.4858 22 14.8071 21.311 15.6482 20.2418C13.2264 20.57 10.7736 20.57 8.35179 20.2418Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M18.7491 9V9.7041C18.7491 10.5491 18.9903 11.3752 19.4422 12.0782L20.5496 13.8012C21.5612 15.3749 20.789 17.5139 19.0296 18.0116C14.4273 19.3134 9.57274 19.3134 4.97036 18.0116C3.21105 17.5139 2.43882 15.3749 3.45036 13.8012L4.5578 12.0782C5.00972 11.3752 5.25087 10.5491 5.25087 9.7041V9C5.25087 5.13401 8.27256 2 12 2C15.7274 2 18.7491 5.13401 18.7491 9ZM10.0717 9.75C9.67233 9.75 9.34857 9.41421 9.34857 9C9.34857 8.58578 9.67233 8.25 10.0717 8.25H13.9283C14.2208 8.25 14.4845 8.43273 14.5964 8.71299C14.7083 8.99324 14.6465 9.31583 14.4397 9.53033L11.8175 12.25H13.9283C14.3277 12.25 14.6515 12.5858 14.6515 13C14.6515 13.4142 14.3277 13.75 13.9283 13.75H10.0717C9.77922 13.75 9.51554 13.5673 9.40362 13.287C9.29169 13.0068 9.35356 12.6842 9.56037 12.4697L12.1826 9.75H10.0717Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'bell-off',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.7568 18.5449C16.1059 20.55 14.2221 21.9999 12 22C9.77786 22 7.8941 20.5501 7.24316 18.5449C10.3886 19.1352 13.6114 19.1352 16.7568 18.5449Z" fill="currentColor"/>
<path d="M13.9287 8.25C14.2211 8.25012 14.4848 8.43274 14.5967 8.71289C14.7086 8.99315 14.6463 9.31578 14.4395 9.53027L11.8174 12.25H13.9287C14.3279 12.2502 14.6514 12.5859 14.6514 13C14.6514 13.4141 14.3279 13.7498 13.9287 13.75H10.0713C9.77901 13.7498 9.51518 13.5672 9.40332 13.2871C9.29142 13.0069 9.35375 12.6842 9.56055 12.4697L12.1826 9.75H10.0713C9.67214 9.74973 9.34863 9.41405 9.34863 9C9.34863 8.58595 9.67214 8.25027 10.0713 8.25H13.9287Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.7491 9V9.7041C18.7491 10.5491 18.9903 11.3752 19.4422 12.0782L20.5496 13.8012C21.5612 15.3749 20.789 17.5139 19.0296 18.0116C14.4273 19.3134 9.57274 19.3134 4.97036 18.0116C3.21105 17.5139 2.43882 15.3749 3.45036 13.8012L4.5578 12.0782C5.00972 11.3752 5.25087 10.5491 5.25087 9.7041V9C5.25087 5.13401 8.27256 2 12 2C15.7274 2 18.7491 5.13401 18.7491 9Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'bell-off',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10 9H14L10 13H14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7.5 19C8.15503 20.7478 9.92246 22 12 22C12.2445 22 12.4847 21.9827 12.7192 21.9492M16.5 19C16.2329 19.7126 15.781 20.3428 15.1985 20.8393" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.10745 2.67414C9.98414 2.24187 10.9649 2 12 2C15.7274 2 18.7491 5.13623 18.7491 9.00497V9.70957C18.7491 10.5552 18.9903 11.3818 19.4422 12.0854L20.5496 13.8095C21.5612 15.3843 20.789 17.5249 19.0296 18.0229C14.4273 19.3257 9.57274 19.3257 4.97036 18.0229C3.21105 17.5249 2.43882 15.3843 3.45036 13.8095L4.5578 12.0854C5.00972 11.3818 5.25087 10.5552 5.25087 9.70957V9.00497C5.25087 7.93058 5.48391 6.91269 5.90039 6.00277" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'bell-off',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M18.7491 9.70957V9.00496C18.7491 5.13623 15.7274 2 12 2C8.27256 2 5.25087 5.13623 5.25087 9.00496V9.70957C5.25087 10.5552 5.00972 11.3818 4.5578 12.0854L3.45036 13.8095C2.43882 15.3843 3.21105 17.5249 4.97036 18.0229C9.57274 19.3257 14.4273 19.3257 19.0296 18.0229C20.789 17.5249 21.5612 15.3843 20.5496 13.8095L19.4422 12.0854C18.9903 11.3818 18.7491 10.5552 18.7491 9.70957Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 9H14L10 13H14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7.5 19C8.15503 20.7478 9.92246 22 12 22C14.0775 22 15.845 20.7478 16.5 19" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'bell-off',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M18.7491 9.70957V9.00496C18.7491 5.13623 15.7274 2 12 2C8.27256 2 5.25087 5.13623 5.25087 9.00496V9.70957C5.25087 10.5552 5.00972 11.3818 4.5578 12.0854L3.45036 13.8095C2.43882 15.3843 3.21105 17.5249 4.97036 18.0229C9.57274 19.3257 14.4273 19.3257 19.0296 18.0229C20.789 17.5249 21.5612 15.3843 20.5496 13.8095L19.4422 12.0854C18.9903 11.3818 18.7491 10.5552 18.7491 9.70957Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M10 9H14L10 13H14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M7.5 19C8.15503 20.7478 9.92246 22 12 22C14.0775 22 15.845 20.7478 16.5 19" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'bell-off',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M9.99998 9.75C9.58576 9.75 9.24998 9.41421 9.24998 9C9.24998 8.58579 9.58576 8.25 9.99998 8.25H14C14.3033 8.25 14.5768 8.43273 14.6929 8.71299C14.809 8.99324 14.7448 9.31583 14.5303 9.53033L11.8106 12.25H14C14.4142 12.25 14.75 12.5858 14.75 13C14.75 13.4142 14.4142 13.75 14 13.75H9.99998C9.69663 13.75 9.42315 13.5673 9.30707 13.287C9.19098 13.0068 9.25515 12.6842 9.46965 12.4697L12.1893 9.75H9.99998Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M4.25004 9C4.25004 4.71979 7.71983 1.25 12 1.25C16.2802 1.25 19.75 4.71979 19.75 9V9.7041C19.75 10.401 19.9563 11.0824 20.3429 11.6622L21.4915 13.3851C22.8246 15.3848 21.8069 18.1028 19.4883 18.7351C18.7327 18.9412 17.9706 19.1155 17.2042 19.2581L17.2023 19.2632C16.4333 21.3151 14.378 22.75 12 22.75C9.62198 22.75 7.56667 21.3151 6.79768 19.2632L6.79578 19.2581C6.02937 19.1155 5.26738 18.9412 4.51177 18.7351C2.19318 18.1028 1.17547 15.3848 2.50856 13.3851L3.65717 11.6622C4.04375 11.0824 4.25004 10.401 4.25004 9.7041V9ZM8.62349 19.5369C9.33444 20.5585 10.571 21.25 12 21.25C13.4289 21.25 14.6655 20.5585 15.3764 19.537C13.1335 19.805 10.8664 19.8049 8.62349 19.5369ZM12 2.75C8.54826 2.75 5.75004 5.54822 5.75004 9V9.7041C5.75004 10.6972 5.45609 11.668 4.90524 12.4943L3.75664 14.2172C2.99147 15.3649 3.57561 16.925 4.90644 17.288C9.5507 18.5546 14.4494 18.5546 19.0936 17.288C20.4245 16.925 21.0086 15.3649 20.2434 14.2172L19.0948 12.4943C18.544 11.668 18.25 10.6972 18.25 9.7041V9C18.25 5.54822 15.4518 2.75 12 2.75Z" fill="currentColor"/>''',
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
