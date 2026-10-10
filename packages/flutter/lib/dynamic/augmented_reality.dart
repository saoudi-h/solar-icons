// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `augmented-reality` icon in every style.
///
/// Prefer the static widgets (e.g. `AugmentedRealityLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class AugmentedRealityIcon extends StatelessWidget {
  /// Creates the `augmented-reality` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const AugmentedRealityIcon({
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
    name: 'augmented-reality',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12ZM9.21586 7.77629C9.11801 7.46319 8.82804 7.25 8.5 7.25C8.17196 7.25 7.88199 7.46319 7.78414 7.77629L5.28414 15.7763C5.16059 16.1717 5.38094 16.5923 5.77629 16.7159C6.17165 16.8394 6.59231 16.6191 6.71586 16.2237L7.42639 13.95H9.57361L10.2841 16.2237C10.4077 16.6191 10.8283 16.8394 11.2237 16.7159C11.6191 16.5923 11.8394 16.1717 11.7159 15.7763L9.21586 7.77629ZM7.89514 12.45H9.10486L8.5 10.5145L7.89514 12.45ZM13.25 8C13.25 7.58579 13.5858 7.25 14 7.25H16C17.5188 7.25 18.75 8.48122 18.75 10C18.75 11.2469 17.9201 12.3 16.7826 12.637L18.636 15.6025C18.8555 15.9538 18.7488 16.4165 18.3975 16.636C18.0462 16.8555 17.5835 16.7488 17.364 16.3975L15.0843 12.75H14.75V16C14.75 16.4142 14.4142 16.75 14 16.75C13.5858 16.75 13.25 16.4142 13.25 16V8ZM14.75 11.25V8.75H16C16.6904 8.75 17.25 9.30964 17.25 10C17.25 10.6904 16.6904 11.25 16 11.25H14.75Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'augmented-reality',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M14.0002 7.25C13.586 7.25 13.2502 7.58579 13.2502 8V16C13.2502 16.4142 13.586 16.75 14.0002 16.75C14.4144 16.75 14.7502 16.4142 14.7502 16V12.75H15.0845L17.3642 16.3975C17.5837 16.7488 18.0464 16.8555 18.3977 16.636C18.749 16.4165 18.8557 15.9538 18.6362 15.6025L16.7828 12.637C17.9203 12.3 18.7502 11.2469 18.7502 10C18.7502 8.48122 17.519 7.25 16.0002 7.25H14.0002ZM14.7502 8.75V11.25H16.0002C16.6906 11.25 17.2502 10.6904 17.2502 10C17.2502 9.30964 16.6906 8.75 16.0002 8.75H14.7502Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M9.21606 7.77629C9.11822 7.46319 8.82824 7.25 8.5002 7.25C8.17216 7.25 7.88219 7.46319 7.78434 7.77629L5.28434 15.7763C5.16079 16.1717 5.38114 16.5923 5.77649 16.7159C6.17185 16.8394 6.59251 16.6191 6.71606 16.2237L7.42659 13.95H9.57381L10.2843 16.2237C10.4079 16.6191 10.8285 16.8394 11.2239 16.7159C11.6193 16.5923 11.8396 16.1717 11.7161 15.7763L9.21606 7.77629ZM7.89534 12.45H9.10506L8.5002 10.5145L7.89534 12.45Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'augmented-reality',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M6 16L8.5 8L11 16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6.875 13.2002H10.125" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 8H14V12H15.5H16C17.1046 12 18 11.1046 18 10C18 8.89543 17.1046 8 16 8Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14 16V12V8" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 12L18 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C21.5093 4.43821 21.8356 5.80655 21.9449 8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'augmented-reality',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 16L8.5 8L11 16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6.875 13.2002H10.125" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 8H14V12H15.5H16C17.1046 12 18 11.1046 18 10C18 8.89543 17.1046 8 16 8Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14 16V12V8" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 12L18 16" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'augmented-reality',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M6 16L8.5 8L11 16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6.875 13.2002H10.125" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 8H14V12H15.5H16C17.1046 12 18 11.1046 18 10C18 8.89543 17.1046 8 16 8Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14 16V12V8" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 12L18 16" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'augmented-reality',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16 7.25C17.5188 7.25 18.75 8.48122 18.75 10C18.75 11.2469 17.9198 12.2996 16.7822 12.6367L18.6357 15.6025C18.8553 15.9538 18.7486 16.4162 18.3975 16.6357C18.0462 16.8553 17.5838 16.7486 17.3643 16.3975L15.084 12.75H14.75V16C14.75 16.4142 14.4142 16.75 14 16.75C13.5858 16.75 13.25 16.4142 13.25 16V8C13.25 7.58579 13.5858 7.25 14 7.25H16ZM14.75 11.25H16C16.6904 11.25 17.25 10.6904 17.25 10C17.25 9.30964 16.6904 8.75 16 8.75H14.75V11.25Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M8.5 7.25C8.82804 7.25 9.11798 7.46326 9.21582 7.77637L11.7158 15.7764C11.8393 16.1717 11.619 16.5923 11.2236 16.7158C10.8283 16.8393 10.4077 16.619 10.2842 16.2236L9.57324 13.9502H7.42676L6.71582 16.2236C6.59228 16.619 6.17171 16.8393 5.77637 16.7158C5.38103 16.5923 5.16067 16.1717 5.28418 15.7764L7.78418 7.77637C7.88203 7.46326 8.17196 7.25 8.5 7.25ZM7.89551 12.4502H9.10449L8.5 10.5146L7.89551 12.4502Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12.0576 1.25C14.3657 1.24999 16.1746 1.24974 17.5859 1.43945C19.0307 1.63369 20.1706 2.03976 21.0654 2.93457C21.9602 3.82938 22.3663 4.96933 22.5605 6.41406C22.7503 7.82544 22.75 9.63432 22.75 11.9424V12.0576C22.75 14.3657 22.7503 16.1746 22.5605 17.5859C22.3663 19.0307 21.9602 20.1706 21.0654 21.0654C20.1706 21.9602 19.0307 22.3663 17.5859 22.5605C16.1746 22.7503 14.3657 22.75 12.0576 22.75H11.9424C9.63432 22.75 7.82544 22.7503 6.41406 22.5605C4.96933 22.3663 3.82938 21.9602 2.93457 21.0654C2.03976 20.1706 1.63369 19.0307 1.43945 17.5859C1.24974 16.1746 1.24999 14.3657 1.25 12.0576V11.9424C1.24999 9.63432 1.24974 7.82544 1.43945 6.41406C1.63369 4.96933 2.03976 3.82938 2.93457 2.93457C3.82938 2.03976 4.96933 1.63369 6.41406 1.43945C7.82544 1.24974 9.63431 1.24999 11.9424 1.25H12.0576ZM12 2.75C9.62177 2.75 7.91326 2.75198 6.61328 2.92676C5.33508 3.09865 4.56472 3.42551 3.99512 3.99512C3.42551 4.56472 3.09865 5.33508 2.92676 6.61328C2.75198 7.91326 2.75 9.62177 2.75 12C2.75 14.3782 2.75198 16.0867 2.92676 17.3867C3.09865 18.6649 3.42551 19.4353 3.99512 20.0049C4.56472 20.5745 5.33508 20.9014 6.61328 21.0732C7.91326 21.248 9.62177 21.25 12 21.25C14.3782 21.25 16.0867 21.248 17.3867 21.0732C18.6649 20.9014 19.4353 20.5745 20.0049 20.0049C20.5745 19.4353 20.9014 18.6649 21.0732 17.3867C21.248 16.0867 21.25 14.3782 21.25 12C21.25 9.62177 21.248 7.91326 21.0732 6.61328C20.9014 5.33508 20.5745 4.56472 20.0049 3.99512C19.4353 3.42551 18.6649 3.09865 17.3867 2.92676C16.0867 2.75198 14.3782 2.75 12 2.75Z" fill="currentColor"/>''',
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
