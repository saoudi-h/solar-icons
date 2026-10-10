// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `mirror-2` icon in every style.
///
/// Prefer the static widgets (e.g. `Mirror2LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Mirror2Icon extends StatelessWidget {
  /// Creates the `mirror-2` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const Mirror2Icon({
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
    name: 'mirror-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M7.17188 17C7.7022 17.0001 8.21094 17.2109 8.58594 17.5859L9.41406 18.4141C9.78906 18.7891 10.2978 18.9999 10.8281 19H13.1719C13.7022 18.9999 14.2109 18.7891 14.5859 18.4141L15.4141 17.5859C15.7891 17.2109 16.2978 17.0001 16.8281 17H20.6367C21.3896 17.0002 21.9998 17.6104 22 18.3633C22 20.3716 20.3716 22 18.3633 22H5.63672C3.62841 22 2 20.3716 2 18.3633C2.00019 17.6104 2.61045 17.0002 3.36328 17H7.17188Z" fill="currentColor"/>
<path d="M12 3C16.9706 3 21 7.02944 21 12C21 13.2414 20.7485 14.4241 20.2939 15.5H16.8281C15.9 15.5001 15.0098 15.8691 14.3535 16.5254L13.5254 17.3535C13.4317 17.4472 13.3044 17.4999 13.1719 17.5H10.8281C10.6956 17.4999 10.5683 17.4472 10.4746 17.3535L9.64648 16.5254C8.99018 15.8691 8.10002 15.5001 7.17188 15.5H3.70605C3.25149 14.4241 3 13.2414 3 12C3 7.02944 7.02944 3 12 3Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'mirror-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M5.63636 22H18.3636C20.3719 22 22 20.3719 22 18.3636C22 17.6105 21.3895 17 20.6364 17H16.8284C16.298 17 15.7893 17.2107 15.4142 17.5858L14.5858 18.4142C14.2107 18.7893 13.702 19 13.1716 19H10.8284C10.298 19 9.78929 18.7893 9.41421 18.4142L8.58579 17.5858C8.21071 17.2107 7.70201 17 7.17157 17H3.36364C2.61052 17 2 17.6105 2 18.3636C2 20.3719 3.62806 22 5.63636 22Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M19.4845 17C20.4417 15.5699 21 13.8501 21 12C21 7.02944 16.9706 3 12 3C7.02944 3 3 7.02944 3 12C3 13.8501 3.55827 15.5699 4.51555 17H7.17157C7.70201 17 8.21071 17.2107 8.58579 17.5858L9.41421 18.4142C9.78929 18.7893 10.298 19 10.8284 19H13.1716C13.702 19 14.2107 18.7893 14.5858 18.4142L15.4142 17.5858C15.7893 17.2107 16.298 17 16.8284 17H19.4845Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'mirror-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21 12.168C21 7.10468 16.9706 3 12 3C7.02944 3 3 7.10468 3 12.168C3 13.9413 3.49422 15.597 4.35 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.63636 22H18.3636C20.3719 22 22 20.3719 22 18.3636C22 17.6105 21.3895 17 20.6364 17H16.8284C16.298 17 15.7893 17.2107 15.4142 17.5858L14.5858 18.4142C14.2107 18.7893 13.702 19 13.1716 19H10.8284C10.298 19 9.78929 18.7893 9.41421 18.4142L8.58579 17.5858C8.21071 17.2107 7.70201 17 7.17157 17H3.36364C2.61052 17 2 17.6105 2 18.3636C2 20.3719 3.62806 22 5.63636 22Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'mirror-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4.35 17C3.49422 15.597 3 13.9413 3 12.168C3 7.10468 7.02944 3 12 3C16.9706 3 21 7.10468 21 12.168C21 13.9413 20.5058 15.597 19.65 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.63636 22H18.3636C20.3719 22 22 20.3719 22 18.3636C22 17.6105 21.3895 17 20.6364 17H16.8284C16.298 17 15.7893 17.2107 15.4142 17.5858L14.5858 18.4142C14.2107 18.7893 13.702 19 13.1716 19H10.8284C10.298 19 9.78929 18.7893 9.41421 18.4142L8.58579 17.5858C8.21071 17.2107 7.70201 17 7.17157 17H3.36364C2.61052 17 2 17.6105 2 18.3636C2 20.3719 3.62806 22 5.63636 22Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'mirror-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5.63636 22H18.3636C20.3719 22 22 20.3719 22 18.3636C22 17.6105 21.3895 17 20.6364 17H16.8284C16.298 17 15.7893 17.2107 15.4142 17.5858L14.5858 18.4142C14.2107 18.7893 13.702 19 13.1716 19H10.8284C10.298 19 9.78929 18.7893 9.41421 18.4142L8.58579 17.5858C8.21071 17.2107 7.70201 17 7.17157 17H3.36364C2.61052 17 2 17.6105 2 18.3636C2 20.3719 3.62806 22 5.63636 22Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M4.35 17C3.49422 15.597 3 13.9413 3 12.168C3 7.10468 7.02944 3 12 3C16.9706 3 21 7.10468 21 12.168C21 13.9413 20.5058 15.597 19.65 17" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'mirror-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.6022 2.25 2.25 6.7036 2.25 12.168C2.25 13.6274 2.56026 15.0147 3.11791 16.2641C2.06635 16.3859 1.25 17.2794 1.25 18.3636C1.25 20.7862 3.21384 22.75 5.63636 22.75H18.3636C20.7862 22.75 22.75 20.7862 22.75 18.3636C22.75 17.2794 21.9337 16.3859 20.8821 16.2641C21.4397 15.0147 21.75 13.6274 21.75 12.168C21.75 6.7036 17.3978 2.25 12 2.25ZM19.217 16.25C19.8748 15.042 20.25 13.6509 20.25 12.168C20.25 7.50575 16.5433 3.75 12 3.75C7.45667 3.75 3.75 7.50575 3.75 12.168C3.75 13.6509 4.12517 15.042 4.78296 16.25H7.17157C7.90092 16.25 8.60039 16.5397 9.11612 17.0555L9.94454 17.8839C10.179 18.1183 10.4969 18.25 10.8284 18.25H13.1716C13.5031 18.25 13.821 18.1183 14.0555 17.8839L14.8839 17.0555C15.3996 16.5397 16.0991 16.25 16.8284 16.25H19.217ZM2.75 18.3636C2.75 18.0247 3.02473 17.75 3.36364 17.75H7.17157C7.50309 17.75 7.82104 17.8817 8.05546 18.1161L8.88388 18.9445C9.39961 19.4603 10.0991 19.75 10.8284 19.75H13.1716C13.9009 19.75 14.6004 19.4603 15.1161 18.9445L15.9445 18.1161C16.179 17.8817 16.4969 17.75 16.8284 17.75H20.6364C20.9753 17.75 21.25 18.0247 21.25 18.3636C21.25 19.9577 19.9577 21.25 18.3636 21.25H5.63636C4.04227 21.25 2.75 19.9577 2.75 18.3636Z" fill="currentColor"/>''',
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
