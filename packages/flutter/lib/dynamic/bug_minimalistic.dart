// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bug-minimalistic` icon in every style.
///
/// Prefer the static widgets (e.g. `BugMinimalisticLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class BugMinimalisticIcon extends StatelessWidget {
  /// Creates the `bug-minimalistic` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const BugMinimalisticIcon({
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
    name: 'bug-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.422 3.1787L7.38587 1.35699C7.03069 1.14388 6.56999 1.25906 6.35688 1.61424C6.14377 1.96943 6.25894 2.43012 6.61413 2.64323L8.63912 3.85823C7.33296 4.57449 6.28013 5.69528 5.64925 7.05199L3.77867 6.30376C3.39408 6.14992 2.9576 6.33698 2.80376 6.72157C2.64993 7.10616 2.83699 7.54264 3.22158 7.69647L5.16673 8.47453C5.05757 8.96563 5 9.47615 5 10.0001V12.2501H2C1.58579 12.2501 1.25 12.5859 1.25 13.0001C1.25 13.4143 1.58579 13.7501 2 13.7501H5V15.0001C5 15.8509 5.15179 16.6663 5.42978 17.4206L3.22146 18.304C2.83687 18.4578 2.64981 18.8943 2.80364 19.2789C2.95748 19.6634 3.39396 19.8505 3.77854 19.6967L6.09969 18.7682C7.34348 20.7118 9.52129 22.0001 12 22.0001C14.4787 22.0001 16.6565 20.7118 17.9003 18.7682L20.2215 19.6967C20.606 19.8505 21.0425 19.6634 21.1964 19.2789C21.3502 18.8943 21.1631 18.4578 20.7785 18.304L18.5702 17.4206C18.8482 16.6663 19 15.8509 19 15.0001V13.7501H22C22.4142 13.7501 22.75 13.4143 22.75 13.0001C22.75 12.5859 22.4142 12.2501 22 12.2501H19V10.0001C19 9.47616 18.9424 8.96565 18.8333 8.47457L20.7784 7.69647C21.163 7.54262 21.3501 7.10614 21.1962 6.72156C21.0424 6.33697 20.6059 6.14992 20.2213 6.30376L18.3508 7.05202C17.7199 5.6953 16.6671 4.57449 15.3609 3.85823L17.3859 2.64323C17.7411 2.43012 17.8562 1.96943 17.6431 1.61424C17.43 1.25906 16.9693 1.14388 16.6141 1.35699L13.578 3.1787C13.0708 3.06186 12.5426 3.00012 12 3.00012C11.4574 3.00012 10.9292 3.06186 10.422 3.1787ZM10.5 9.75012C10.0858 9.75012 9.75 10.0859 9.75 10.5001C9.75 10.9143 10.0858 11.2501 10.5 11.2501H13.5C13.9142 11.2501 14.25 10.9143 14.25 10.5001C14.25 10.0859 13.9142 9.75012 13.5 9.75012H10.5ZM9.75 15.5001C9.75 15.0859 10.0858 14.7501 10.5 14.7501H13.5C13.9142 14.7501 14.25 15.0859 14.25 15.5001C14.25 15.9143 13.9142 16.2501 13.5 16.2501H10.5C10.0858 16.2501 9.75 15.9143 9.75 15.5001Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'bug-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M5.44141 17.4522C5.60567 17.8913 5.81277 18.31 6.05762 18.7022C5.98315 18.785 5.88875 18.8523 5.77832 18.8965L3.77832 19.6963C3.3939 19.85 2.95769 19.6636 2.80371 19.2793C2.64988 18.8947 2.83709 18.4576 3.22168 18.3037L5.22168 17.5039C5.29385 17.4751 5.3678 17.458 5.44141 17.4522Z" fill="currentColor"/>
<path d="M18.5586 17.4522C18.6322 17.458 18.7062 17.4751 18.7783 17.5039L20.7783 18.3037C21.1629 18.4576 21.3501 18.8947 21.1963 19.2793C21.0423 19.6636 20.6061 19.85 20.2217 19.6963L18.2217 18.8965C18.1112 18.8523 18.0168 18.785 17.9424 18.7022C18.1872 18.31 18.3943 17.8913 18.5586 17.4522Z" fill="currentColor"/>
<path d="M13.5 14.75C13.9142 14.75 14.25 15.0858 14.25 15.5C14.25 15.9142 13.9142 16.25 13.5 16.25H10.5C10.0858 16.25 9.75 15.9142 9.75 15.5C9.75 15.0858 10.0858 14.75 10.5 14.75H13.5Z" fill="currentColor"/>
<path d="M5 13.75H2C1.58579 13.75 1.25 13.4142 1.25 13C1.25004 12.5859 1.58581 12.25 2 12.25H5V13.75Z" fill="currentColor"/>
<path d="M22 12.25C22.4142 12.25 22.75 12.5859 22.75 13C22.75 13.4142 22.4142 13.75 22 13.75H19V12.25H22Z" fill="currentColor"/>
<path d="M13.5 9.75003C13.9142 9.75003 14.25 10.0858 14.25 10.5C14.25 10.9142 13.9142 11.25 13.5 11.25H10.5C10.0858 11.25 9.75 10.9142 9.75 10.5C9.75 10.0858 10.0858 9.75003 10.5 9.75003H13.5Z" fill="currentColor"/>
<path d="M2.80371 6.72171C2.95751 6.33722 3.39381 6.15013 3.77832 6.30374L5.57617 7.02249C5.60069 7.0323 5.62459 7.04368 5.64746 7.0557C5.44123 7.49989 5.2798 7.96925 5.16992 8.45804C5.11947 8.44925 5.06898 8.4358 5.01953 8.41605L3.22168 7.69632C2.83714 7.54251 2.64998 7.10627 2.80371 6.72171Z" fill="currentColor"/>
<path d="M20.2217 6.30374C20.6062 6.15013 21.0425 6.33723 21.1963 6.72171C21.35 7.10627 21.1629 7.54251 20.7783 7.69632L18.9805 8.41605C18.931 8.4358 18.8805 8.44925 18.8301 8.45804C18.7202 7.96925 18.5588 7.49989 18.3525 7.0557C18.3754 7.04368 18.3993 7.0323 18.4238 7.02249L20.2217 6.30374Z" fill="currentColor"/>
<path d="M6.37598 1.58402C6.60575 1.23943 7.07139 1.14629 7.41602 1.37601L10.2021 3.23343C9.60992 3.3904 9.04797 3.6226 8.52832 3.91995L6.58398 2.62406C6.23937 2.39428 6.14622 1.92865 6.37598 1.58402Z" fill="currentColor"/>
<path d="M16.584 1.37601C16.9286 1.14629 17.3943 1.23943 17.624 1.58402C17.8538 1.92865 17.7606 2.39428 17.416 2.62406L15.4717 3.91995C14.952 3.6226 14.3901 3.3904 13.7979 3.23343L16.584 1.37601Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5 10C5 6.13401 8.13401 3 12 3C15.866 3 19 6.13401 19 10V15C19 18.866 15.866 22 12 22C8.13401 22 5 18.866 5 15V10Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'bug-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 22C8.13401 22 5 18.866 5 15V10C5 6.13401 8.13401 3 12 3C15.866 3 19 6.13401 19 10V15C19 16.9587 18.1955 18.7295 16.899 20" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 13H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 13H2" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.4999 7L18.7021 7.71909" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.50012 7L5.29785 7.71909" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 3.5L17 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.5 3.5L7 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.5 19.0002L18.5 18.2002" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.5 19.0002L5.5 18.2002" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 10.5H13.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 15.5H13.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'bug-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M5 10C5 6.13401 8.13401 3 12 3C15.866 3 19 6.13401 19 10V15C19 18.866 15.866 22 12 22C8.13401 22 5 18.866 5 15V10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 13H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 13H2" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.4999 7L18.7021 7.71909" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.50012 7L5.29785 7.71909" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 3.5L17 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.5 3.5L7 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.5 19.0002L18.5 18.2002" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.5 19.0002L5.5 18.2002" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 10.5H13.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 15.5H13.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'bug-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5 10C5 6.13401 8.13401 3 12 3C15.866 3 19 6.13401 19 10V15C19 18.866 15.866 22 12 22C8.13401 22 5 18.866 5 15V10Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M19 13H22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5 13H2" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20.4999 7L18.7021 7.71909" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M3.50012 7L5.29785 7.71909" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14.5 3.5L17 2" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M9.5 3.5L7 2" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20.5 19.0002L18.5 18.2002" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M3.5 19.0002L5.5 18.2002" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10.5 10.5H13.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10.5 15.5H13.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'bug-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M9.75 10.5001C9.75 10.0859 10.0858 9.75011 10.5 9.75011H13.5C13.9142 9.75011 14.25 10.0859 14.25 10.5001C14.25 10.9143 13.9142 11.2501 13.5 11.2501H10.5C10.0858 11.2501 9.75 10.9143 9.75 10.5001Z" fill="currentColor"/>
<path d="M10.5 14.7501C10.0858 14.7501 9.75 15.0859 9.75 15.5001C9.75 15.9143 10.0858 16.2501 10.5 16.2501H13.5C13.9142 16.2501 14.25 15.9143 14.25 15.5001C14.25 15.0859 13.9142 14.7501 13.5 14.7501H10.5Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M17.6431 1.61424C17.8562 1.96943 17.7411 2.43012 17.3859 2.64323L16.0939 3.41842C17.3788 4.21936 18.4122 5.38612 19.0482 6.773L20.2213 6.30376C20.6059 6.14992 21.0424 6.33698 21.1962 6.72157C21.3501 7.10616 21.163 7.54264 20.7784 7.69647L19.5381 8.1926C19.6766 8.77252 19.75 9.37775 19.75 10.0001V12.2501H22C22.4142 12.2501 22.75 12.5859 22.75 13.0001C22.75 13.4143 22.4142 13.7501 22 13.7501H19.75V15.0001C19.75 15.9494 19.5793 16.8588 19.267 17.6993L20.7785 18.304C21.1631 18.4578 21.3502 18.8943 21.1964 19.2789C21.0425 19.6634 20.606 19.8505 20.2215 19.6967L18.6081 19.0513C17.2448 21.2703 14.7952 22.7501 12 22.7501C9.20476 22.7501 6.75516 21.2703 5.39189 19.0513L3.77854 19.6967C3.39396 19.8505 2.95748 19.6634 2.80364 19.2789C2.64981 18.8943 2.83687 18.4578 3.22146 18.304L4.733 17.6993C4.42067 16.8588 4.25 15.9494 4.25 15.0001V13.7501H2C1.58579 13.7501 1.25 13.4143 1.25 13.0001C1.25 12.5859 1.58579 12.2501 2 12.2501H4.25V10.0001C4.25 9.37775 4.32336 8.77252 4.46191 8.1926L3.22158 7.69647C2.83699 7.54264 2.64993 7.10616 2.80376 6.72157C2.9576 6.33698 3.39408 6.14992 3.77867 6.30376L4.95178 6.773C5.58782 5.38612 6.62116 4.21936 7.9061 3.41842L6.61413 2.64323C6.25894 2.43012 6.14377 1.96943 6.35688 1.61424C6.56999 1.25906 7.03069 1.14388 7.38587 1.35699L9.53916 2.64897C10.3123 2.39026 11.1398 2.25011 12 2.25011C12.8602 2.25011 13.6877 2.39026 14.4608 2.64897L16.6141 1.35699C16.9693 1.14388 17.43 1.25906 17.6431 1.61424ZM9.5502 4.2485C9.69997 4.23832 9.84516 4.18339 9.96484 4.08895C10.6028 3.86935 11.2875 3.75011 12 3.75011C12.7125 3.75011 13.3972 3.86934 14.0352 4.08894C14.1548 4.18339 14.3 4.23832 14.4498 4.2485C16.684 5.20132 18.25 7.41783 18.25 10.0001V15.0001C18.25 18.4519 15.4518 21.2501 12 21.2501C8.54822 21.2501 5.75 18.4519 5.75 15.0001V10.0001C5.75 7.41783 7.31604 5.20132 9.5502 4.2485Z" fill="currentColor"/>''',
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
