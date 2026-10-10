// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik03IDIwLjY2MjJDOC40NzA4NyAyMS41MTMgMTAuMTc4NiAyMiAxMiAyMkMxNy41MjI4IDIyIDIyIDE3LjUyMjggMjIgMTJDMjIgNi40NzcxNSAxNy41MjI4IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxMy44MjE0IDIuNDg2OTcgMTUuNTI5MSAzLjMzNzgyIDE3TTE3LjkwNTQgMy45Mjg3MUwxNy45Mzc2IDMuOTk5NTFDMTguMTcxNyA0LjcxMDA0IDE3LjcwMzUgNi4xMzEwOSAxNy4yMzU0IDYuODQxNjJDMTcuMDY1OCA3LjA5ODk4IDE2LjY4MTIgNy40MTg1IDE2LjI1OTcgNy43MjEzN0MxNS4zMDkyIDguNDA0MjggMTQuMTA5NyA4Ljc0MjA1IDEzLjQ5OTggOS45OTk1MUMxMy4zMjU1IDEwLjM1OSAxMy4zMzI5IDEwLjcxMDMgMTMuNDE2OCAxMS4wMTU4QzEzLjQ3NzEgMTEuMjM1NCAxMy41MTU2IDExLjQ3NCAxMy41MTYyIDExLjcwNzVDMTMuNTE4MiAxMi40NjI0IDEyLjc1NDcgMTMuMDA3OCAxMS45OTk4IDEyLjk5OTVDMTAuMDM1NSAxMi45NzgxIDguNzQ5NjggMTEuMzk1MSA4LjU3NDY1IDkuNDQ2ODhDOC4zODczOSA3LjM2MjY3IDYuNzgwMDggNS40MjA1NyA1Ljk5OTg0IDQuNzEwMDRMNS41OTY2OCA0LjMxODU2TTE2LjAwNSAxNi42MzI0QzE2LjkyNzcgMTYuNDEzNCAxNy43MTgyIDE2LjQxMzQgMTcuNzE4MiAxNi40MTM0QzIxLjE2OTkgMTYuMzc3NCAyMS42MTkgMTQuMjY5OSAyMS45MjkxIDEzLjIyMjdNMTMuNDM2NSAxOC4yNzU1QzEyLjY4MzcgMTkuNjk0IDEzLjA2NTkgMjEuMjI1MSAxMy4zODg1IDIxLjkwNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class EarthBrokenIcon extends StatelessWidget {
  /// Creates the `earth` icon in the broken style.
  const EarthBrokenIcon({
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
    name: 'earth',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7 20.6622C8.47087 21.513 10.1786 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 13.8214 2.48697 15.5291 3.33782 17M17.9054 3.92871L17.9376 3.99951C18.1717 4.71004 17.7035 6.13109 17.2354 6.84162C17.0658 7.09898 16.6812 7.4185 16.2597 7.72137C15.3092 8.40428 14.1097 8.74205 13.4998 9.99951C13.3255 10.359 13.3329 10.7103 13.4168 11.0158C13.4771 11.2354 13.5156 11.474 13.5162 11.7075C13.5182 12.4624 12.7547 13.0078 11.9998 12.9995C10.0355 12.9781 8.74968 11.3951 8.57465 9.44688C8.38739 7.36267 6.78008 5.42057 5.99984 4.71004L5.59668 4.31856M16.005 16.6324C16.9277 16.4134 17.7182 16.4134 17.7182 16.4134C21.1699 16.3774 21.619 14.2699 21.9291 13.2227M13.4365 18.2755C12.6837 19.694 13.0659 21.2251 13.3885 21.904" stroke="currentColor" stroke-linecap="round"/>''',
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
