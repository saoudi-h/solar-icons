// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `power` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNOC43OTE5IDUuMTQ3MTJDOS4xNzM0NSA0Ljk4NTkxIDkuMzUyMDggNC41NDU5MSA5LjE5MDg3IDQuMTY0MzVDOS4wMjk2NiAzLjc4MjggOC41ODk2NiAzLjYwNDE3IDguMjA4MSAzLjc2NTM4QzQuNzA4MzIgNS4yNDQwNiAyLjI1IDguNzA5MjUgMi4yNSAxMi43NTAzQzIuMjUgMTguMTM1MSA2LjYxNTIyIDIyLjUwMDMgMTIgMjIuNTAwM0MxNy4zODQ4IDIyLjUwMDMgMjEuNzUgMTguMTM1MSAyMS43NSAxMi43NTAzQzIxLjc1IDguNzA5MjUgMTkuMjkxNyA1LjI0NDA2IDE1Ljc5MTkgMy43NjUzOEMxNS40MTAzIDMuNjA0MTcgMTQuOTcwMyAzLjc4MjggMTQuODA5MSA0LjE2NDM1QzE0LjY0NzkgNC41NDU5MSAxNC44MjY1IDQuOTg1OTEgMTUuMjA4MSA1LjE0NzEyQzE4LjE3MjIgNi4zOTk0NyAyMC4yNSA5LjMzMzEyIDIwLjI1IDEyLjc1MDNDMjAuMjUgMTcuMzA2NyAxNi41NTYzIDIxLjAwMDMgMTIgMjEuMDAwM0M3LjQ0MzY1IDIxLjAwMDMgMy43NSAxNy4zMDY3IDMuNzUgMTIuNzUwM0MzLjc1IDkuMzMzMTIgNS44Mjc3OSA2LjM5OTQ3IDguNzkxOSA1LjE0NzEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIuNzUgMi43NUMxMi43NSAyLjMzNTc5IDEyLjQxNDIgMiAxMiAyQzExLjU4NTggMiAxMS4yNSAyLjMzNTc5IDExLjI1IDIuNzVWNi43NUMxMS4yNSA3LjE2NDIxIDExLjU4NTggNy41IDEyIDcuNUMxMi40MTQyIDcuNSAxMi43NSA3LjE2NDIxIDEyLjc1IDYuNzVWMi43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class PowerBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `power` icon in the boldDuotone style.
  const PowerBoldDuotoneIcon({
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
    name: 'power',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 2.75C12.75 2.33579 12.4142 2 12 2C11.5858 2 11.25 2.33579 11.25 2.75V6.75C11.25 7.16421 11.5858 7.5 12 7.5C12.4142 7.5 12.75 7.16421 12.75 6.75V2.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.7919 5.14712C9.17345 4.98591 9.35208 4.54591 9.19087 4.16435C9.02966 3.7828 8.58966 3.60417 8.2081 3.76538C4.70832 5.24406 2.25 8.70925 2.25 12.7503C2.25 18.1351 6.61522 22.5003 12 22.5003C17.3848 22.5003 21.75 18.1351 21.75 12.7503C21.75 8.70925 19.2917 5.24406 15.7919 3.76538C15.4103 3.60417 14.9703 3.7828 14.8091 4.16435C14.6479 4.54591 14.8265 4.98591 15.2081 5.14712C18.1722 6.39947 20.25 9.33312 20.25 12.7503C20.25 17.3067 16.5563 21.0003 12 21.0003C7.44365 21.0003 3.75 17.3067 3.75 12.7503C3.75 9.33312 5.82779 6.39947 8.7919 5.14712Z" fill="currentColor"/>''',
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
