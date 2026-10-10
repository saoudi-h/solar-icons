// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `notebook` icon in every style.
///
/// Prefer the static widgets (e.g. `NotebookLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class NotebookIcon extends StatelessWidget {
  /// Creates the `notebook` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const NotebookIcon({
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
    name: 'notebook',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.75 2.0127V22L15 22C17.8284 22 19.2426 22 20.1213 21.1213C21 20.2426 21 18.8284 21 16V8C21 5.17157 21 3.75736 20.1213 2.87868C19.2426 2 17.8284 2 15 2H9L8.75 2.0127ZM10.75 6.5C10.75 6.08579 11.0858 5.75 11.5 5.75H16.5C16.9142 5.75 17.25 6.08579 17.25 6.5C17.25 6.91421 16.9142 7.25 16.5 7.25H11.5C11.0858 7.25 10.75 6.91421 10.75 6.5ZM10.75 10C10.75 9.58579 11.0858 9.25 11.5 9.25H16.5C16.9142 9.25 17.25 9.58579 17.25 10C17.25 10.4142 16.9142 10.75 16.5 10.75H11.5C11.0858 10.75 10.75 10.4142 10.75 10ZM3.0007 7.25C3.00753 4.91427 3.08136 3.676 3.87868 2.87868C4.55366 2.2037 5.54467 2.04722 7.25 2.01095V21.9891C5.54467 21.9528 4.55366 21.7963 3.87868 21.1213C3.08136 20.324 3.00753 19.0857 3.0007 16.75H4C4.41421 16.75 4.75 16.4142 4.75 16C4.75 15.5858 4.41421 15.25 4 15.25H3V12.75H4C4.41421 12.75 4.75 12.4142 4.75 12C4.75 11.5858 4.41421 11.25 4 11.25H3V8.75H4C4.41421 8.75 4.75 8.41421 4.75 8C4.75 7.58579 4.41421 7.25 4 7.25H3.0007ZM3.0007 7.25H2C1.58579 7.25 1.25 7.58579 1.25 8C1.25 8.41421 1.58579 8.75 2 8.75H3V8C3 7.73811 3 7.48834 3.0007 7.25ZM3 12.75H2C1.58579 12.75 1.25 12.4142 1.25 12C1.25 11.5858 1.58579 11.25 2 11.25H3V12.75ZM3 15.25H2C1.58579 15.25 1.25 15.5858 1.25 16C1.25 16.4142 1.58579 16.75 2 16.75H3.0007C3 16.5117 3 16.2619 3 16V15.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'notebook',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.75 22.0112H7.25V2.01221H8.75V22.0112Z" fill="currentColor"/>
<path d="M4 15.2505C4.41421 15.2505 4.75 15.5863 4.75 16.0005C4.74974 16.4145 4.41405 16.7505 4 16.7505H2C1.58595 16.7505 1.25026 16.4145 1.25 16.0005C1.25 15.5863 1.58579 15.2505 2 15.2505H4Z" fill="currentColor"/>
<path d="M4 11.2505C4.41421 11.2505 4.75 11.5863 4.75 12.0005C4.74974 12.4145 4.41405 12.7505 4 12.7505H2C1.58595 12.7505 1.25026 12.4145 1.25 12.0005C1.25 11.5863 1.58579 11.2505 2 11.2505H4Z" fill="currentColor"/>
<path d="M16.5 9.25049C16.9142 9.25049 17.25 9.58627 17.25 10.0005C17.2497 10.4145 16.9141 10.7505 16.5 10.7505H11.5C11.0859 10.7505 10.7503 10.4145 10.75 10.0005C10.75 9.58627 11.0858 9.25049 11.5 9.25049H16.5Z" fill="currentColor"/>
<path d="M4 7.25049C4.41421 7.25049 4.75 7.58627 4.75 8.00049C4.74974 8.41448 4.41405 8.75049 4 8.75049H2C1.58595 8.75049 1.25026 8.41448 1.25 8.00049C1.25 7.58627 1.58579 7.25049 2 7.25049H4Z" fill="currentColor"/>
<path d="M16.5 5.75049C16.9142 5.75049 17.25 6.08627 17.25 6.50049C17.2497 6.91448 16.9141 7.25049 16.5 7.25049H11.5C11.0859 7.25049 10.7503 6.91448 10.75 6.50049C10.75 6.08627 11.0858 5.75049 11.5 5.75049H16.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 8C3 5.17157 3 3.75736 3.87868 2.87868C4.75736 2 6.17157 2 9 2H15C17.8284 2 19.2426 2 20.1213 2.87868C21 3.75736 21 5.17157 21 8V16C21 18.8284 21 20.2426 20.1213 21.1213C19.2426 22 17.8284 22 15 22H9C6.17157 22 4.75736 22 3.87868 21.1213C3 20.2426 3 18.8284 3 16V8Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'notebook',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21 16C21 18.8284 21 20.2426 20.1213 21.1213C19.2426 22 17.8284 22 15 22H9C6.17157 22 4.75736 22 3.87868 21.1213C3 20.2426 3 18.8284 3 16V8C3 5.17157 3 3.75736 3.87868 2.87868C4.75736 2 6.17157 2 9 2H15C17.8284 2 19.2426 2 20.1213 2.87868C21 3.75736 21 5.17157 21 8V12" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 2V6M8 22V10" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12H4" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 16H4" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 8H4" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 6.5H16.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 10H16.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'notebook',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3 8C3 5.17157 3 3.75736 3.87868 2.87868C4.75736 2 6.17157 2 9 2H15C17.8284 2 19.2426 2 20.1213 2.87868C21 3.75736 21 5.17157 21 8V16C21 18.8284 21 20.2426 20.1213 21.1213C19.2426 22 17.8284 22 15 22H9C6.17157 22 4.75736 22 3.87868 21.1213C3 20.2426 3 18.8284 3 16V8Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 2.5V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12H4" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 16H4" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 8H4" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 6.5H16.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 10H16.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'notebook',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3 8C3 5.17157 3 3.75736 3.87868 2.87868C4.75736 2 6.17157 2 9 2H15C17.8284 2 19.2426 2 20.1213 2.87868C21 3.75736 21 5.17157 21 8V16C21 18.8284 21 20.2426 20.1213 21.1213C19.2426 22 17.8284 22 15 22H9C6.17157 22 4.75736 22 3.87868 21.1213C3 20.2426 3 18.8284 3 16V8Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 6.5H16.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 10H16.5" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M8 2.5V22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M2 12H4" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M2 16H4" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M2 8H4" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'notebook',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.94513 1.25H15.0549C16.4225 1.24998 17.5248 1.24996 18.3918 1.36652C19.2919 1.48754 20.0497 1.74643 20.6517 2.34835C21.2536 2.95027 21.5125 3.70814 21.6335 4.60825C21.75 5.47522 21.75 6.57754 21.75 7.94513V16.0549C21.75 17.4225 21.75 18.5248 21.6335 19.3918C21.5125 20.2919 21.2536 21.0497 20.6517 21.6517C20.0497 22.2536 19.2919 22.5125 18.3918 22.6335C17.5248 22.75 16.4225 22.75 15.0549 22.75H8.94513C8.63162 22.75 8.33204 22.75 8.04605 22.7486C8.03082 22.7495 8.01546 22.75 8 22.75C7.98169 22.75 7.96353 22.7493 7.94555 22.7481C7.02806 22.7424 6.25306 22.7202 5.60825 22.6335C4.70814 22.5125 3.95027 22.2536 3.34835 21.6517C2.74643 21.0497 2.48754 20.2919 2.36652 19.3918C2.2704 18.6768 2.25356 17.8018 2.25062 16.75H2C1.58579 16.75 1.25 16.4142 1.25 16C1.25 15.5858 1.58579 15.25 2 15.25H2.25V12.75H2C1.58579 12.75 1.25 12.4142 1.25 12C1.25 11.5858 1.58579 11.25 2 11.25H2.25V8.75H2C1.58579 8.75 1.25 8.41421 1.25 8C1.25 7.58579 1.58579 7.25 2 7.25H2.25062C2.25356 6.19818 2.2704 5.32319 2.36652 4.60825C2.48754 3.70814 2.74643 2.95027 3.34835 2.34835C3.95027 1.74643 4.70814 1.48754 5.60825 1.36652C6.47522 1.24996 7.57754 1.24998 8.94513 1.25ZM3.75 8.75H4C4.41421 8.75 4.75 8.41421 4.75 8C4.75 7.58579 4.41421 7.25 4 7.25H3.75078C3.75398 6.2042 3.77029 5.42437 3.85315 4.80812C3.9518 4.07435 4.13225 3.68577 4.40901 3.40901C4.68577 3.13225 5.07434 2.9518 5.80812 2.85315C6.2098 2.79914 6.68097 2.77341 7.25 2.76115V21.2389C6.68097 21.2266 6.2098 21.2009 5.80812 21.1469C5.07434 21.0482 4.68577 20.8678 4.40901 20.591C4.13225 20.3142 3.9518 19.9257 3.85315 19.1919C3.77029 18.5756 3.75398 17.7958 3.75078 16.75H4C4.41421 16.75 4.75 16.4142 4.75 16C4.75 15.5858 4.41421 15.25 4 15.25H3.75V12.75H4C4.41421 12.75 4.75 12.4142 4.75 12C4.75 11.5858 4.41421 11.25 4 11.25H3.75V8.75ZM8.75 21.25C8.83184 21.25 8.91516 21.25 9 21.25H15C16.4354 21.25 17.4365 21.2484 18.1919 21.1469C18.9257 21.0482 19.3142 20.8678 19.591 20.591C19.8678 20.3142 20.0482 19.9257 20.1469 19.1919C20.2484 18.4365 20.25 17.4354 20.25 16V8C20.25 6.56458 20.2484 5.56347 20.1469 4.80812C20.0482 4.07435 19.8678 3.68577 19.591 3.40901C19.3142 3.13225 18.9257 2.9518 18.1919 2.85315C17.4365 2.75159 16.4354 2.75 15 2.75H9C8.91516 2.75 8.83184 2.75001 8.75 2.75004V21.25ZM10.75 6.5C10.75 6.08579 11.0858 5.75 11.5 5.75H16.5C16.9142 5.75 17.25 6.08579 17.25 6.5C17.25 6.91421 16.9142 7.25 16.5 7.25H11.5C11.0858 7.25 10.75 6.91421 10.75 6.5ZM10.75 10C10.75 9.58579 11.0858 9.25 11.5 9.25H16.5C16.9142 9.25 17.25 9.58579 17.25 10C17.25 10.4142 16.9142 10.75 16.5 10.75H11.5C11.0858 10.75 10.75 10.4142 10.75 10Z" fill="currentColor"/>''',
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
