// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `file-video-camera` icon in the broken style.
class FileVideoCameraBrokenIcon extends StatelessWidget {
  /// Creates the `file-video-camera` icon in the broken style.
  const FileVideoCameraBrokenIcon({
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
    name: 'file-video-camera',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13 2.2627V5.0003C13 7.35732 13 8.53583 13.7322 9.26806C14.4645 10.0003 15.643 10.0003 18 10.0003H21.58" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 10V14C2 17.7712 2 19.6569 3.17157 20.8284C4.34315 22 6.22876 22 10 22H14C17.7712 22 19.6569 22 20.8284 20.8284C21.4816 20.1752 21.7706 19.3001 21.8985 18M22 14V13.5629C22 11.8083 22 10.931 21.654 10.1541C21.308 9.3772 20.6559 8.79032 19.3517 7.61654L15.3929 4.05365C14.2651 3.03857 13.7012 2.53104 13.0092 2.26552C12.3173 2 11.5548 2 10.0298 2C6.23869 2 4.34315 2 3.17157 3.17157C2.51839 3.82475 2.22937 4.69989 2.10149 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.62305 14.8629C5.62305 13.6791 5.62305 13.0871 5.95001 12.6887C6.00986 12.6158 6.07674 12.5489 6.14967 12.4891C6.54808 12.1621 7.14 12.1621 8.32383 12.1621C9.50767 12.1621 10.0996 12.1621 10.498 12.4891C10.5709 12.5489 10.6378 12.6158 10.6977 12.6887C11.0246 13.0871 11.0246 13.6791 11.0246 14.8629V15.223C11.0246 16.4068 11.0246 16.9988 10.6977 17.3972C10.6378 17.4701 10.5709 17.537 10.498 17.5968C10.0996 17.9238 9.50767 17.9238 8.32383 17.9238C7.14 17.9238 6.54808 17.9238 6.14967 17.5968C6.07674 17.537 6.00986 17.4701 5.95001 17.3972C5.62305 16.9988 5.62305 16.4068 5.62305 15.223V14.8629Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.0254 14.1421L11.2625 14.0236C11.9632 13.6732 12.3136 13.498 12.5697 13.6563C12.8259 13.8147 12.8259 14.2064 12.8259 14.9898V15.0949C12.8259 15.8783 12.8259 16.2701 12.5697 16.4284C12.3136 16.5867 11.9632 16.4115 11.2625 16.0612L11.0254 15.9426V14.1421Z" stroke="currentColor" stroke-linecap="round"/>''',
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
