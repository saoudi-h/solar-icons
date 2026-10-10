// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-cross` icon in every style.
///
/// Prefer the static widgets (e.g. `WiFiCrossLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class WiFiCrossIcon extends StatelessWidget {
  /// Creates the `wi-fi-cross` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const WiFiCrossIcon({
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
    name: 'wi-fi-cross',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.0174 18.7142C12.4316 18.7142 12.7674 19.05 12.7674 19.4642C12.7674 19.8784 12.4316 20.2142 12.0174 20.2142C11.6032 20.2142 11.2674 19.8784 11.2674 19.4642C11.2674 19.05 11.6032 18.7142 12.0174 18.7142Z" fill="currentColor"/>
<path d="M8.11701 15.3831C10.2548 13.076 13.7459 13.0759 15.8836 15.3831C16.165 15.6868 16.147 16.1611 15.8436 16.4427C15.5397 16.7241 15.0645 16.7065 14.783 16.4027C13.2389 14.7362 10.7607 14.7361 9.21662 16.4027C8.93508 16.7062 8.4608 16.7241 8.15705 16.4427C7.85355 16.1612 7.83573 15.6869 8.11701 15.3831Z" fill="currentColor"/>
<path d="M4.78303 11.7845C7.04143 9.3471 10.1156 8.28483 13.0887 8.6263C13.5001 8.67357 13.7959 9.04598 13.7488 9.45735C13.7014 9.86863 13.3291 10.1638 12.9178 10.1165C10.4204 9.82965 7.8173 10.7159 5.88264 12.804C5.60111 13.1077 5.12687 13.1255 4.82307 12.8441C4.51975 12.5625 4.50169 12.0882 4.78303 11.7845Z" fill="currentColor"/>
<path d="M21.4696 4.46907C21.7624 4.1765 22.2373 4.17645 22.5301 4.46907C22.8229 4.76188 22.8227 5.2367 22.5301 5.52962L20.0604 7.99934L22.5301 10.4691C22.8229 10.7619 22.8227 11.2367 22.5301 11.5296C22.2372 11.8225 21.7624 11.8225 21.4696 11.5296L18.9998 9.05989L16.5301 11.5296C16.2372 11.8225 15.7624 11.8225 15.4696 11.5296C15.1768 11.2367 15.1767 10.7619 15.4696 10.4691L17.9393 7.99934L15.4696 5.52962C15.1768 5.23671 15.1767 4.7619 15.4696 4.46907C15.7624 4.17649 16.2373 4.17645 16.5301 4.46907L18.9998 6.9388L21.4696 4.46907Z" fill="currentColor"/>
<path d="M1.45002 8.18684C4.62324 4.76197 8.88973 3.19649 13.0662 3.51692C13.4789 3.54882 13.7881 3.9089 13.7567 4.32161C13.7249 4.73447 13.3639 5.04362 12.951 5.01204C9.23235 4.72682 5.41264 6.11616 2.54963 9.20638C2.26822 9.50998 1.79388 9.5285 1.49006 9.24739C1.18621 8.96588 1.16852 8.49069 1.45002 8.18684Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'wi-fi-cross',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.4697 4.46966C21.7626 4.17679 22.2373 4.17678 22.5302 4.46966C22.8231 4.76255 22.8231 5.23732 22.5302 5.53021L20.0605 7.99994L22.5302 10.4697C22.8231 10.7626 22.8231 11.2373 22.5302 11.5302C22.2373 11.8231 21.7626 11.8231 21.4697 11.5302L18.9999 9.06048L16.5302 11.5302C16.2373 11.8231 15.7626 11.8231 15.4697 11.5302C15.1768 11.2373 15.1768 10.7626 15.4697 10.4697L17.9394 7.99994L15.4697 5.53021C15.1768 5.23732 15.1768 4.76256 15.4697 4.46966C15.7626 4.17678 16.2373 4.17677 16.5302 4.46966L18.9999 6.93939L21.4697 4.46966Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M12.0174 18.7144C12.4316 18.7144 12.7674 19.0502 12.7674 19.4644C12.7673 19.8785 12.4315 20.2144 12.0174 20.2144C11.6033 20.2144 11.2675 19.8785 11.2674 19.4644C11.2674 19.0502 11.6032 18.7144 12.0174 18.7144Z" fill="currentColor"/>
<path d="M8.11701 15.3834C10.2548 13.0762 13.7459 13.0761 15.8836 15.3834C16.1649 15.6871 16.147 16.1614 15.8436 16.4429C15.5397 16.7242 15.0645 16.7066 14.783 16.4029C13.2389 14.7364 10.7607 14.7363 9.21662 16.4029C8.93507 16.7063 8.46076 16.7243 8.15705 16.4429C7.85352 16.1615 7.83583 15.6872 8.11701 15.3834Z" fill="currentColor"/>
<path d="M4.78303 11.7847C7.04145 9.34726 10.1156 8.28506 13.0887 8.62654C13.5002 8.67382 13.7961 9.04613 13.7488 9.4576C13.7014 9.86887 13.3291 10.164 12.9178 10.1168C10.4204 9.82988 7.81731 10.7161 5.88264 12.8043C5.60111 13.108 5.12686 13.1258 4.82307 12.8443C4.51964 12.5628 4.50168 12.0885 4.78303 11.7847Z" fill="currentColor"/>
<path d="M1.45002 8.18709C4.62324 4.76221 8.88973 3.19674 13.0662 3.51717C13.4789 3.54907 13.7881 3.90914 13.7567 4.32185C13.7249 4.73472 13.3639 5.04386 12.951 5.01228C9.23235 4.72706 5.41264 6.1164 2.54963 9.20662C2.26822 9.51022 1.79388 9.52874 1.49006 9.24764C1.18621 8.96613 1.16852 8.49094 1.45002 8.18709Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'wi-fi-cross',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8.66699 15.8931C10.5079 13.9061 13.4927 13.9061 15.3337 15.8931" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.33301 12.295C7.42965 10.032 10.2681 9.05764 13.0035 9.37195" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 8.69693C2.78921 7.84509 3.64848 7.11498 4.5578 6.50659" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.53638 4.68853C10.0001 4.2911 11.5113 4.14983 13.0087 4.26472" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 5.00002L16 11M16 5L21.9999 11" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'wi-fi-cross',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8.66699 15.8931C10.5079 13.9061 13.4927 13.9061 15.3337 15.8931" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.33301 12.295C7.42965 10.032 10.2681 9.05764 13.0035 9.37195" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 8.69694C5.01816 5.43925 9.06111 3.96185 13.0088 4.26472" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 5.00002L16 11M16 5L21.9999 11" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'wi-fi-cross',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 5.00002L16 11M16 5L21.9999 11" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.66699 15.8931C10.5079 13.9061 13.4927 13.9061 15.3337 15.8931" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5.33301 12.295C7.42965 10.032 10.2681 9.05764 13.0035 9.37195" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M2 8.69694C5.01816 5.43925 9.06111 3.96185 13.0088 4.26472" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'wi-fi-cross',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12.0174 18.7144C12.4316 18.7144 12.7674 19.0502 12.7674 19.4644C12.7673 19.8785 12.4315 20.2144 12.0174 20.2144C11.6033 20.2144 11.2675 19.8785 11.2674 19.4644C11.2674 19.0502 11.6032 18.7144 12.0174 18.7144Z" fill="currentColor"/>
<path d="M8.11701 15.3834C10.2548 13.0762 13.7459 13.0761 15.8836 15.3834C16.1649 15.6871 16.147 16.1614 15.8436 16.4429C15.5397 16.7242 15.0645 16.7066 14.783 16.4029C13.2389 14.7364 10.7607 14.7363 9.21662 16.4029C8.93507 16.7063 8.46076 16.7243 8.15705 16.4429C7.85352 16.1615 7.83583 15.6872 8.11701 15.3834Z" fill="currentColor"/>
<path d="M4.78303 11.7847C7.04145 9.34726 10.1156 8.28506 13.0887 8.62654C13.5002 8.67382 13.7961 9.04613 13.7488 9.4576C13.7014 9.86887 13.3291 10.164 12.9178 10.1168C10.4204 9.82988 7.81731 10.7161 5.88264 12.8043C5.60111 13.108 5.12686 13.1258 4.82307 12.8443C4.51964 12.5628 4.50168 12.0885 4.78303 11.7847Z" fill="currentColor"/>
<path d="M21.4696 4.46932C21.7624 4.17659 22.2372 4.17653 22.5301 4.46932C22.8229 4.76216 22.8228 5.23696 22.5301 5.52986L20.0604 7.99959L22.5301 10.4693C22.8229 10.7622 22.8228 11.237 22.5301 11.5299C22.2372 11.8227 21.7624 11.8227 21.4696 11.5299L18.9998 9.06014L16.5301 11.5299C16.2372 11.8228 15.7624 11.8228 15.4696 11.5299C15.1767 11.237 15.1767 10.7622 15.4696 10.4693L17.9393 7.99959L15.4696 5.52986C15.1767 5.23696 15.1767 4.76219 15.4696 4.46932C15.7624 4.17657 16.2372 4.17653 16.5301 4.46932L18.9998 6.93904L21.4696 4.46932Z" fill="currentColor"/>
<path d="M1.45002 8.18709C4.62324 4.76221 8.88973 3.19674 13.0662 3.51717C13.4789 3.54907 13.7881 3.90914 13.7567 4.32185C13.7249 4.73472 13.3639 5.04386 12.951 5.01228C9.23235 4.72706 5.41264 6.1164 2.54963 9.20662C2.26822 9.51022 1.79388 9.52874 1.49006 9.24764C1.18621 8.96613 1.16852 8.49094 1.45002 8.18709Z" fill="currentColor"/>''',
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
