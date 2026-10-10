// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cart-5` icon in every style.
///
/// Prefer the static widgets (e.g. `Cart5LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Cart5Icon extends StatelessWidget {
  /// Creates the `cart-5` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const Cart5Icon({
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
    name: 'cart-5',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M14.6646 2.32919C15.0351 2.14395 15.4856 2.29412 15.6708 2.6646L17.872 7.06692C19.2251 7.17087 20.0742 7.43628 20.6221 8.11398C21.5226 9.22795 21.1634 10.9044 20.4449 14.2572L20.0164 16.2572C19.5294 18.5297 19.2859 19.666 18.4608 20.333C17.6357 21 16.4737 21 14.1495 21H9.85053C7.52639 21 6.36432 21 5.53925 20.333C4.71418 19.666 4.47069 18.5297 3.98372 16.2572L3.55514 14.2572C2.83668 10.9044 2.47745 9.22795 3.378 8.11398C3.92585 7.43629 4.77494 7.17088 6.12802 7.06693L8.32918 2.6646C8.51442 2.29412 8.96493 2.14395 9.33541 2.32919C9.70589 2.51443 9.85606 2.96494 9.67082 3.33542L7.83589 7.00528C8.31911 7.00001 8.84638 7.00001 9.42196 7.00001H14.5781C15.1537 7.00001 15.6809 7.00001 16.1641 7.00528L14.3292 3.33542C14.1439 2.96494 14.2941 2.51443 14.6646 2.32919ZM7.25 12C7.25 11.5858 7.58579 11.25 8 11.25H16C16.4142 11.25 16.75 11.5858 16.75 12C16.75 12.4142 16.4142 12.75 16 12.75H8C7.58579 12.75 7.25 12.4142 7.25 12ZM10 14.25C9.58579 14.25 9.25 14.5858 9.25 15C9.25 15.4142 9.58579 15.75 10 15.75H14C14.4142 15.75 14.75 15.4142 14.75 15C14.75 14.5858 14.4142 14.25 14 14.25H10Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'cart-5',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.0005 14.25C14.4144 14.2502 14.7504 14.586 14.7505 15C14.7505 15.414 14.4145 15.7497 14.0005 15.75H10.0005C9.58628 15.75 9.25049 15.4142 9.25049 15C9.25058 14.5858 9.58633 14.25 10.0005 14.25H14.0005Z" fill="currentColor"/>
<path d="M16.0005 11.25C16.4144 11.2502 16.7504 11.586 16.7505 12C16.7505 12.414 16.4145 12.7497 16.0005 12.75H8.00049C7.58628 12.75 7.25049 12.4142 7.25049 12C7.25058 11.5858 7.58633 11.25 8.00049 11.25H16.0005Z" fill="currentColor"/>
<path d="M8.32862 2.66502C8.51386 2.29454 8.96497 2.14384 9.33545 2.32908C9.7058 2.51439 9.85563 2.9655 9.67042 3.33592L6.67042 9.33592C6.48511 9.7061 6.0349 9.85592 5.66456 9.67088C5.29418 9.48569 5.14363 9.03544 5.32862 8.66502L8.32862 2.66502Z" fill="currentColor"/>
<path d="M14.6646 2.32908C15.035 2.14384 15.4862 2.29454 15.6714 2.66502L18.6714 8.66502C18.8563 9.03543 18.7058 9.4857 18.3355 9.67088C17.9651 9.85601 17.5149 9.7061 17.3296 9.33592L14.3296 3.33592C14.1444 2.96546 14.2941 2.51435 14.6646 2.32908Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.55514 14.2572C2.83668 10.9043 2.47745 9.22793 3.378 8.11397C4.27855 7 5.99302 7 9.42196 7H14.5781C18.0071 7 19.7215 7 20.6221 8.11397C21.5226 9.22793 21.1634 10.9043 20.4449 14.2572L20.0164 16.2572C19.5294 18.5297 19.2859 19.666 18.4608 20.333C17.6357 21 16.4737 21 14.1495 21H9.85053C7.52639 21 6.36432 21 5.53925 20.333C4.71418 19.666 4.47069 18.5297 3.98372 16.2572L3.55514 14.2572Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'cart-5',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20.0164 16.2572C19.5294 18.5297 19.2859 19.666 18.4608 20.333C17.6357 21 16.4737 21 14.1495 21H9.85053C7.52639 21 6.36432 21 5.53925 20.333C4.71418 19.666 4.47069 18.5297 3.98372 16.2572L3.55514 14.2572C2.83668 10.9043 2.47745 9.22793 3.378 8.11397C4.27855 7 5.99302 7 9.42196 7H14.5781C18.0071 7 19.7215 7 20.6221 8.11397C21.2929 8.94376 21.2647 10.0856 20.9097 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 12H12M9 12H8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10 15H14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 9L15 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 9L9 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'cart-5',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3.55514 14.2572C2.83668 10.9043 2.47745 9.22793 3.378 8.11397C4.27855 7 5.99302 7 9.42196 7H14.5781C18.0071 7 19.7215 7 20.6221 8.11397C21.5226 9.22793 21.1634 10.9043 20.4449 14.2572L20.0164 16.2572C19.5294 18.5297 19.2859 19.666 18.4608 20.333C17.6357 21 16.4737 21 14.1495 21H9.85053C7.52639 21 6.36432 21 5.53925 20.333C4.71418 19.666 4.47069 18.5297 3.98372 16.2572L3.55514 14.2572Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 12H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10 15H14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 9L15 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 9L9 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'cart-5',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3.55514 14.2572C2.83668 10.9043 2.47745 9.22793 3.378 8.11397C4.27855 7 5.99302 7 9.42196 7H14.5781C18.0071 7 19.7215 7 20.6221 8.11397C21.5226 9.22793 21.1634 10.9043 20.4449 14.2572L20.0164 16.2572C19.5294 18.5297 19.2859 19.666 18.4608 20.333C17.6357 21 16.4737 21 14.1495 21H9.85053C7.52639 21 6.36432 21 5.53925 20.333C4.71418 19.666 4.47069 18.5297 3.98372 16.2572L3.55514 14.2572Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M8 12H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M10 15H14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M18 9L15 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M6 9L9 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'cart-5',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M7.24995 12C7.24995 11.5858 7.58573 11.25 7.99995 11.25H15.9999C16.4142 11.25 16.7499 11.5858 16.7499 12C16.7499 12.4142 16.4142 12.75 15.9999 12.75H7.99995C7.58573 12.75 7.24995 12.4142 7.24995 12Z" fill="currentColor"/>
<path d="M9.99995 14.25C9.58573 14.25 9.24995 14.5858 9.24995 15C9.24995 15.4142 9.58573 15.75 9.99995 15.75H13.9999C14.4142 15.75 14.7499 15.4142 14.7499 15C14.7499 14.5858 14.4142 14.25 13.9999 14.25H9.99995Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M14.6645 2.32919C15.035 2.14395 15.4855 2.29412 15.6708 2.6646L17.4841 6.2912C17.9116 6.31294 18.3015 6.34614 18.6548 6.39687C19.7105 6.54845 20.5843 6.87432 21.2053 7.64247C21.8263 8.41062 21.9618 9.33329 21.8888 10.3973C21.8181 11.4285 21.5394 12.7289 21.191 14.3545L20.7396 16.4612C20.5047 17.5577 20.3141 18.4471 20.0743 19.1419C19.8244 19.866 19.4949 20.4614 18.9323 20.9163C18.3696 21.3711 17.7184 21.5685 16.958 21.6611C16.2284 21.75 15.3188 21.75 14.1974 21.75H9.80252C8.6812 21.75 7.77159 21.75 7.04196 21.6611C6.28159 21.5685 5.63033 21.3711 5.06769 20.9163C4.50505 20.4614 4.17561 19.866 3.92569 19.1419C3.68586 18.4471 3.49529 17.5577 3.26035 16.4612L2.80893 14.3546C2.46055 12.7289 2.18188 11.4285 2.11115 10.3973C2.03816 9.33329 2.17371 8.41062 2.7947 7.64247C3.41568 6.87432 4.28947 6.54845 5.34519 6.39687C5.69846 6.34615 6.08832 6.31294 6.51583 6.2912L8.32913 2.6646C8.51437 2.29412 8.96487 2.14395 9.33536 2.32919C9.70584 2.51443 9.85601 2.96494 9.67077 3.33542L8.21244 6.25207C8.576 6.25 8.95865 6.25001 9.36076 6.25001H14.6392C15.0412 6.25001 15.424 6.25 15.7875 6.25207L14.3291 3.33542C14.1439 2.96494 14.2941 2.51443 14.6645 2.32919ZM5.73206 7.85873L5.32913 8.6646C5.14388 9.03509 5.29405 9.48559 5.66454 9.67083C6.03502 9.85607 6.48553 9.70591 6.67077 9.33542L7.45802 7.76092C8.02842 7.75035 8.67786 7.75001 9.42191 7.75001H14.5781C15.3221 7.75001 15.9715 7.75035 16.5419 7.76092L17.3291 9.33542C17.5144 9.70591 17.9649 9.85607 18.3354 9.67083C18.7058 9.48559 18.856 9.03509 18.6708 8.6646L18.2678 7.85872C18.327 7.86588 18.3849 7.87351 18.4416 7.88164C19.3255 8.00855 19.7592 8.23967 20.0388 8.58549C20.3183 8.93131 20.4534 9.40383 20.3923 10.2947C20.3298 11.2058 20.0756 12.4008 19.7115 14.1L19.2829 16.1C19.0355 17.2546 18.8629 18.0541 18.6564 18.6525C18.4565 19.2314 18.2517 19.5376 17.9893 19.7498C17.7268 19.9619 17.3845 20.0981 16.7766 20.1721C16.1482 20.2487 15.3302 20.25 14.1495 20.25H9.85048C8.66972 20.25 7.85175 20.2487 7.22341 20.1721C6.61545 20.0981 6.27314 19.9619 6.01071 19.7498C5.74827 19.5376 5.54343 19.2314 5.3436 18.6525C5.13707 18.0541 4.96442 17.2546 4.71701 16.1L4.28844 14.1C3.92432 12.4008 3.67013 11.2058 3.60763 10.2947C3.54652 9.40383 3.68163 8.93131 3.9612 8.58549C4.24076 8.23967 4.67449 8.00855 5.55837 7.88164C5.61501 7.87351 5.67289 7.86588 5.73206 7.85873Z" fill="currentColor"/>''',
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
