// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `video-frame-play-vertical` icon in every style.
///
/// Prefer the static widgets (e.g. `VideoFramePlayVerticalLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class VideoFramePlayVerticalIcon extends StatelessWidget {
  /// Creates the `video-frame-play-vertical` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const VideoFramePlayVerticalIcon({
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
    name: 'video-frame-play-vertical',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9998 2C13.7002 2 15.094 2 16.2498 2.06874L16.2498 21.9313C15.094 22 13.7002 22 11.9998 22C10.2993 22 8.90556 22 7.74976 21.9313L7.74977 2.06874C8.90556 2 10.2993 2 11.9998 2ZM12.4112 10.4043C13.4704 11.1162 14 11.4722 14 12C14 12.5278 13.4704 12.8838 12.4112 13.5957C11.3375 14.3173 10.8006 14.6781 10.4003 14.4132C10 14.1483 10 13.4322 10 12C10 10.5678 10 9.85174 10.4003 9.58682C10.8006 9.3219 11.3375 9.68271 12.4112 10.4043Z" fill="currentColor"/>
<path d="M6.24976 6.25L2.2214 6.25C2.41566 5.02727 2.7802 4.1485 3.46423 3.46447C4.14826 2.78043 5.02703 2.4159 6.24976 2.22164V6.25Z" fill="currentColor"/>
<path d="M21.7781 6.25C21.5839 5.02727 21.2193 4.1485 20.5353 3.46447C19.8513 2.78043 18.9725 2.4159 17.7498 2.22164V6.25H21.7781Z" fill="currentColor"/>
<path d="M21.9995 11.25C21.9982 9.88382 21.9894 8.73117 21.931 7.75H17.7498V11.25H21.9995Z" fill="currentColor"/>
<path d="M20.5353 20.5355C19.8513 21.2196 18.9725 21.5841 17.7498 21.7784V17.75H21.7781C21.5839 18.9727 21.2193 19.8515 20.5353 20.5355Z" fill="currentColor"/>
<path d="M21.9995 12.75C21.9982 14.1162 21.9894 15.2688 21.931 16.25H17.7498V12.75H21.9995Z" fill="currentColor"/>
<path d="M6.24976 17.75L6.24976 21.7784C5.02703 21.5841 4.14826 21.2196 3.46423 20.5355C2.78019 19.8515 2.41566 18.9727 2.2214 17.75H6.24976Z" fill="currentColor"/>
<path d="M6.24976 16.25H2.0685C2.01015 15.2688 2.00133 14.1162 2 12.75H6.24976V16.25Z" fill="currentColor"/>
<path d="M6.24976 11.25H2C2.00133 9.88382 2.01015 8.73117 2.0685 7.75L6.24976 7.75V11.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'video-frame-play-vertical',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M6.25 21.7783C5.02727 21.5841 4.1479 21.2192 3.46387 20.5352C2.78009 19.8512 2.4159 18.9725 2.22168 17.75H6.25V21.7783Z" fill="currentColor"/>
<path d="M21.7783 17.75C21.5841 18.9726 21.2191 19.8511 20.5352 20.5352C19.8512 21.2191 18.9726 21.584 17.75 21.7783V17.75H21.7783Z" fill="currentColor"/>
<path d="M6.25 16.25H2.06836C2.01001 15.2688 2.00133 14.1162 2 12.75H6.25V16.25Z" fill="currentColor"/>
<path d="M22 12.75C21.9987 14.1162 21.989 15.2688 21.9307 16.25H17.75V12.75H22Z" fill="currentColor"/>
<path d="M10.4004 9.58691C10.8007 9.322 11.3375 9.68269 12.4111 10.4043C13.4704 11.1162 14 11.4722 14 12C14 12.5278 13.4703 12.8838 12.4111 13.5957C11.3375 14.3173 10.8007 14.678 10.4004 14.4131C10.0001 14.1482 10 13.4322 10 12C10 10.5678 10.0001 9.85184 10.4004 9.58691Z" fill="currentColor"/>
<path d="M6.25 11.25H2C2.00133 9.88384 2.01001 8.73116 2.06836 7.75H6.25V11.25Z" fill="currentColor"/>
<path d="M21.9307 7.75C21.989 8.73116 21.9987 9.88384 22 11.25H17.75V7.75H21.9307Z" fill="currentColor"/>
<path d="M6.25 6.25H2.22168C2.41591 5.02752 2.78007 4.14881 3.46387 3.46484C4.1479 2.78081 5.02727 2.41594 6.25 2.22168V6.25Z" fill="currentColor"/>
<path d="M17.75 2.22168C18.9726 2.41595 19.8512 2.78085 20.5352 3.46484C21.2191 4.14886 21.5841 5.02733 21.7783 6.25H17.75V2.22168Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'video-frame-play-vertical',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M17 2.5L17 21.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 2.5L7 21.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12L7 12M22 12L17 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.5 7L7 7M21.5 7L17 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 17L7 17M21.5 17L17 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 12C14 11.4722 13.4704 11.1162 12.4112 10.4043C11.3375 9.68271 10.8006 9.3219 10.4003 9.58682C10 9.85174 10 10.5678 10 12C10 13.4322 10 14.1483 10.4003 14.4132C10.8006 14.6781 11.3375 14.3173 12.4112 13.5957C13.4704 12.8838 14 12.5278 14 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C21.352 4.28094 21.7133 5.37486 21.8731 7M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2.64799 19.7191 2.28672 18.6251 2.12687 17" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'video-frame-play-vertical',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 2.5L17 21.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 2.5L7 21.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12L7 12M22 12L17 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.5 7L7 7M21.5 7L17 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.5 17L7 17M21.5 17L17 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 12C14 11.4722 13.4704 11.1162 12.4112 10.4043C11.3375 9.68271 10.8006 9.3219 10.4003 9.58682C10 9.85174 10 10.5678 10 12C10 13.4322 10 14.1483 10.4003 14.4132C10.8006 14.6781 11.3375 14.3173 12.4112 13.5957C13.4704 12.8838 14 12.5278 14 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'video-frame-play-vertical',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 12C14 11.4722 13.4704 11.1162 12.4112 10.4043C11.3375 9.68271 10.8006 9.3219 10.4003 9.58682C10 9.85174 10 10.5678 10 12C10 13.4322 10 14.1483 10.4003 14.4132C10.8006 14.6781 11.3375 14.3173 12.4112 13.5957C13.4704 12.8838 14 12.5278 14 12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17 2.5V21.5M7 2.5V21.5M17 12H22M2 12H7M2.5 7H7M17 7H21.5M17 17H21.5M2.5 17H7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'video-frame-play-vertical',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9426 1.25H12.0574C14.3658 1.24999 16.1748 1.24998 17.5863 1.43975C19.031 1.63399 20.1711 2.03933 21.0659 2.93414C21.9607 3.82895 22.366 4.96897 22.5603 6.41371C22.75 7.82519 22.75 9.63423 22.75 11.9426V12.0574C22.75 14.3658 22.75 16.1748 22.5603 17.5863C22.366 19.031 21.9607 20.1711 21.0659 21.0659C20.1711 21.9607 19.031 22.366 17.5863 22.5603C16.1748 22.75 14.3658 22.75 12.0574 22.75H11.9426C9.63423 22.75 7.82519 22.75 6.41371 22.5603C4.96897 22.366 3.82895 21.9607 2.93414 21.0659C2.03933 20.1711 1.63399 19.031 1.43975 17.5863C1.24998 16.1748 1.24999 14.3658 1.25 12.0574V11.9426C1.24999 9.63423 1.24998 7.82519 1.43975 6.41371C1.63399 4.96897 2.03933 3.82895 2.93414 2.93414C3.82895 2.03933 4.96897 1.63399 6.41371 1.43975C7.82519 1.24998 9.63423 1.24999 11.9426 1.25ZM6.25 2.98181C5.18517 3.16506 4.50829 3.4813 3.9948 3.9948C3.4813 4.50829 3.16506 5.18517 2.98181 6.25H6.25V2.98181ZM7.75 2.81997V21.18C8.87584 21.2491 10.2582 21.25 12 21.25C13.7418 21.25 15.1242 21.2491 16.25 21.18V2.81997C15.1242 2.75085 13.7418 2.75 12 2.75C10.2582 2.75 8.87584 2.75085 7.75 2.81997ZM17.75 2.98181V6.25H21.0182C20.8349 5.18517 20.5187 4.50829 20.0052 3.9948C19.4917 3.4813 18.8148 3.16506 17.75 2.98181ZM21.18 7.75H17.75V11.25H21.2497C21.2483 9.8547 21.2389 8.70923 21.18 7.75ZM21.2497 12.75H17.75V16.25H21.18C21.2389 15.2908 21.2483 14.1453 21.2497 12.75ZM21.0182 17.75H17.75V21.0182C18.8148 20.8349 19.4917 20.5187 20.0052 20.0052C20.5187 19.4917 20.8349 18.8148 21.0182 17.75ZM6.25 21.0182V17.75H2.98181C3.16506 18.8148 3.4813 19.4917 3.9948 20.0052C4.50829 20.5187 5.18517 20.8349 6.25 21.0182ZM2.81997 16.25H6.25V12.75H2.75028C2.75175 14.1453 2.76108 15.2908 2.81997 16.25ZM2.75028 11.25H6.25V7.75H2.81997C2.76108 8.70923 2.75175 9.8547 2.75028 11.25ZM12.7793 9.74813C12.796 9.75934 12.8127 9.77059 12.8295 9.78187L12.8759 9.813C13.3656 10.1421 13.8034 10.4362 14.111 10.7196C14.445 11.0273 14.75 11.4337 14.75 12C14.75 12.5663 14.445 12.9727 14.111 13.2804C13.8034 13.5638 13.3656 13.8579 12.8759 14.187L12.8295 14.2181C12.8128 14.2294 12.796 14.2407 12.7794 14.2519C12.2858 14.5836 11.8415 14.8824 11.4681 15.0551C11.0758 15.2365 10.5194 15.3914 9.98642 15.0386C9.49674 14.7146 9.36158 14.1731 9.3061 13.7395C9.24993 13.3004 9.24996 12.7235 9.25 12.0514V11.9486C9.24996 11.2765 9.24993 10.6996 9.3061 10.2605C9.36158 9.82686 9.49674 9.28543 9.98642 8.96138C10.5194 8.60864 11.0758 8.76347 11.4681 8.94491C11.8414 9.1176 12.2858 9.41635 12.7793 9.74813ZM10.8193 10.2977C10.8255 10.3004 10.8318 10.3033 10.8384 10.3063C11.0893 10.4224 11.4327 10.6504 11.9928 11.0268C12.5436 11.397 12.8823 11.6272 13.0946 11.8228C13.1937 11.9141 13.232 11.9688 13.2457 11.9934C13.2472 11.9961 13.2483 11.9983 13.2491 12C13.2483 12.0017 13.2472 12.0039 13.2457 12.0066C13.232 12.0312 13.1937 12.0859 13.0946 12.1772C12.8823 12.3728 12.5436 12.603 11.9928 12.9732C11.4327 13.3496 11.0893 13.5776 10.8384 13.6937C10.8318 13.6967 10.8255 13.6996 10.8193 13.7023C10.8109 13.663 10.8021 13.6127 10.794 13.5491C10.7515 13.2171 10.75 12.738 10.75 12C10.75 11.262 10.7515 10.7829 10.794 10.4509C10.8021 10.3873 10.8109 10.337 10.8193 10.2977Z" fill="currentColor"/>''',
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
