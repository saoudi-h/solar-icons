// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `webcam` icon in every style.
///
/// Prefer the static widgets (e.g. `WebcamLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class WebcamIcon extends StatelessWidget {
  /// Creates the `webcam` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const WebcamIcon({
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
    name: 'webcam',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.9998 7.74929C13.2423 7.74929 14.2496 8.75677 14.2498 9.99929C14.2495 11.2417 13.2423 12.2493 11.9998 12.2493C10.7574 12.2491 9.75002 11.2416 9.74978 9.99929C9.74992 8.75687 10.7574 7.74945 11.9998 7.74929Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9353 2.00026C16.3533 2.03592 19.9639 5.64578 19.9998 10.0637C20.0333 14.2513 16.8429 17.659 12.7478 17.9729C12.7482 17.9827 12.7498 17.9924 12.7498 18.0022V21.2493H15.9998C16.4139 21.2493 16.7496 21.5852 16.7498 21.9993C16.7498 22.4135 16.414 22.7493 15.9998 22.7493H7.99978C7.58568 22.7491 7.24978 22.4134 7.24978 21.9993C7.24992 21.5853 7.58577 21.2494 7.99978 21.2493H11.2498V18.0022C11.2498 17.9848 11.2506 17.9676 11.2517 17.9505C7.21221 17.5106 4.03442 14.0784 4.00075 9.93483C3.96519 5.51684 7.51734 1.96472 11.9353 2.00026ZM11.9998 6.24929C9.92894 6.24945 8.24992 7.92844 8.24978 9.99929C8.25002 12.07 9.929 13.7491 11.9998 13.7493C14.0707 13.7493 15.7495 12.0702 15.7498 9.99929C15.7496 7.92834 14.0708 6.24929 11.9998 6.24929ZM11.9998 3.75026C11.5858 3.75043 11.2499 4.08627 11.2498 4.50026C11.25 4.91417 11.5859 5.2501 11.9998 5.25026C12.4138 5.25026 12.7495 4.91427 12.7498 4.50026C12.7496 4.08617 12.4139 3.75026 11.9998 3.75026Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'webcam',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 6.25C14.0711 6.25 15.75 7.92893 15.75 10C15.75 12.0711 14.0711 13.75 12 13.75C9.92893 13.75 8.25 12.0711 8.25 10C8.25 7.92893 9.92893 6.25 12 6.25ZM12 7.75C10.7574 7.75 9.75 8.75736 9.75 10C9.75 11.2426 10.7574 12.25 12 12.25C13.2426 12.25 14.25 11.2426 14.25 10C14.25 8.75736 13.2426 7.75 12 7.75Z" fill="currentColor"/>
<path d="M12 3.75098C12.4142 3.75098 12.75 4.08676 12.75 4.50098C12.75 4.91519 12.4142 5.25098 12 5.25098C11.5858 5.25098 11.25 4.91519 11.25 4.50098C11.25 4.08676 11.5858 3.75098 12 3.75098Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.9348 2.00026C16.3528 2.03592 19.9634 5.64578 19.9993 10.0637C20.0331 14.2516 16.8426 17.6591 12.7473 17.9729C12.7477 17.9827 12.7493 17.9924 12.7493 18.0022V21.2493H15.9993C16.4134 21.2493 16.7491 21.5852 16.7493 21.9993C16.7493 22.4135 16.4135 22.7493 15.9993 22.7493H7.99929C7.5852 22.7491 7.24929 22.4134 7.24929 21.9993C7.24943 21.5853 7.58529 21.2494 7.99929 21.2493H11.2493V18.0022C11.2493 17.9852 11.2501 17.9682 11.2512 17.9514C7.21148 17.5117 4.0337 14.0787 4.00026 9.93483C3.9647 5.51683 7.51683 1.9647 11.9348 2.00026Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'webcam',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 4.50098H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16 22H8" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 18.0031V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 10C9 8.34315 10.3431 7 12 7C13.6569 7 15 8.34315 15 10C15 11.6569 13.6569 13 12 13C10.3431 13 9 11.6569 9 10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.58152 7C4.20651 7.92643 4 8.9391 4 10C4 14.4183 7.58172 18 12 18C16.4183 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C10.9391 2 9.92643 2.20651 9 2.58152" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'webcam',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 4.50098H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16 22H8" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 18.0031V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 10C9 8.34315 10.3431 7 12 7C13.6569 7 15 8.34315 15 10C15 11.6569 13.6569 13 12 13C10.3431 13 9 11.6569 9 10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0646 17.9997C16.4827 18.0354 20.0354 14.4827 19.9997 10.0646C19.9641 5.64642 16.3536 2.03592 11.9354 2.00027C7.51731 1.96461 3.96461 5.51731 4.00027 9.93545C4.03592 14.3536 7.64642 17.9641 12.0646 17.9997Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'webcam',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 4.50098H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 10C9 8.34315 10.3431 7 12 7C13.6569 7 15 8.34315 15 10C15 11.6569 13.6569 13 12 13C10.3431 13 9 11.6569 9 10Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 18C16.4183 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 7.58172 18 12 18ZM12 18V22M16 22H8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'webcam',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9998 6.25029C14.0709 6.25029 15.7498 7.92922 15.7498 10.0003C15.7496 12.0712 14.0707 13.7503 11.9998 13.7503C9.92891 13.7502 8.25002 12.0711 8.2498 10.0003C8.2498 7.92925 9.92877 6.25034 11.9998 6.25029ZM11.9998 7.75029C10.7572 7.75034 9.7498 8.75768 9.7498 10.0003C9.75002 11.2427 10.7573 12.2502 11.9998 12.2503C13.2423 12.2503 14.2496 11.2427 14.2498 10.0003C14.2498 8.75765 13.2424 7.75029 11.9998 7.75029Z" fill="currentColor"/>
<path d="M11.9998 3.75127C12.414 3.75127 12.7498 4.08705 12.7498 4.50127C12.7496 4.9153 12.4139 5.25127 11.9998 5.25127C11.5858 5.25122 11.25 4.91527 11.2498 4.50127C11.2498 4.08708 11.5856 3.75131 11.9998 3.75127Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9412 1.25029C16.7688 1.28925 20.7108 5.23127 20.7498 10.0589C20.7867 14.6629 17.2608 18.4093 12.7498 18.7259V21.2503H15.9998C16.414 21.2503 16.7498 21.5861 16.7498 22.0003C16.7496 22.4143 16.4139 22.7503 15.9998 22.7503H7.9998C7.58576 22.7502 7.25002 22.4143 7.2498 22.0003C7.2498 21.5861 7.58563 21.2503 7.9998 21.2503H11.2498V18.7044C6.79841 18.2608 3.28676 14.4965 3.2498 9.9417C3.21082 5.10473 7.10426 1.21135 11.9412 1.25029ZM11.9295 2.75029C7.93033 2.71806 4.71753 5.93081 4.7498 9.92998C4.78252 13.9382 8.06187 17.2177 12.0701 17.2503C16.0692 17.2826 19.2819 14.0696 19.2498 10.0706C19.2173 6.06218 15.9379 2.78279 11.9295 2.75029Z" fill="currentColor"/>''',
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
