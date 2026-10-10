// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `upload-track-2` icon in every style.
///
/// Prefer the static widgets (e.g. `UploadTrack2LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class UploadTrack2Icon extends StatelessWidget {
  /// Creates the `upload-track-2` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const UploadTrack2Icon({
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
    name: 'upload-track-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.4697 14.4697C17.7626 14.1768 18.2374 14.1768 18.5303 14.4697L21.0303 16.9697C21.3232 17.2626 21.3232 17.7374 21.0303 18.0303C20.7374 18.3232 20.2626 18.3232 19.9697 18.0303L18.75 16.8107V22C18.75 22.4142 18.4142 22.75 18 22.75C17.5858 22.75 17.25 22.4142 17.25 22V16.8107L16.0303 18.0303C15.7374 18.3232 15.2626 18.3232 14.9697 18.0303C14.6768 17.7374 14.6768 17.2626 14.9697 16.9697L17.4697 14.4697Z" fill="currentColor"/>
<path d="M12.25 15C12.25 14.3096 11.6904 13.75 11 13.75C10.3096 13.75 9.75 14.3096 9.75 15C9.75 15.6904 10.3096 16.25 11 16.25C11.6904 16.25 12.25 15.6904 12.25 15Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M15.75 21.2731C14.592 21.7419 13.3261 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 13.1455 21.8074 14.246 21.4528 15.2709L19.591 13.409C18.7123 12.5303 17.2877 12.5303 16.409 13.409L13.909 15.909C13.0303 16.7877 13.0303 18.2123 13.909 19.091C14.412 19.594 15.094 19.8091 15.75 19.7362V21.2731ZM13 6.25C13.4142 6.25 13.75 6.58579 13.75 7C13.75 8.24264 14.7574 9.25 16 9.25C16.4142 9.25 16.75 9.58579 16.75 10C16.75 10.4142 16.4142 10.75 16 10.75C15.1558 10.75 14.3767 10.471 13.75 10.0003V15C13.75 16.5188 12.5188 17.75 11 17.75C9.48122 17.75 8.25 16.5188 8.25 15C8.25 13.4812 9.48122 12.25 11 12.25C11.4501 12.25 11.875 12.3581 12.25 12.5499V7C12.25 6.58579 12.5858 6.25 13 6.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'upload-track-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17.4697 14.4697C17.7626 14.1768 18.2374 14.1768 18.5303 14.4697L21.0303 16.9697C21.3232 17.2626 21.3232 17.7374 21.0303 18.0303C20.7374 18.3232 20.2626 18.3232 19.9697 18.0303L18.75 16.8105V22C18.75 22.4142 18.4142 22.75 18 22.75C17.5858 22.75 17.25 22.4142 17.25 22V16.8105L16.0303 18.0303C15.7374 18.3232 15.2626 18.3232 14.9697 18.0303C14.6768 17.7374 14.6768 17.2626 14.9697 16.9697L17.4697 14.4697Z" fill="currentColor"/>
<path d="M13 6.25C13.4142 6.25 13.75 6.58579 13.75 7C13.75 8.24264 14.7574 9.25 16 9.25C16.4142 9.25 16.75 9.58579 16.75 10C16.75 10.4142 16.4142 10.75 16 10.75C15.1558 10.75 14.3767 10.4708 13.75 10V15C13.75 16.5188 12.5188 17.75 11 17.75C9.48122 17.75 8.25 16.5188 8.25 15C8.25 13.4812 9.48122 12.25 11 12.25C11.4501 12.25 11.875 12.3581 12.25 12.5498V7C12.25 6.58579 12.5858 6.25 13 6.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.75 21.2731C14.592 21.7419 13.3261 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 13.1455 21.8074 14.246 21.4528 15.2709L19.591 13.409C18.7123 12.5303 17.2877 12.5303 16.409 13.409L13.909 15.909C13.0303 16.7877 13.0303 18.2123 13.909 19.091C14.412 19.594 15.094 19.8091 15.75 19.7362V21.2731Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'upload-track-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13 15V11V7" stroke="currentColor" stroke-linecap="round"/>
<circle cx="11" cy="15" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 10C14.3431 10 13 8.65685 13 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 22V15M15.5 17.5L18 15L20.5 17.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14 21.8C13.3538 21.9311 12.6849 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7M21.8 14C21.9311 13.3538 22 12.6849 22 12C22 6.47715 17.5228 2 12 2C10.1786 2 8.47087 2.48697 7 3.33782" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'upload-track-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M13 15V11V7" stroke="currentColor" stroke-linecap="round"/>
<circle cx="11" cy="15" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 10C14.3431 10 13 8.65685 13 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 21.8C13.3538 21.9311 12.6849 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 12.6849 21.9311 13.3538 21.8 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 22V15M15.5 17.5L18 15L20.5 17.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'upload-track-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13 15V11V7" stroke="currentColor" stroke-linecap="round"/>
<circle cx="11" cy="15" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 10C14.3431 10 13 8.65685 13 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 22V15M15.5 17.5L18 15L20.5 17.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'upload-track-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C12.6345 21.25 13.2534 21.1862 13.8508 21.065C14.2567 20.9826 14.6526 21.2448 14.735 21.6508C14.8174 22.0567 14.5551 22.4526 14.1492 22.535C13.4541 22.6761 12.7353 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 12.7353 22.6761 13.4541 22.535 14.1492C22.4526 14.5551 22.0567 14.8174 21.6508 14.735C21.2448 14.6526 20.9826 14.2567 21.065 13.8508C21.1862 13.2534 21.25 12.6345 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM13 7C13.4142 7 13.7378 7.345 13.8733 7.73642C14.1783 8.6174 15.0153 9.25 16 9.25C16.4142 9.25 16.75 9.58579 16.75 10C16.75 10.4142 16.4142 10.75 16 10.75C15.1558 10.75 14.3767 10.471 13.75 10.0003V15C13.75 16.5188 12.5188 17.75 11 17.75C9.48122 17.75 8.25 16.5188 8.25 15C8.25 13.4812 9.48122 12.25 11 12.25C11.4501 12.25 11.875 12.3581 12.25 12.5499V7.75C12.25 7.33579 12.5858 7 13 7ZM12.25 15C12.25 14.3096 11.6904 13.75 11 13.75C10.3096 13.75 9.75 14.3096 9.75 15C9.75 15.6904 10.3096 16.25 11 16.25C11.6904 16.25 12.25 15.6904 12.25 15ZM17.4697 14.4697C17.7626 14.1768 18.2374 14.1768 18.5303 14.4697L21.0303 16.9697C21.3232 17.2626 21.3232 17.7374 21.0303 18.0303C20.7374 18.3232 20.2626 18.3232 19.9697 18.0303L18.75 16.8107V22C18.75 22.4142 18.4142 22.75 18 22.75C17.5858 22.75 17.25 22.4142 17.25 22V16.8107L16.0303 18.0303C15.7374 18.3232 15.2626 18.3232 14.9697 18.0303C14.6768 17.7374 14.6768 17.2626 14.9697 16.9697L17.4697 14.4697Z" fill="currentColor"/>''',
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
