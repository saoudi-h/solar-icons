// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `phone-rounded` icon.
class PhoneRoundedIcon extends StatelessWidget {
  /// Creates the `phone-rounded` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const PhoneRoundedIcon({
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

  /// When true, ignores [SolarTheme] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'phone-rounded',
    style: SolarIconStyle.bold,
    body: r'''<path d="M10.0376 5.31617L10.6866 6.4791C11.2723 7.52858 11.0372 8.90532 10.1147 9.8278C10.1147 9.8278 10.1147 9.8278 10.1147 9.8278C10.1146 9.82792 8.99588 10.9468 11.0245 12.9755C13.0525 15.0035 14.1714 13.8861 14.1722 13.8853C14.1722 13.8853 14.1722 13.8853 14.1722 13.8853C15.0947 12.9628 16.4714 12.7277 17.5209 13.3134L18.6838 13.9624C20.2686 14.8468 20.4557 17.0692 19.0628 18.4622C18.2258 19.2992 17.2004 19.9505 16.0669 19.9934C14.1588 20.0658 10.9183 19.5829 7.6677 16.3323C4.41713 13.0817 3.93421 9.84122 4.00655 7.93309C4.04952 6.7996 4.7008 5.77423 5.53781 4.93723C6.93076 3.54428 9.15317 3.73144 10.0376 5.31617Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'phone-rounded',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.6866 6.4791L10.0376 5.31617C9.15317 3.73144 6.93076 3.54428 5.53781 4.93723C4.7008 5.77423 4.04952 6.7996 4.00655 7.93309C3.95086 9.40215 4.22428 11.6609 5.83644 14.1061L10.1147 9.8278C11.0372 8.90533 11.2723 7.52858 10.6866 6.4791ZM14.1722 13.8853L9.89393 18.1636C12.3391 19.7757 14.5979 20.0491 16.0669 19.9934C17.2004 19.9505 18.2258 19.2992 19.0628 18.4622C20.4557 17.0692 20.2686 14.8468 18.6838 13.9624L17.5209 13.3134C16.4714 12.7277 15.0947 12.9628 14.1722 13.8853Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" d="M11.0245 12.9758C8.99576 10.9471 10.1147 9.82812 10.1147 9.82812L5.83643 14.1064C6.31827 14.8372 6.91971 15.5846 7.66769 16.3326C8.41567 17.0806 9.16311 17.682 9.89392 18.1639L14.1722 13.8856C14.1722 13.8856 13.0532 15.0045 11.0245 12.9758Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'phone-rounded',
    style: SolarIconStyle.broken,
    body: r'''<path d="M4.00655 7.93309C3.93421 9.84122 4.41713 13.0817 7.6677 16.3323C8.45191 17.1165 9.23553 17.7396 10 18.2327M5.53781 4.93723C6.93076 3.54428 9.15317 3.73144 10.0376 5.31617L10.6866 6.4791C11.2723 7.52858 11.0372 8.90533 10.1147 9.8278C10.1147 9.8278 8.99578 10.9467 11.0245 12.9755C13.0532 15.0042 14.1722 13.8853 14.1722 13.8853C15.0947 12.9628 16.4714 12.7277 17.5209 13.3134L18.6838 13.9624C20.2686 14.8468 20.4557 17.0692 19.0628 18.4622C18.2258 19.2992 17.2004 19.9505 16.0669 19.9934C15.2529 20.0243 14.1963 19.9541 13 19.6111" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'phone-rounded',
    style: SolarIconStyle.linear,
    body: r'''<path d="M7.6677 16.3323C4.41713 13.0817 3.93421 9.84124 4.00655 7.93311" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.6675 16.3323C10.9181 19.5829 14.1586 20.0658 16.0667 19.9934C17.2002 19.9505 18.2256 19.2992 19.0626 18.4622C20.4555 17.0692 20.2684 14.8468 18.6836 13.9624L17.5207 13.3134C16.4712 12.7277 15.0945 12.9628 14.172 13.8853C14.172 13.8853 13.053 15.0042 11.0243 12.9755C8.99557 10.9467 10.1145 9.8278 10.1145 9.8278C11.037 8.90533 11.2721 7.52858 10.6864 6.4791L10.0374 5.31617C9.15297 3.73144 6.93055 3.54428 5.5376 4.93723C4.7006 5.77423 4.04932 6.7996 4.00635 7.93309" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'phone-rounded',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M5.00659 6.93309C5.04956 5.7996 5.70084 4.77423 6.53785 3.93723C7.9308 2.54428 10.1532 2.73144 11.0376 4.31617L11.6866 5.4791C12.2723 6.52858 12.0372 7.90533 11.1147 8.8278M17.067 18.9934C18.2004 18.9505 19.2258 18.2992 20.0628 17.4622C21.4558 16.0692 21.2686 13.8468 19.6839 12.9624L18.5209 12.3134C17.4715 11.7277 16.0947 11.9628 15.1722 12.8853" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<path opacity="0.5" d="M11.0376 4.31617L11.6866 5.4791C12.2723 6.52858 12.0372 7.90533 11.1147 8.8278C11.1147 8.8278 9.99574 9.94676 12.0245 11.9755C14.0532 14.0042 15.1722 12.8853 15.1722 12.8853C16.0947 11.9628 17.4714 11.7277 18.5209 12.3134L19.6838 12.9624C21.2686 13.8468 21.4557 16.0692 20.0628 17.4622C19.2258 18.2992 18.2004 18.9505 17.0669 18.9934C15.1588 19.0658 11.9182 18.5829 8.66766 15.3323C5.41709 12.0817 4.93422 8.84122 5.00655 6.93309C5.04952 5.7996 5.7008 4.77423 6.53781 3.93723C7.93076 2.54428 10.1532 2.73144 11.0376 4.31617Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'phone-rounded',
    style: SolarIconStyle.outline,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.00745 3.40686C7.68752 1.72679 10.5227 1.85451 11.6925 3.95063L12.3415 5.11356C13.1054 6.48238 12.7799 8.20946 11.6616 9.34143C11.6467 9.36184 11.5677 9.47677 11.5579 9.67758C11.5454 9.93391 11.6364 10.5267 12.5548 11.4451C13.4729 12.3632 14.0656 12.4545 14.3221 12.442C14.5231 12.4322 14.6381 12.3533 14.6585 12.3383C15.7905 11.2201 17.5176 10.8945 18.8864 11.6584L20.0493 12.3075C22.1454 13.4773 22.2731 16.3124 20.5931 17.9925C19.6944 18.8911 18.4995 19.6896 17.0953 19.7429C15.0144 19.8218 11.5591 19.2844 8.13735 15.8626C4.71556 12.4408 4.17818 8.98556 4.25706 6.90463C4.3103 5.50044 5.10879 4.30552 6.00745 3.40686ZM10.3827 4.68163C9.78363 3.60828 8.17394 3.36169 7.06811 4.46752C6.29276 5.24287 5.7887 6.09868 5.75599 6.96146C5.6902 8.6968 6.11864 11.7226 9.19801 14.8019C12.2774 17.8813 15.3031 18.3097 17.0385 18.2439C17.9013 18.2112 18.7571 17.7072 19.5324 16.9318C20.6382 15.826 20.3916 14.2163 19.3183 13.6173L18.1554 12.9683C17.432 12.5645 16.4158 12.7023 15.7025 13.4156L15.7023 13.4158C15.6322 13.4858 15.1864 13.9018 14.395 13.9403C13.5847 13.9797 12.604 13.6156 11.4942 12.5058C10.384 11.3956 10.02 10.4146 10.0597 9.60423C10.0985 8.81271 10.5147 8.36711 10.5843 8.29746L10.5844 8.29743C11.2977 7.58411 11.4354 6.56797 11.0317 5.84456L10.3827 4.68163Z" fill="currentColor"/>''',
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
