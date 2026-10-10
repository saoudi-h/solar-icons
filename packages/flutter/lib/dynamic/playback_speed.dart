// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `playback-speed` icon in every style.
///
/// Prefer the static widgets (e.g. `PlaybackSpeedLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class PlaybackSpeedIcon extends StatelessWidget {
  /// Creates the `playback-speed` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const PlaybackSpeedIcon({
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
    name: 'playback-speed',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M9.60751 1.51737C10.3776 1.34229 11.1785 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C11.1785 22.75 10.3776 22.6577 9.60751 22.4826C9.2036 22.3908 8.95061 21.9889 9.04244 21.585C9.13427 21.1811 9.53614 20.9281 9.94005 21.02C10.6018 21.1704 11.2911 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75C11.2911 2.75 10.6018 2.8296 9.94005 2.98004C9.53614 3.07187 9.13427 2.81888 9.04244 2.41497C8.95061 2.01106 9.2036 1.60919 9.60751 1.51737Z" fill="currentColor"/>
<path d="M7.31372 3.13198C7.53443 3.4825 7.42919 3.94557 7.07868 4.16627C5.90349 4.90623 4.90623 5.90349 4.16627 7.07868C3.94556 7.42919 3.4825 7.53443 3.13198 7.31372C2.78146 7.09302 2.67623 6.62995 2.89693 6.27944C3.75646 4.91436 4.91436 3.75646 6.27943 2.89693C6.62995 2.67623 7.09302 2.78146 7.31372 3.13198Z" fill="currentColor"/>
<path d="M2.98004 9.94005C3.07187 9.53614 2.81888 9.13427 2.41497 9.04244C2.01106 8.95061 1.60919 9.2036 1.51737 9.60751C1.34229 10.3776 1.25 11.1785 1.25 12C1.25 12.8215 1.34229 13.6224 1.51737 14.3925C1.60919 14.7964 2.01106 15.0494 2.41497 14.9576C2.81888 14.8657 3.07187 14.4639 2.98004 14.06C2.8296 13.3982 2.75 12.7089 2.75 12C2.75 11.2911 2.8296 10.6018 2.98004 9.94005Z" fill="currentColor"/>
<path d="M3.13198 16.6863C3.4825 16.4656 3.94557 16.5708 4.16627 16.9213C4.90623 18.0965 5.90349 19.0938 7.07868 19.8337C7.42919 20.0544 7.53443 20.5175 7.31372 20.868C7.09302 21.2185 6.62995 21.3238 6.27944 21.1031C4.91436 20.2435 3.75646 19.0856 2.89693 17.7206C2.67623 17.37 2.78146 16.907 3.13198 16.6863Z" fill="currentColor"/>
<path d="M15.4137 10.941C16.1954 11.4026 16.1954 12.5974 15.4137 13.059L10.6935 15.8458C9.93371 16.2944 9 15.7105 9 14.7868V9.21316C9 8.28947 9.93371 7.70561 10.6935 8.15419L15.4137 10.941Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'playback-speed',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 1.25C17.937 1.2501 22.75 6.063 22.75 12C22.75 17.937 17.937 22.7499 12 22.75C11.1785 22.75 10.3775 22.6575 9.60742 22.4824C9.20352 22.3906 8.95017 21.9889 9.04199 21.585C9.13379 21.1812 9.53571 20.928 9.93945 21.0195C10.6012 21.17 11.2911 21.25 12 21.25C17.1086 21.2499 21.25 17.1086 21.25 12C21.25 6.89143 17.1086 2.7501 12 2.75C11.2911 2.75 10.6012 2.83003 9.93945 2.98047C9.53571 3.07198 9.13378 2.81878 9.04199 2.41504C8.95017 2.01113 9.20352 1.6094 9.60742 1.51758C10.3775 1.34251 11.1785 1.25 12 1.25Z" fill="currentColor"/>
<path d="M9 9.21289C9.00018 8.28938 9.93366 7.70581 10.6934 8.1543L15.4141 10.9414C16.1952 11.4031 16.1952 12.5969 15.4141 13.0586L10.6934 15.8457C9.93366 16.2942 9.00018 15.7106 9 14.7871V9.21289Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M3.13184 16.6856C3.48228 16.4651 3.94534 16.5706 4.16602 16.9209C4.90589 18.096 5.90312 19.0931 7.07812 19.833C7.42864 20.0537 7.53418 20.5177 7.31348 20.8682C7.0927 21.2185 6.62972 21.3232 6.2793 21.1026C4.9143 20.2431 3.75599 19.0857 2.89648 17.7207C2.67578 17.3702 2.78132 16.9063 3.13184 16.6856Z" fill="currentColor"/>
<path d="M1.51758 9.60745C1.6094 9.20355 2.01113 8.9502 2.41504 9.04202C2.81878 9.13382 3.07198 9.53574 2.98047 9.93949C2.83003 10.6012 2.75 11.2912 2.75 12C2.75001 12.7088 2.83005 13.398 2.98047 14.0596C3.07228 14.4635 2.81886 14.8652 2.41504 14.9571C2.01123 15.0489 1.60954 14.7963 1.51758 14.3926C1.34251 13.6226 1.25001 12.8215 1.25 12C1.25 11.1785 1.34251 10.3775 1.51758 9.60745Z" fill="currentColor"/>
<path d="M6.2793 2.89652C6.62979 2.67595 7.09281 2.78141 7.31348 3.13187C7.53411 3.48238 7.42862 3.94536 7.07812 4.16605C5.9031 4.90595 4.90592 5.90313 4.16602 7.07816C3.94533 7.42865 3.48234 7.53415 3.13184 7.31351C2.78138 7.09284 2.67592 6.62983 2.89648 6.27933C3.75601 4.91425 4.91422 3.75604 6.2793 2.89652Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'playback-speed',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2" stroke="currentColor" stroke-linecap="round" stroke-dasharray="4 3"/>
<path d="M15.4137 10.941C16.1954 11.4026 16.1954 12.5974 15.4137 13.059L10.6935 15.8458C9.93371 16.2944 9 15.7105 9 14.7868L9 9.21316C9 8.28947 9.93371 7.70561 10.6935 8.15419L15.4137 10.941Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'playback-speed',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2" stroke="currentColor" stroke-linecap="round" stroke-dasharray="4 3"/>
<path d="M15.4137 10.941C16.1954 11.4026 16.1954 12.5974 15.4137 13.059L10.6935 15.8458C9.93371 16.2944 9 15.7105 9 14.7868L9 9.21316C9 8.28947 9.93371 7.70561 10.6935 8.15419L15.4137 10.941Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'playback-speed',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.4137 10.941C16.1954 11.4026 16.1954 12.5974 15.4137 13.059L10.6935 15.8458C9.93371 16.2944 9 15.7105 9 14.7868L9 9.21316C9 8.28947 9.93371 7.70561 10.6935 8.15419L15.4137 10.941Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.97715 2 12.5 2" stroke="currentColor" stroke-linecap="round" stroke-dasharray="4 3"/>''',
  );

  static const outline = SolarIconData(
    name: 'playback-speed',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C11.1785 22.75 10.3776 22.6577 9.60751 22.4826C9.2036 22.3908 8.95061 21.9889 9.04244 21.585C9.13427 21.1811 9.53614 20.9281 9.94005 21.02C10.6018 21.1704 11.2911 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75C11.2911 2.75 10.6018 2.8296 9.94005 2.98004C9.53614 3.07187 9.13427 2.81888 9.04244 2.41497C8.95061 2.01106 9.2036 1.60919 9.60751 1.51737C10.3776 1.34229 11.1785 1.25 12 1.25Z" fill="currentColor"/>
<path d="M3.13198 16.6863C3.4825 16.4656 3.94557 16.5708 4.16627 16.9213C4.90623 18.0965 5.90349 19.0938 7.07868 19.8337C7.42919 20.0544 7.53443 20.5175 7.31372 20.868C7.09302 21.2185 6.62995 21.3238 6.27944 21.1031C4.91436 20.2435 3.75646 19.0856 2.89693 17.7206C2.67623 17.37 2.78146 16.907 3.13198 16.6863Z" fill="currentColor"/>
<path d="M2.98004 9.94005C3.07187 9.53614 2.81888 9.13427 2.41497 9.04244C2.01106 8.95061 1.60919 9.2036 1.51737 9.60751C1.34229 10.3776 1.25 11.1785 1.25 12C1.25 12.8215 1.34229 13.6224 1.51737 14.3925C1.60919 14.7964 2.01106 15.0494 2.41497 14.9576C2.81888 14.8657 3.07187 14.4639 2.98004 14.06C2.8296 13.3982 2.75 12.7089 2.75 12C2.75 11.2911 2.8296 10.6018 2.98004 9.94005Z" fill="currentColor"/>
<path d="M7.31372 3.13198C7.53443 3.4825 7.42919 3.94557 7.07868 4.16627C5.90349 4.90623 4.90623 5.90349 4.16627 7.07868C3.94556 7.42919 3.4825 7.53443 3.13198 7.31372C2.78146 7.09302 2.67623 6.62995 2.89693 6.27944C3.75646 4.91436 4.91436 3.75646 6.27943 2.89693C6.62995 2.67623 7.09302 2.78146 7.31372 3.13198Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M8.25 9.21272C8.25 7.79022 9.74622 6.72352 11.0748 7.50792L15.795 10.2948C17.0683 11.0466 17.0683 12.9526 15.795 13.7044L11.0748 16.4912C9.74622 17.2756 8.25 16.2089 8.25 14.7864V9.21272ZM9.95947 8.80455C9.84615 8.87541 9.75 9.01424 9.75 9.21272V14.7864C9.75 14.9849 9.84615 15.1237 9.95947 15.1946C10.0691 15.2632 10.1919 15.2706 10.3122 15.1995L15.0324 12.4127C15.165 12.3344 15.25 12.1848 15.25 11.9996C15.25 11.8144 15.165 11.6648 15.0324 11.5864L10.3122 8.79959C10.1919 8.72855 10.0691 8.73597 9.95947 8.80455Z" fill="currentColor"/>''',
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
