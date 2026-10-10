// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `git-branch` icon in the boldDuotone style.
class GitBranchBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `git-branch` icon in the boldDuotone style.
  const GitBranchBoldDuotoneIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

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

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'git-branch',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.5 1.25C8.29493 1.25 9.75 2.70507 9.75 4.5C9.75 6.03664 8.68314 7.3224 7.25 7.66113V16.3379C8.68325 16.6765 9.75 17.9633 9.75 19.5C9.75 21.2949 8.29493 22.75 6.5 22.75C4.70507 22.75 3.25 21.2949 3.25 19.5C3.25 17.9633 4.31675 16.6765 5.75 16.3379V7.66113C4.31686 7.3224 3.25 6.03664 3.25 4.5C3.25 2.70507 4.70507 1.25 6.5 1.25ZM6.5 17.75C5.5335 17.75 4.75 18.5335 4.75 19.5C4.75 20.4665 5.5335 21.25 6.5 21.25C7.4665 21.25 8.25 20.4665 8.25 19.5C8.25 18.5335 7.4665 17.75 6.5 17.75ZM6.5 2.75C5.5335 2.75 4.75 3.5335 4.75 4.5C4.75 5.4665 5.5335 6.25 6.5 6.25C7.4665 6.25 8.25 5.4665 8.25 4.5C8.25 3.5335 7.4665 2.75 6.5 2.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M19.4326 7.5C19.4326 6.53366 18.6489 5.75026 17.6826 5.75C16.7161 5.75 15.9326 6.5335 15.9326 7.5C15.9326 8.4665 16.7161 9.25 17.6826 9.25C18.6489 9.24974 19.4326 8.46634 19.4326 7.5ZM20.9326 7.5C20.9326 9.05698 19.8368 10.3562 18.375 10.6738C18.1881 11.8049 17.5292 12.6988 16.541 13.3105C15.4003 14.0167 13.8462 14.3418 12.0879 14.3418C10.4666 14.3418 9.22036 14.6061 8.40625 15.0742C7.63947 15.5152 7.25 16.1315 7.25 17C7.25 17.4142 6.91421 17.75 6.5 17.75C6.08579 17.75 5.75 17.4142 5.75 17C5.75 15.5434 6.47236 14.4554 7.6582 13.7734C8.79709 13.1186 10.3456 12.8418 12.0879 12.8418C13.693 12.8418 14.9364 12.5401 15.752 12.0352C16.3301 11.6772 16.6991 11.2165 16.8516 10.6416C15.4592 10.2745 14.4326 9.00774 14.4326 7.5C14.4326 5.70507 15.8877 4.25 17.6826 4.25C19.4773 4.25026 20.9326 5.70524 20.9326 7.5Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => data;

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
