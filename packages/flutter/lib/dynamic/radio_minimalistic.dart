// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `radio-minimalistic` icon in every style.
///
/// Prefer the static widgets (e.g. `RadioMinimalisticLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class RadioMinimalisticIcon extends StatelessWidget {
  /// Creates the `radio-minimalistic` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const RadioMinimalisticIcon({
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
    name: 'radio-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.75 14C5.75 12.7574 6.75736 11.75 8 11.75C9.24264 11.75 10.25 12.7574 10.25 14C10.25 15.2426 9.24264 16.25 8 16.25C6.75736 16.25 5.75 15.2426 5.75 14Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M15.3195 3.67879C15.6943 3.50242 15.8552 3.05562 15.6788 2.68083C15.5024 2.30604 15.0556 2.14519 14.6808 2.32156L6.76692 6.04575C5.03147 6.13486 3.94566 6.39749 3.17157 7.17157C2 8.34315 2 10.2288 2 14C2 17.7712 2 19.6569 3.17157 20.8284C4.34315 22 6.22876 22 10 22H14C17.7712 22 19.6569 22 20.8284 20.8284C22 19.6569 22 17.7712 22 14C22 10.2288 22 8.34314 20.8284 7.17157C19.6569 6 17.7712 6 14 6H10.387L15.3195 3.67879ZM8 10.25C5.92893 10.25 4.25 11.9289 4.25 14C4.25 16.0711 5.92893 17.75 8 17.75C10.0711 17.75 11.75 16.0711 11.75 14C11.75 11.9289 10.0711 10.25 8 10.25ZM12.75 11C12.75 10.5858 13.0858 10.25 13.5 10.25H19C19.4142 10.25 19.75 10.5858 19.75 11C19.75 11.4142 19.4142 11.75 19 11.75H13.5C13.0858 11.75 12.75 11.4142 12.75 11ZM13.5 13.25C13.0858 13.25 12.75 13.5858 12.75 14C12.75 14.4142 13.0858 14.75 13.5 14.75H19C19.4142 14.75 19.75 14.4142 19.75 14C19.75 13.5858 19.4142 13.25 19 13.25H13.5ZM12.75 17C12.75 16.5858 13.0858 16.25 13.5 16.25H19C19.4142 16.25 19.75 16.5858 19.75 17C19.75 17.4142 19.4142 17.75 19 17.75H13.5C13.0858 17.75 12.75 17.4142 12.75 17Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'radio-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8 10.25C10.0711 10.25 11.75 11.929 11.75 14C11.75 16.0711 10.0711 17.75 8 17.75C5.92893 17.75 4.25 16.0711 4.25 14C4.25 11.929 5.92893 10.25 8 10.25Z" fill="currentColor"/>
<path d="M19 16.25C19.4142 16.25 19.75 16.5858 19.75 17C19.75 17.4143 19.4142 17.75 19 17.75H13.5C13.0858 17.75 12.75 17.4143 12.75 17C12.75 16.5858 13.0858 16.25 13.5 16.25H19Z" fill="currentColor"/>
<path d="M19 13.25C19.4142 13.25 19.75 13.5858 19.75 14C19.75 14.4143 19.4142 14.75 19 14.75H13.5C13.0858 14.75 12.75 14.4143 12.75 14C12.75 13.5858 13.0858 13.25 13.5 13.25H19Z" fill="currentColor"/>
<path d="M19 10.25C19.4142 10.25 19.75 10.5858 19.75 11C19.75 11.4143 19.4142 11.75 19 11.75H13.5C13.0858 11.75 12.75 11.4143 12.75 11C12.75 10.5858 13.0858 10.25 13.5 10.25H19Z" fill="currentColor"/>
<path d="M14.6191 1.35356C14.9762 1.14355 15.4365 1.26314 15.6465 1.62016C15.8562 1.97711 15.7367 2.43657 15.3799 2.64653L9.67871 6.00004C8.47696 6.00036 7.47447 6.00484 6.62988 6.05376L14.6191 1.35356Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 14C2 10.2288 2 8.34315 3.17157 7.17157C4.34315 6 6.22876 6 10 6H14C17.7712 6 19.6569 6 20.8284 7.17157C22 8.34315 22 10.2288 22 14C22 17.7712 22 19.6569 20.8284 20.8284C19.6569 22 17.7712 22 14 22H10C6.22876 22 4.34315 22 3.17157 20.8284C2 19.6569 2 17.7712 2 14Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'radio-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 14C22 17.7712 22 19.6569 20.8284 20.8284C19.6569 22 17.7712 22 14 22H10C6.22876 22 4.34315 22 3.17157 20.8284C2 19.6569 2 17.7712 2 14C2 10.2288 2 8.34315 3.17157 7.17157C4.34315 6 6.22876 6 10 6H14C17.7712 6 19.6569 6 20.8284 7.17157C21.4816 7.82475 21.7706 8.69989 21.8985 10" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8" cy="14" r="3" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 11H19" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 14H14M19 14H16.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 17H13.5M19 17H18.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.5 6L15 2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'radio-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 14C2 10.2288 2 8.34315 3.17157 7.17157C4.34315 6 6.22876 6 10 6H14C17.7712 6 19.6569 6 20.8284 7.17157C22 8.34315 22 10.2288 22 14C22 17.7712 22 19.6569 20.8284 20.8284C19.6569 22 17.7712 22 14 22H10C6.22876 22 4.34315 22 3.17157 20.8284C2 19.6569 2 17.7712 2 14Z" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8" cy="14" r="3" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 11H19" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 14H19" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 17H19" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.5 6L15 2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'radio-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 14C2 10.2288 2 8.34315 3.17157 7.17157C4.34315 6 6.22876 6 10 6H14C17.7712 6 19.6569 6 20.8284 7.17157C22 8.34315 22 10.2288 22 14C22 17.7712 22 19.6569 20.8284 20.8284C19.6569 22 17.7712 22 14 22H10C6.22876 22 4.34315 22 3.17157 20.8284C2 19.6569 2 17.7712 2 14Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 11H19" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 17H19" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.5 6L15 2" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="8" cy="14" r="3" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M13.5 14H19" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'radio-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M15.6786 1.68083C15.855 2.05562 15.6941 2.50242 15.3193 2.67879L9.85515 5.25018C9.88453 5.25018 9.91401 5.25018 9.94358 5.25018H14.0564C15.8942 5.25016 17.3498 5.25015 18.489 5.40331C19.6614 5.56094 20.6104 5.89306 21.3588 6.64142C22.1071 7.38978 22.4392 8.33873 22.5969 9.51115C22.75 10.6504 22.75 12.106 22.75 13.9438V14.0566C22.75 15.8944 22.75 17.35 22.5969 18.4892C22.4392 19.6616 22.1071 20.6106 21.3588 21.3589C20.6104 22.1073 19.6614 22.4394 18.489 22.597C17.3498 22.7502 15.8942 22.7502 14.0564 22.7502H9.94359C8.10583 22.7502 6.65019 22.7502 5.51098 22.597C4.33856 22.4394 3.38961 22.1073 2.64124 21.3589C1.89288 20.6106 1.56076 19.6616 1.40314 18.4892C1.24997 17.35 1.24998 15.8944 1.25 14.0566V13.9438C1.24998 12.106 1.24997 10.6504 1.40314 9.51115C1.56076 8.33873 1.89288 7.38978 2.64124 6.64142C3.38961 5.89306 4.33856 5.56094 5.51098 5.40331C5.71495 5.37589 5.92907 5.35337 6.15372 5.33489C6.16257 5.33029 6.17155 5.32585 6.18065 5.32156L14.6807 1.32156C15.0554 1.14519 15.5022 1.30604 15.6786 1.68083ZM5.71085 6.88994C4.70476 7.0252 4.12511 7.27887 3.7019 7.70208C3.27869 8.12529 3.02502 8.70494 2.88976 9.71103C2.75159 10.7387 2.75 12.0934 2.75 14.0002C2.75 15.907 2.75159 17.2617 2.88976 18.2893C3.02502 19.2954 3.27869 19.8751 3.7019 20.2983C4.12511 20.7215 4.70476 20.9752 5.71085 21.1104C6.73851 21.2486 8.09318 21.2502 10 21.2502H14C15.9068 21.2502 17.2615 21.2486 18.2892 21.1104C19.2952 20.9752 19.8749 20.7215 20.2981 20.2983C20.7213 19.8751 20.975 19.2954 21.1102 18.2893C21.2484 17.2617 21.25 15.907 21.25 14.0002C21.25 12.0934 21.2484 10.7387 21.1102 9.71103C20.975 8.70494 20.7213 8.12529 20.2981 7.70208C19.8749 7.27887 19.2952 7.0252 18.2892 6.88994C17.2615 6.75177 15.9068 6.75018 14 6.75018H10C8.09318 6.75018 6.73851 6.75177 5.71085 6.88994ZM8 11.7502C6.75736 11.7502 5.75 12.7575 5.75 14.0002C5.75 15.2428 6.75736 16.2502 8 16.2502C9.24264 16.2502 10.25 15.2428 10.25 14.0002C10.25 12.7575 9.24264 11.7502 8 11.7502ZM4.25 14.0002C4.25 11.9291 5.92893 10.2502 8 10.2502C10.0711 10.2502 11.75 11.9291 11.75 14.0002C11.75 16.0712 10.0711 17.7502 8 17.7502C5.92893 17.7502 4.25 16.0712 4.25 14.0002ZM12.75 11.0002C12.75 10.586 13.0858 10.2502 13.5 10.2502H19C19.4142 10.2502 19.75 10.586 19.75 11.0002C19.75 11.4144 19.4142 11.7502 19 11.7502H13.5C13.0858 11.7502 12.75 11.4144 12.75 11.0002ZM12.75 14.0002C12.75 13.586 13.0858 13.2502 13.5 13.2502H19C19.4142 13.2502 19.75 13.586 19.75 14.0002C19.75 14.4144 19.4142 14.7502 19 14.7502H13.5C13.0858 14.7502 12.75 14.4144 12.75 14.0002ZM12.75 17.0002C12.75 16.586 13.0858 16.2502 13.5 16.2502H19C19.4142 16.2502 19.75 16.586 19.75 17.0002C19.75 17.4144 19.4142 17.7502 19 17.7502H13.5C13.0858 17.7502 12.75 17.4144 12.75 17.0002Z" fill="currentColor"/>''',
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
