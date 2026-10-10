// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `exit` icon in the bold style.
class ExitBoldIcon extends StatelessWidget {
  /// Creates the `exit` icon in the bold style.
  const ExitBoldIcon({
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
    name: 'exit',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.70703 2.40924C10.4142 1.78228 11.4954 1.97065 13.6572 2.34772L15.9863 2.75397C18.3806 3.17157 19.5781 3.37984 20.2891 4.25788C21 5.13614 21 6.40693 21 8.94733V15.0528C21 17.5932 21 18.864 20.2891 19.7423C19.5781 20.6203 18.3806 20.8286 15.9863 21.2462L13.6572 21.6524C11.4954 22.0295 10.4142 22.2178 9.70703 21.5909C9.00014 20.9638 9 19.8169 9 17.5235V6.47663C9 4.18321 9.00014 3.0363 9.70703 2.40924ZM12 10.169C11.5859 10.169 11.2502 10.5199 11.25 10.9532V13.0469C11.2502 13.4802 11.5859 13.8311 12 13.8311C12.4141 13.8311 12.7498 13.4802 12.75 13.0469V10.9532C12.7498 10.5199 12.4141 10.169 12 10.169Z" fill="currentColor"/>
<path d="M7.54688 4.50006C7.49956 5.12336 7.49992 5.84431 7.5 6.62311V17.377C7.49992 18.1558 7.49955 18.8768 7.54688 19.5001C5.4889 19.4971 4.41615 19.4513 3.73242 18.7676C3.00021 18.0354 3 16.8569 3 14.5001V9.50006C3 7.14316 3.0003 5.96473 3.73242 5.23249C4.41615 4.54876 5.48879 4.50306 7.54688 4.50006Z" fill="currentColor"/>''',
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
