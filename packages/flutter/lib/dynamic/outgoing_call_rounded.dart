// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `outgoing-call-rounded` icon in every style.
///
/// Prefer the static widgets (e.g. `OutgoingCallRoundedLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class OutgoingCallRoundedIcon extends StatelessWidget {
  /// Creates the `outgoing-call-rounded` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const OutgoingCallRoundedIcon({
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
    name: 'outgoing-call-rounded',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.53829 4.93772C6.93123 3.54478 9.15289 3.73192 10.0373 5.31663L10.6867 6.47971C11.2722 7.52916 11.0369 8.90595 10.1145 9.82835C10.091 9.85227 9.01783 10.969 11.0246 12.9758C13.0315 14.9827 14.1483 13.9093 14.1721 13.886C15.0945 12.9636 16.4713 12.7282 17.5207 13.3137L18.6838 13.9631C20.2685 14.8475 20.4556 17.0692 19.0627 18.4621C18.2258 19.299 17.2009 19.9502 16.0676 19.9934C14.1595 20.0657 10.9187 19.5828 7.66817 16.3323C4.4176 13.0817 3.9347 9.84097 4.00704 7.93284C4.05018 6.79954 4.70141 5.77461 5.53829 4.93772Z" fill="currentColor"/>
<path d="M19.0002 4.25022C19.4144 4.25025 19.7502 4.58603 19.7502 5.00022V8.00022C19.7502 8.41441 19.4144 8.75019 19.0002 8.75022C18.586 8.75022 18.2502 8.41443 18.2502 8.00022V6.81077L15.5305 9.53049C15.2376 9.82338 14.7628 9.82336 14.4699 9.53049C14.177 9.2376 14.177 8.76284 14.4699 8.46995L17.1897 5.75022H16.0002C15.586 5.75022 15.2502 5.41443 15.2502 5.00022C15.2502 4.58601 15.586 4.25022 16.0002 4.25022H19.0002Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'outgoing-call-rounded',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M19.7499 8C19.7499 8.41421 19.4142 8.75 18.9999 8.75C18.5857 8.75 18.2499 8.41421 18.2499 8V6.81055L15.5302 9.53027C15.2373 9.82317 14.7626 9.82317 14.4697 9.53027C14.1768 9.23738 14.1768 8.76262 14.4697 8.46973L17.1894 5.75H15.9999C15.5857 5.75 15.2499 5.41421 15.2499 5C15.2499 4.58579 15.5857 4.25 15.9999 4.25H18.9999C19.4142 4.25 19.7499 4.58579 19.7499 5V8Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M10.0376 5.31617L10.6866 6.4791C11.2723 7.52858 11.0372 8.90532 10.1147 9.8278C10.1147 9.8278 10.1147 9.8278 10.1147 9.8278C10.1146 9.82792 8.99588 10.9468 11.0245 12.9755C13.0525 15.0035 14.1714 13.8861 14.1722 13.8853C14.1722 13.8853 14.1722 13.8853 14.1722 13.8853C15.0947 12.9628 16.4714 12.7277 17.5209 13.3134L18.6838 13.9624C20.2686 14.8468 20.4557 17.0692 19.0628 18.4622C18.2258 19.2992 17.2004 19.9505 16.0669 19.9934C14.1588 20.0658 10.9183 19.5829 7.6677 16.3323C4.41713 13.0817 3.93421 9.84122 4.00655 7.93309C4.04952 6.7996 4.7008 5.77423 5.53781 4.93723C6.93076 3.54428 9.15317 3.73144 10.0376 5.31617Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'outgoing-call-rounded',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 9L19 5M16 5H19V8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.00655 7.93309C3.93421 9.84122 4.41713 13.0817 7.6677 16.3323C8.45191 17.1165 9.23553 17.7396 10 18.2327M5.53781 4.93723C6.93076 3.54428 9.15317 3.73144 10.0376 5.31617L10.6866 6.4791C11.2723 7.52858 11.0372 8.90533 10.1147 9.8278C10.1147 9.8278 8.99578 10.9467 11.0245 12.9755C13.0532 15.0042 14.1722 13.8853 14.1722 13.8853C15.0947 12.9628 16.4714 12.7277 17.5209 13.3134L18.6838 13.9624C20.2686 14.8468 20.4557 17.0692 19.0628 18.4622C18.2258 19.2992 17.2004 19.9505 16.0669 19.9934C15.2529 20.0243 14.1963 19.9541 13 19.6111" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'outgoing-call-rounded',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M15 9L19 5M16 5H19V8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10.0376 5.31617L10.6866 6.4791C11.2723 7.52858 11.0372 8.90533 10.1147 9.8278C10.1147 9.8278 8.99578 10.9467 11.0245 12.9755C13.0532 15.0042 14.1722 13.8853 14.1722 13.8853C15.0947 12.9628 16.4714 12.7277 17.5209 13.3134L18.6838 13.9624C20.2686 14.8468 20.4557 17.0692 19.0628 18.4622C18.2258 19.2992 17.2004 19.9505 16.0669 19.9934C14.1588 20.0658 10.9183 19.5829 7.6677 16.3323C4.41713 13.0817 3.93421 9.84122 4.00655 7.93309C4.04952 6.7996 4.7008 5.77423 5.53781 4.93723C6.93076 3.54428 9.15317 3.73144 10.0376 5.31617Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'outgoing-call-rounded',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15 9L19 5M16 5H19V8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M10.0376 5.31617L10.6866 6.4791C11.2723 7.52858 11.0372 8.90533 10.1147 9.8278C10.1147 9.8278 8.99578 10.9467 11.0245 12.9755C13.0532 15.0042 14.1722 13.8853 14.1722 13.8853C15.0947 12.9628 16.4714 12.7277 17.5209 13.3134L18.6838 13.9624C20.2686 14.8468 20.4557 17.0692 19.0628 18.4622C18.2258 19.2992 17.2004 19.9505 16.0669 19.9934C14.1588 20.0658 10.9183 19.5829 7.6677 16.3323C4.41713 13.0817 3.93421 9.84122 4.00655 7.93309C4.04952 6.7996 4.7008 5.77423 5.53781 4.93723C6.93076 3.54428 9.15317 3.73144 10.0376 5.31617Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'outgoing-call-rounded',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.6925 4.95063C9.52266 2.85451 6.68752 2.72679 5.00745 4.40686C4.10879 5.30552 3.3103 6.50044 3.25706 7.90463C3.17818 9.98556 3.71556 13.4408 7.13735 16.8626C10.5591 20.2844 14.0144 20.8218 16.0953 20.7429C17.4995 20.6896 18.6944 19.8911 19.5931 18.9925C21.2731 17.3124 21.1454 14.4773 19.0493 13.3075L17.8864 12.6584C16.5176 11.8945 14.7905 12.2201 13.6585 13.3383C13.6381 13.3533 13.5231 13.4322 13.3221 13.442C13.0656 13.4545 12.4729 13.3632 11.5548 12.4451C10.6364 11.5267 10.5454 10.9339 10.5579 10.6776C10.5677 10.4768 10.6467 10.3618 10.6616 10.3414C11.7799 9.20946 12.1054 7.48238 11.3415 6.11356L10.6925 4.95063ZM6.06811 5.46752C7.17394 4.36169 8.78363 4.60828 9.38265 5.68163L10.0317 6.84456C10.4354 7.56797 10.2977 8.58411 9.58435 9.29743C9.51471 9.36708 9.09846 9.81271 9.0597 10.6042C9.02003 11.4146 9.38395 12.3956 10.4942 13.5058C11.604 14.6156 12.5847 14.9797 13.395 14.9403C14.1864 14.9018 14.6322 14.4858 14.7023 14.4158C15.4156 13.7025 16.432 13.5645 17.1554 13.9683L18.3183 14.6173C19.3916 15.2163 19.6382 16.826 18.5324 17.9318C17.7571 18.7072 16.9013 19.2112 16.0385 19.2439C14.3031 19.3097 11.2774 18.8813 8.19801 15.8019C5.11864 12.7226 4.6902 9.6968 4.75599 7.96146C4.7887 7.09868 5.29276 6.24287 6.06811 5.46752Z" fill="currentColor"/>
<path d="M16 4.24996C15.5858 4.24996 15.25 4.58574 15.25 4.99996C15.25 5.41417 15.5858 5.74996 16 5.74996H17.1893L14.4696 8.46963C14.1768 8.76252 14.1768 9.23739 14.4696 9.53029C14.7625 9.82318 15.2374 9.82318 15.5303 9.53029L18.25 6.81062V7.99996C18.25 8.41417 18.5858 8.74996 19 8.74996C19.4142 8.74996 19.75 8.41417 19.75 7.99996V4.99996C19.75 4.58574 19.4142 4.24996 19 4.24996H16Z" fill="currentColor"/>''',
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
