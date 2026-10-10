// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `rounded-magnifier` icon.
class RoundedMagnifierIcon extends StatelessWidget {
  /// Creates the `rounded-magnifier` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const RoundedMagnifierIcon({
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
    name: 'rounded-magnifier',
    style: SolarIconStyle.bold,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8194 19.7006C17.7302 18.6064 18.6357 17.6929 19.7205 17.783C19.9086 17.7986 20.1337 17.8671 20.363 17.9368C20.3851 17.9435 20.4073 17.9502 20.4294 17.9569C20.4494 17.9629 20.4694 17.9689 20.4894 17.975C20.7001 18.0383 20.9097 18.1013 21.0692 18.1874C21.9844 18.6818 22.2799 19.8631 21.7067 20.7363C21.6068 20.8884 21.4519 21.0441 21.2962 21.2007C21.2814 21.2156 21.2666 21.2305 21.2519 21.2454C21.2371 21.2602 21.2224 21.2752 21.2076 21.2901C21.0524 21.4471 20.898 21.6034 20.7472 21.7041C19.8816 22.2823 18.7105 21.9843 18.2204 21.0611C18.135 20.9002 18.0725 20.6888 18.0097 20.4762C18.0038 20.4561 17.9978 20.4359 17.9918 20.4157C17.9852 20.3934 17.9785 20.3711 17.9719 20.3488C17.9028 20.1175 17.8349 19.8903 17.8194 19.7006Z" fill="currentColor"/>
<path d="M20.1278 11.1429C20.1278 16.1924 16.0697 20.2858 11.0639 20.2858C6.05804 20.2858 2 16.1924 2 11.1429C2 6.09342 6.05804 2 11.0639 2C16.0697 2 20.1278 6.09342 20.1278 11.1429Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'rounded-magnifier',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M20.2832 18.2568C20.5014 18.2749 20.7702 18.3599 21.0586 18.4463C21.3222 18.5253 21.5732 18.5955 21.7578 18.6943C22.7333 19.217 23.0484 20.4659 22.4375 21.3887C22.3218 21.5634 22.1343 21.7446 21.9395 21.9395C21.7446 22.1343 21.5634 22.3218 21.3887 22.4375C20.4659 23.0484 19.217 22.7333 18.6943 21.7578C18.5955 21.5732 18.5253 21.3222 18.4463 21.0586C18.3599 20.7702 18.2749 20.5014 18.2568 20.2832C18.1617 19.1267 19.1267 18.1617 20.2832 18.2568Z" fill="currentColor"/>''',
    accent: r'''<circle opacity="0.5" cx="11" cy="11" r="9" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'rounded-magnifier',
    style: SolarIconStyle.broken,
    body: r'''<path d="M21.812 20.9748C21.7493 21.0695 21.636 21.1828 21.4094 21.4094C21.1828 21.636 21.0695 21.7493 20.9748 21.812C20.4202 22.1793 19.6699 21.99 19.3559 21.4036C19.3023 21.3035 19.2563 21.15 19.1643 20.843C19.0638 20.5076 19.0136 20.3398 19.0038 20.2218C18.9466 19.5268 19.5268 18.9466 20.2218 19.0038C20.3398 19.0136 20.5075 19.0638 20.843 19.1643C21.15 19.2563 21.3035 19.3023 21.4036 19.3559C21.99 19.6699 22.1793 20.4202 21.812 20.9748Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.5 3.20404C7.82378 2.43827 9.36071 2 11 2C15.9706 2 20 6.02944 20 11C20 15.9706 15.9706 20 11 20C6.02944 20 2 15.9706 2 11C2 9.36071 2.43827 7.82378 3.20404 6.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'rounded-magnifier',
    style: SolarIconStyle.linear,
    body: r'''<circle cx="11" cy="11" r="9" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.812 20.9748C21.7493 21.0695 21.636 21.1828 21.4094 21.4094C21.1828 21.636 21.0695 21.7493 20.9748 21.812C20.4202 22.1793 19.6699 21.99 19.3559 21.4036C19.3023 21.3035 19.2563 21.15 19.1643 20.843C19.0638 20.5076 19.0136 20.3398 19.0038 20.2218C18.9466 19.5268 19.5268 18.9466 20.2218 19.0038C20.3398 19.0136 20.5075 19.0638 20.843 19.1643C21.15 19.2563 21.3035 19.3023 21.4036 19.3559C21.99 19.6699 22.1793 20.4202 21.812 20.9748Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'rounded-magnifier',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M21.812 20.9748C21.7493 21.0695 21.636 21.1828 21.4094 21.4094C21.1828 21.636 21.0695 21.7493 20.9748 21.812C20.4202 22.1793 19.6699 21.99 19.3559 21.4036C19.3023 21.3035 19.2563 21.15 19.1643 20.843C19.0638 20.5076 19.0136 20.3398 19.0038 20.2218C18.9466 19.5268 19.5268 18.9466 20.2218 19.0038C20.3398 19.0136 20.5075 19.0638 20.843 19.1643C21.15 19.2563 21.3035 19.3023 21.4036 19.3559C21.99 19.6699 22.1793 20.4202 21.812 20.9748Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<circle opacity="0.5" cx="11" cy="11" r="9" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'rounded-magnifier',
    style: SolarIconStyle.outline,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11 2.75C6.44365 2.75 2.75 6.44365 2.75 11C2.75 15.5563 6.44365 19.25 11 19.25C15.5563 19.25 19.25 15.5563 19.25 11C19.25 6.44365 15.5563 2.75 11 2.75ZM1.25 11C1.25 5.61522 5.61522 1.25 11 1.25C16.3848 1.25 20.75 5.61522 20.75 11C20.75 16.3848 16.3848 20.75 11 20.75C5.61522 20.75 1.25 16.3848 1.25 11ZM20.1579 19.7511C19.9264 19.7335 19.7335 19.9264 19.7511 20.1579C19.7514 20.1592 19.7553 20.1848 19.7746 20.2573C19.7974 20.3424 19.8312 20.4554 19.8828 20.6277C19.9301 20.7857 19.9609 20.8881 19.9862 20.9641C20.0121 21.0419 20.021 21.0568 20.0171 21.0496C20.1225 21.2465 20.3745 21.31 20.5607 21.1867C20.5538 21.1912 20.5688 21.1824 20.6284 21.1261C20.6868 21.0712 20.7624 20.9957 20.8791 20.8791C20.9957 20.7624 21.0712 20.6868 21.1261 20.6284C21.1727 20.579 21.1868 20.5602 21.1877 20.5592C21.3093 20.3736 21.2463 20.1236 21.0511 20.018C21.0499 20.0175 21.0287 20.0077 20.9641 19.9862C20.8881 19.9609 20.7857 19.9301 20.6277 19.8828C20.4554 19.8312 20.3424 19.7974 20.2573 19.7746C20.1848 19.7553 20.1591 19.7514 20.1579 19.7511ZM18.2564 20.2833C18.1612 19.1267 19.1267 18.1612 20.2833 18.2564C20.4833 18.2728 20.7251 18.3457 20.9862 18.4242C21.0101 18.4314 21.0341 18.4387 21.0583 18.4459C21.0801 18.4524 21.1018 18.4589 21.1234 18.4654C21.3632 18.5369 21.5881 18.604 21.7576 18.6948C22.7335 19.2173 23.0485 20.4659 22.4373 21.3889C22.3312 21.5492 22.165 21.715 21.9878 21.8917C21.9719 21.9076 21.9558 21.9236 21.9397 21.9397C21.9236 21.9558 21.9076 21.9719 21.8917 21.9878C21.7149 22.165 21.5492 22.3312 21.3889 22.4373C20.4659 23.0485 19.2173 22.7335 18.6948 21.7576C18.604 21.5881 18.5369 21.3632 18.4654 21.1234C18.4589 21.1018 18.4524 21.0801 18.4459 21.0583C18.4387 21.0341 18.4314 21.0101 18.4242 20.9862C18.3457 20.7252 18.2728 20.4833 18.2564 20.2833Z" fill="currentColor"/>''',
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
